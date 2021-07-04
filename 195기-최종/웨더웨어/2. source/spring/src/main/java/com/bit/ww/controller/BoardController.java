package com.bit.ww.controller;

import com.bit.ww.dto.BoardDTO;
import com.bit.ww.dto.CmntDTO;
import com.bit.ww.dto.LikeDTO;
import com.bit.ww.dto.PostDTO;
import com.bit.ww.entity.CmntEntity;
import com.bit.ww.entity.PostEntity;
import com.bit.ww.service.BoardService;
import com.bit.ww.service.CmntService;
import com.bit.ww.service.ImgService;
import com.bit.ww.service.LikeService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@RequiredArgsConstructor
@RestController
@RequestMapping(value = "/api/cmnty")
public class BoardController {
    private final BoardService boardService;
    private final CmntService cmntService;
    private final LikeService likeService;
    private final ImgService imgService;

    @ApiOperation(value = "게시판 글 작성", notes = "게시판 글 작성")
    @PostMapping("/post")
    public PostEntity post(@Validated @RequestBody PostDTO postDTO) {
        BoardDTO boardDTO = boardService.findBoard(postDTO.getBoardname());
        int lastnum = boardDTO.getLastnum() + 1;
        postDTO.setBoardname(postDTO.getBoardname());
        postDTO.setPostnum(lastnum);
        boardDTO.setLastnum(lastnum);
        boardService.saveBoard(boardDTO);
        return boardService.savePost(postDTO);
    }

    @ApiOperation(value = "임시저장", notes = "임시저장")
    @PostMapping("/temp/{boardname}")
    public PostEntity temp(@PathVariable String boardname, @Validated @RequestBody PostDTO postDTO) {
        BoardDTO boardDTO = boardService.findBoard("temp");
        int lastnum = boardDTO.getLastnum() + 1;
        if (boardname.equals("freeBoard")) {
            postDTO.setTempnum(1);
        } else if (boardname.equals("OOTD")) {
            postDTO.setTempnum(2);
        } else if (boardname.equals("hotDeal")) {
            postDTO.setTempnum(3);
        } else if (boardname.equals("qna")) {
            postDTO.setTempnum(4);
        }
        postDTO.setBoardname("temp");
        postDTO.setIstemp(true);
        postDTO.setPostnum(lastnum);
        boardDTO.setLastnum(lastnum);
        boardService.saveBoard(boardDTO);
        return boardService.savePost(postDTO);
    }

    @ApiOperation(value = "게시판 글 수정", notes = "게시판 글 수정")
    @PatchMapping("/post/{postId}")
    public PostEntity post(@PathVariable("postId") int num, @Validated @RequestBody PostDTO postDTO) {
        PostDTO updatePost = boardService.getPost(num);
        updatePost.setEditdate(LocalDateTime.now());
        updatePost.setTitle(postDTO.getTitle());
        updatePost.setContent(postDTO.getContent());
        updatePost.setImg(postDTO.getImg());
        updatePost.setBoardname(postDTO.getBoardname());
        return boardService.savePost(updatePost);
    }

    @ApiOperation(value = "게시판 글 삭제", notes = "게시판 글 삭제")
    @DeleteMapping("/post/{postId}")
    public String deletePost(@PathVariable("postId") int num) {
        PostDTO postDTO = boardService.getPost(num);
        int ootdnum = postDTO.getPostnum();
        if (imgService.existImg(ootdnum)) {
            imgService.deleteImgs(ootdnum);
        }
        boardService.deletePost(num);
        return "delete ok!";
    }

    @ApiOperation(value = "QnA 답변 작성", notes = "QnA 답변 작성")
    @PostMapping(value = "/answer/{postId}")
    @Secured({"ROLE_ADMIN"})
    public CmntEntity answer(@PathVariable("postId") int num, @RequestBody @Validated CmntDTO cmntDTO) {
        PostDTO questionDTO = boardService.getPost(num);
        questionDTO.setIsanswered(true);
        boardService.savePost(questionDTO);
        cmntDTO.setBoardnum(4);
        cmntDTO.setPostnum(questionDTO.getPostnum());
        return cmntService.saveCmnt(cmntDTO);
    }

    @ApiOperation(value = "댓글 등록", notes = "댓글 등록")
    @PostMapping(value = "/cmnt/post")
    public CmntEntity cmntPost(@RequestBody @Validated CmntDTO cmntDTO) {
        return cmntService.saveCmnt(cmntDTO);
    }

    @ApiOperation(value = "대댓글 등록", notes = "대댓글 등록(댓글번호입력)")
    @PostMapping(value = "/cmnt/post/{cmntId}")
    public CmntEntity cmnt2Post(@PathVariable("cmntId") int cmntnum, @RequestBody @Validated CmntDTO cmntDTO) {
        CmntDTO cmnt2DTO = cmntDTO;
        cmnt2DTO.setDepth(1);
        cmnt2DTO.setCmntnum(cmntnum);
        return cmntService.saveCmnt(cmnt2DTO);
    }

    @ApiOperation(value = "댓글 수정", notes = "댓글 수정")
    @PatchMapping("/cmnt/{cmntId}")
    public String updateCmnt(@PathVariable("cmntId") int num, @RequestBody @Validated CmntDTO cmntDTO) {
        cmntDTO.setContent(cmntDTO.getContent());
        cmntService.saveCmnt(cmntDTO);
        return "update ok!";
    }

    @ApiOperation(value = "댓글 삭제(대댓글이 없을 경우)", notes = "댓글 삭제(대댓글이 없을 경우)")
    @DeleteMapping("/cmnt/{cmntId}")
    public String deleteCmnt(@PathVariable("cmntId") int num) {
        cmntService.deleteCmnt(num);
        return "delete - deleteCmnt ok!";
    }

    @ApiOperation(value = "댓글 삭제(대댓글이 있을 경우)", notes = "댓글 삭제(대댓글이 있을 경우)")
    @PutMapping("/cmnt/{cmntId}")
    public String delete(@PathVariable("cmntId") int num, @RequestBody @Validated CmntDTO cmntDTO) {
        CmntDTO delCmntDTO = cmntDTO;
        boolean existCmnt2 = cmntService.existCmnt2(delCmntDTO.getNum());
        if (existCmnt2) {
            delCmntDTO.setWriter("deleted");
            delCmntDTO.setContent("deleted");
            cmntService.saveCmnt(delCmntDTO);
            return "delete - changeCmnt ok!";
        } else {
            return deleteCmnt(delCmntDTO.getNum());
        }
    }

    @ApiOperation(value = "좋아요 생성 및 삭제", notes = "좋아요 생성 및 삭제")
    @PostMapping(value = "/like/{postId}")
    public String like(@PathVariable("postId") int num, @RequestBody @Validated LikeDTO likeDTO) {
        String authId = likeDTO.getUid();
        PostDTO postDTO = boardService.getPost(num);
        int boardnum = postDTO.getBoardnum();
        if (!likeService.existLike(boardnum, num, authId)) {
            likeDTO.setBoardnum(boardnum);
            likeDTO.setPostnum(num);
            likeDTO.setUid(authId);
            likeService.saveLike(likeDTO);
            postDTO.setLikecount(postDTO.getLikecount() + 1);
            boardService.savePost(postDTO);
        } else {
            likeService.deleteLike(likeService.findLikeNum(boardnum, num, authId));
            postDTO.setLikecount(postDTO.getLikecount() - 1);
            boardService.savePost(postDTO);
        }
        return "like ok!";
    }
}
