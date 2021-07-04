package com.bit.ww.repository;

import com.bit.ww.entity.BoardEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BoardRepository extends JpaRepository<BoardEntity, Integer> {
    Optional<BoardEntity> findByBoardname(String boardname);
}
