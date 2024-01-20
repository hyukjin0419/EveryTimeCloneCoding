<%--
  Created by IntelliJ IDEA.
  User: sungm
  Date: 2024-01-20
  Time: 오후 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        :root {
            --border-color: rgba(163, 163, 163, 0.5);
        }

        body {
            margin: 0;
            font-family: sans-serif;
        }

        /* 화면상단 */
        header {
            width: 100%;
            position: fixed;
            z-index: 5;
        }

        /* 화면상단 컨테이너 */
        header .container {
            background-color: white;
            height: 80px;
            border-bottom: solid 0.1px var(--border-color);
            display: flex;
            justify-content: center;
        }

        header .container .topcontainer {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 100%;
            max-width: 1200px;
            /* 최대 너비 설정 */
            margin: 0 auto;
            /* 가운데 정렬을 위해 좌우 margin을 자동으로 계산 */
            position: fixed;
        }

        /* 화면 왼측 상단 로고 컨테이터 */
        .container .logo {
            /* background-color: red; */
            position: fixed;
            height: 80px;
            width: 150px;
            float: left;
            margin-left: 15px;
        }

        /* 화면 왼측 상단 로고 이미지 */
        .container .logo img {
            height: 40px;
            margin-top: 15px;
            margin-right: 10px;
            object-fit: cover;
            float: left;
        }

        /* 화면 왼측 상단 로고 컨테이너 텍스트 */
        .container .logo p {
            width: 80px;
            height: 80px;
            margin: 0px;
            float: left;
        }

        /* 화면 왼측 상단 로고 컨테이너 텍스트 첫번째 줄*/
        .container .logo span:nth-child(1) {
            color: #f34f3d;
            margin: auto;
            display: block;
            font-size: 12px;
            margin-top: 15px;
            margin-left: 5px;
            font-weight: bold;
        }

        /* 화면 왼측 상단 로고 컨테이너 텍스트 두번째 줄*/
        .container .logo span:nth-child(2) {
            display: block;
            line-height: 25px;
            color: #292929;
            font-size: 20px;
            margin-left: 3px;
        }

        /* 화면 상단 메뉴 컨테이너 */
        .container .menu {
            margin-left: 300px;
            position: fixed;

            align-items: center;
            /* 세로 중앙 정렬 */
            width: 600px;
        }

        /* 화면 상단 메뉴 컨테이너 리스트 상위*/
        .container .menu ul {
            margin-top: 25px;
            display: flex;
            list-style-type: none;
        }

        /* 화면 상단 메뉴 컨테이너 리스트 하위*/
        .container .menu li {
            float: left;
            margin-left: 22px;
        }

        /*선택 된 게시판*/
        .container .menu .chosen {
            text-decoration: none;
            color: #f34f3d;
            font-weight: bold;
            border-bottom: solid 4px #f34f3d;
            padding-bottom: 32px;
        }

        /* 화면 상단 메뉴 컨테이너 리스트 하위 링크*/
        .container .menu li a {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }

        /* 화면 상단 메뉴 컨테이너 리스트 하위 hover시*/
        .container .menu li a:hover {
            text-decoration: none;
            color: #f34f3d;
            font-weight: bold;
        }

        /* 화면 우측 상단 아이콘 컨테이너 */
        .container .icon {
            height: 50px;
            width: 100px;
            margin-top: 23px;
            margin-left: 1063px;
            position: fixed;
        }

        /* 화면 우측 상단 아이콘*/
        .container .icon img {
            height: 20px;
            padding: 7px;
            float: right;
            display: block;
            margin-right: 5px;
            border: solid 1px gray;
            border-radius: 10px;
        }

        /*-------여기서 부터 화면 게시판 상단---------*/
        .headerContainer {
            position: relative;
            top: 80px;
            width: 100%;
            border-bottom: solid 0.1px var(--border-color);
            background-color: rgba(211, 211, 211, 0.376);
            height: 230px;
            z-index: 4;
        }

        .headUl {
            position: relative;
            display: flex;
            top: 0px;
            flex-direction: row;
            margin: 0 auto;
            /* 가운데 정렬을 위해 좌우 margin을 자동으로 계산 */
            border-left: solid 0.1px var(--border-color);
            border-right: solid 0.1px var(--border-color);
            /* background-color: aqua; */
            width: 960px;
            height: 220px;
            box-sizing: border-box;
            /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
        }

        .headUlList {
            /* margin-right: 30px; */
            /* background-color: green; */
            width: 350px;
            box-sizing: border-box;
            /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
            /* align-items: center; */
        }

        .headUlList ul {
            height: 200px;
            box-sizing: border-box;
            /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
        }

        .headUlList .firstheadUl {}

        .headUlList .secondheadUl {}

        .headUlList .thirdheadUl {
            border-left: solid 0.1px grey;
        }

        .headUlList .fourthheadUl {
            border-left: solid 0.1px grey;
        }

        .headUlList .fifthheadUl {
            border-left: solid 0.1px grey;
        }

        .headUlList .sixthheadUl {
            padding-left: 0px;
        }

        .headUlList ul li {
            list-style-type: none;
            font-size: 9pt;
            font-family: sans-serif;
            margin-bottom: 10px;
            width: 100px;
        }


        .postbar {
            width: 50%;
            text-align: left;
            padding-left: 10px;
            border: 1px solid #000;
            margin-left: 15%;
            margin-top: 7%;
        }

        .postbar h1 {
            font-size: 20px;
            font-weight: bold;
        }

        .postbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .postbar ul li {
            display: inline-block;
            margin-right: 10px;
        }

        .content {
            padding: auto;
            margin-top: 4px;
            border: 1px solid #000;
            margin-left: 15%;
            display: flex;
            flex-direction: column;
            width: 48%;
        }

        #self {
            display: flex;
            align-items: center;
        }

        #picture {
            width: 50px;
            margin-right: 10px;
        }

        #name,
        #time {
            margin: 2px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }


        .content {
            justify-content: space-between;
            padding: 20px;
        }

        .content h2 {
            font-size: 20px;
            font-weight: bold;
        }

        .content p {
            margin-bottom: 10px;
        }


        .comment {
            margin-left: 15%;
        }


        .social-buttons {
            display: flex;
            align-items: center;
        }

        .social-buttons div {
            background: none;
            border: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            margin-right: 10px;
        }

        .social-buttons div span {
            margin-right: 5px;
        }

        .like-icon {
            color: red;
        }

        .comment-icon {
            color: blue;
        }

        .star-icon {
            color: gold;
        }

        .text1 {
            width: 50%;
            height: 5%;
            text-align: center;
            border: 1px solid #000;
            margin-left: 0%;
        }

        .mainmenu {
            border: 1px solid red;
            width: 7%;
            margin-left: 15%;
        }
    </style>
