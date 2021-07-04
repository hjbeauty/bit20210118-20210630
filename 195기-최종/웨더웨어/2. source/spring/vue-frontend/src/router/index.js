import VueRouter from "vue-router";
import Vue from "vue";
import {store} from '@/store';

Vue.use(VueRouter);

export const router = new VueRouter({
        mode  : "history",
        routes: [
            {
                //WelcomePage
                path     : '/',
                component: () => import('@/view/WelcomeView'),
            },
            {
                //MainPage
                path     : '/main',
                component: () => import('@/view/main/MainPage'),
                meta     : {auth: true},
            },
            {
                //AdminPage
                path     : '/admin',
                meta     : {admin: true},
                component: () => import('@/view/admin/AdminPage'),
                children : [
                    {
                        meta     : {admin: true},
                        path     : '/admin/main',
                        component: () => import('@/view/admin/AdminMain')
                    },
                    {
                        meta     : {admin: true},
                        path     : '/admin/cmnty',
                        component: () => import('@/view/admin/CmntyPage')
                    },
                    {
                        meta     : {admin: true},
                        path     : '/admin/member',
                        component: () => import('@/view/admin/MemberPage')
                    },
                    {
                        meta     : {admin: true},
                        path     : '/admin/qna',
                        component: () => import('@/view/admin/QnaPage')
                    },
                    {
                        meta     : {admin: true},
                        path     : '/admin/memberlist',
                        component: () => import('@/view/admin/MemberList')
                    }
                ]
            },
            {
                //로그인
                path     : '/login',
                component: () => import('@/view/member/LoginPage'),
            },
            {
                //회원 가입
                path     : '/signup',
                component: () => import('@/view/member/SignupPage'),
            },
            {
                //회원 가입
                path     : '/signup/img',
                component: () => import('@/view/member/SelectImg'),
            },

            {
                //회원 조회
                path     : '/member',
                component: () => import('@/view/admin/MemberList'),
                meta     : {auth: true}
            },
            {
                //회원 상세조회
                path     : '/member/:id',
                component: () => import('@/view/admin/MemberList'),
                meta     : {auth: true}
            },

            {
                //이미지 게시글 작성
                path     : '/postimg',
                component: () => import('@/view/post/ImgPage'),
                meta     : {auth: true}

            },
            {
                //커뮤니티
                path     : '/board',
                component: () => import('@/view/post/BoardMain'),
                meta     : {auth: true},
                children : [
                    {
                        //Main
                        path     : '/board',
                        component: () => import('@/view/post/PostMain'),
                        meta     : {auth: true},
                    },
                    {
                        //게시글 작성
                        path     : '/post/:boardname',
                        component: () => import('@/view/post/WritePage'),
                        meta     : {auth: true},
                    },
                    {
                        //게시글 목록조회
                        path     : '/list/:boardname',
                        component: () => import('@/view/post/Board/BoardView'),
                        meta     : {auth: true},
                    },
                    {
                        //게시글 상세조회
                        path     : '/post/:boardname/:postnum',
                        component: () => import('@/view/post/Board/PostPage'),
                        meta     : {auth: true},
                    },
                ]
            },
            {
                //My Page
                path     : '/mypage',
                component: () => import('@/view/mypage/MyPage'),
                meta     : {auth: true},
                children : [
                    {
                        //Main
                        path    : '/mypage/main',
                        redirect: '/mypage/aboutme',
                        meta    : {auth: true},
                    },
                    {
                        //내가 작성한 글
                        path     : '/mypage/mypost',
                        component: () => import('@/view/mypage/MyPostPage'),
                        meta     : {auth: true},
                    },
                    {
                        //내가 작성한 댓글
                        path     : '/mypage/mycmnt',
                        component: () => import('@/view/mypage/MyCmntPage'),
                        meta     : {auth: true},
                    },
                    {
                        //내 정보 조회
                        path     : '/mypage/aboutme',
                        component: () => import('@/view/mypage/AboutMePage'),
                        meta     : {auth: true},
                    },
                    {
                        //위치 등록
                        path     : '/mypage/location',
                        component: () => import('@/view/mypage/UserLocation'),
                        meta     : {auth: true},
                    },

                ]
            },
        ]
    })
;

//로그인 검증
router.beforeEach((to, form, next) => {
    if (to.meta.auth && !store.getters.isLogin) {
        next('/login');
        return;
    }
    next();
})

//관리자 권한 검증
router.beforeEach((to, form, next) => {
    if (to.meta.admin && !store.getters.isAdmin) {
        next('/');
        return;
    }
    next();
})
export default router;