</head>

<body>
<header>
    <!-- 화면최상단 -->
    <div class="container">
        <div class="topcontainer">
            <div class="logo">
                <img class="logoimag" src="https://everytime.kr/images/new/nav.logo.png" />
                <p>
                    <span>에브리타임</span>
                    <span>한동대</span>
                </p>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="" class="chosen">게시판</a></li>
                    <li><a href="">시간표</a></li>
                    <li><a href="">강의실</a></li>
                    <li><a href="">학점계산기</a></li>
                    <li><a href="">친구</a></li>
                    <li><a href="">책방</a></li>
                    <li><a href="">캠퍼스픽</a></li>
                </ul>
            </div>
            <div class="icon">
                <img src="https://cdn-icons-png.flaticon.com/512/1159/1159740.png" />
                <img src="https://cdn-icons-png.flaticon.com/512/66/66933.png" />
            </div>
        </div>
    </div>
</header>
<div class="headerContainer">
    <div class="headUl">
        <div class="headUlList">
            <div class="listContainer"></div>
            <ul class="firstheadUl">
                <li>자유게시판</li>
                <li>비밀게시판</li>
                <li>졸업생게시판</li>
                <li>새내기게시판</li>
                <li>시사·이슈</li>
                <li>장터게시판</li>
                <li>정보게시판</li>
                <li>홍보게시판</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="secondheadUl">
                <li>동아리·학회</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="thirdheadUl">
                <li>취업·진로</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="fourthheadUl">
                <li>전산전자공학부 게시판</li>
                <li>생명과학부 게시판</li>
                <li>상사학부 게시판</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="fifthheadUl">
                <li>연애/사랑이야기</li>
                <li>성 게시판</li>
                <li>콘디</li>
                <li>넷플릭스/왓챠 게시판</li>
                <li>끝말잇기</li>
                <li>유머수용소</li>
                <li>고양이게시판</li>
                <li>퀴어 게시판(사랑, 고민 등)</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="sixthheadUl">
                <li>큐피트게시판</li>
                <li>알바생 게시판</li>
                <li>게시판찾기</li>
            </ul>
        </div>
    </div>
</div>
<div class="post">
    <div class="postbar">
        <h1>자유게시판</h1>
    </div>
    <div class="content">
        <div id="self">
            <img src="https://cf-fpi.everytime.kr/0.png" id="picture">
            <h4 id="name">익명</h4>
            <p id="time">지금막</p>
        </div>
        <h2>한동대 수련회</h2>
        <p>한동대에서 2월에 한스트말고 수련회같은거 진행하는게 있나요?</p>

        <div class="social-buttons">
            <div class="like-button">
                <span class="like-icon">👍</span>
                <span class="like-count">2</span>
            </div>
            <div class="comment-button">
                <span class="comment-icon">💬</span>
                <span class="comment-count">2</span>
            </div>
            <div class="star-button">
                <span class="star-icon">⭐</span>
                <span class="star-count">0</span>
            </div>
        </div>
        <div class="click-button">
            <div class="like-clik">
                <h6>👍공감</h6>
            </div>
            <div class="star-clik">
                <h6>⭐스크랩</h6>
            </div>

        </div>

    </div>

    <div class="comment">
        <form>
            <input type="text" class="text1" value="댓글을 입력해 주세요">
            <input type="submit" value="✏️">
        </form>
    </div>
    <h3 class="mainmenu">三 글 목록</h3>
</div>
</body>

</html>