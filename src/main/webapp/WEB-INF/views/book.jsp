<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>책 목록</title>
    <style>
        header {
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            width: 100%;
            border-bottom: 1px solid #d6d6d6;
            background-color: white;
        }

        #search {
            height: 60px;
            padding: 10px;
            box-sizing: border-box;
        }

        #search>form {
            position: relative;
            margin: 0 auto;
            width: 100%;
            max-width: 800px;
            height: 40px;
            border: 1px solid #737373;
            border-radius: 6px;
        }
        #search>form>input {
            padding: 10px 40px 10px 10px;
            width: 100%;
            height: 40px;
            line-height: 20px;
            box-sizing: border-box;
            border: 0;
            color: #292929;
            font-size: 16px;
            background-color: transparent;
        }

        input {
            outline: none;
        }

        input[type="text"] {
            padding-block: 1px;
            padding-inline: 2px;
        }

        #title {
            position: relative;
            margin: 10px auto;
            width: 100%;
            max-width: 800px;
            height: 40px;
        }

        #title>#everytime {
            display: block;
            margin: 0 auto;
            width: 70px;
            height: 40px;
        }

        span.original {
            text-decoration: line-through;
            color: #d6d6d6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0;
            margin-inline-end: 0;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: "맑은 고딕", sans-serif;
            letter-spacing: -0.5px;
            background-color: #f2f2f2;
        }

        #items {
            position: relative;
            margin: 120px auto 10px auto;
            width: 100%;
            max-width: 800px;
        }

        #items>a.item>p {
            white-space: nowrap;
            overflow: hidden;
        }
        span.selling{
            color: red;
            font-size: 16px;
            font-weight: bold;
        }
        #items>a.item {
            position: relative;
            display: block;
            padding: 15px 15px;
            border-bottom: 1px solid #e3e3e3;
            background-color: white;
        }

        #items>div.header {
            position: relative;
        }
        #items > div.header > div.filter {
            position: absolute;
            right: 10px;
            top: 10px;
        }

        #items>a.item>div.thumb>img.book {
            float: left;
            margin-right: 15px;
            width: 100px;
            height: 140px;
            background-size: cover;
            background-position: center center;
        }

        #items > a.item > p.details > span{
            display: inline-block;
            line-height: 17px;
            color: #444444;
            font-size: 12px;
            vertical-align: middle;
        }

        div,
        form,nav {
            display: block;
        }
        #bar {
            position: relative;
            z-index: 100;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 60px;
            box-sizing: border-box;
            border-top: 1px solid #d6d6d6;
            background-color: #f2f2f2;
        }
        #bar > nav {
            margin: 0 auto;
            width: 100%;
            max-width: 800px;
            height: 100%;
        }
        #bar > nav.trisection > a{
            width: 33%;
        }
        #bar > nav > a{
            display: block;
            float: left;
            height: 100%;
        }
        #bar > nav > a > span.text {
            display: block;
            line-height: 15px;
            color: #292929;
            font-size: 12px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>

<body>
<header>
    <div id="title">
        <img id="everytime" src="https://cdn-icons-png.flaticon.com/512/5765/5765694.png" alt="썸네일">
    </div>
    <div id="search">
        <form>
            <input type="text" placeholder="구매할 책을 검색하세요!" autocomplete="off">
            <div id="searchicon">
                <span class="icons search-darkgray-16"></span>
            </div>
        </form>
    </div>

</header>
<div id="items">
    <div class="header">
        <h1>최근 올라온 책</h1>
        <div class="filter">
            <span class="univ">한동대</span>
        </div>
    </div>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ2mJYezRxBt7OMKUO6PglWCEsdeUYzEbJzg&usqp=CAU" alt="썸네일">
        </div>
        <h2>The Giver</h2>
        <p class="details author">
            <span>코딩왕 지음</span>
        </p>
        <p class="details publisher">
            <span>King of coding</span>
        </p>
        <p class="price">
            <span class="selling">5,000원</span>
            <span class="original">10,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9nBaLuswhrbzMagnKnuivOvEf43zQHeXpgJ-2bnwc_EIU72aUop2BPtFMebnNwP5NJ_Q&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>Dog</h2>
        <p class="details author">
            <span>댕댕이 지음</span>
        </p>
        <p class="details publisher">
            <span>댕댕</span>
        </p>
        <p class="price">
            <span class="selling">6,000원</span>
            <span class="original">30,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://thumbnail10.coupangcdn.com/thumbnails/remote/492x492ex/image/rs_quotation_api/0u7o52nm/3aa5ae7ad45245d8aa2232578be8f2d4.jpg"
            alt="썸네일">
        </div>
        <h2>공룡책</h2>
        <p class="details author">
            <span>짱구 지음</span>
        </p>
        <p class="details publisher">
            <span>짱구</span>
        </p>
        <p class="price">
            <span class="selling">80,000,000원</span>
            <span class="original">999,990,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ER7U1_vB9mDO0eX6Lt10opVr-t5Dhisofw&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>MBTI</h2>
        <p class="details author">
            <span>F 지음</span>
        </p>
        <p class="details publisher">
            <span>너 T야?</span>
        </p>
        <p class="price">
            <span class="selling">4,000원</span>
            <span class="original">21,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTspj3RblabMEcHn9K7FZxm0lV7a2-ybJM8Ww&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>humanoidog</h2>
        <p class="details author">
            <span>개사람 지음</span>
        </p>
        <p class="details publisher">
            <span>얍</span>
        </p>
        <p class="price">
            <span class="selling">7,000원</span>
            <span class="original">10,800원</span>
        </p>
    </a>
    <div id="bar">
        <nav class="trisection">
            <a href="#" class="home">
                <span class="icons home-darkgray-16"></span>
                <span class="text">홈</span>
            </a>
            <a href="#" class="sell">
                <span class="icons sell-darkgray-16"></span>
                <span class="text">판매하기</span>
            </a>
            <a href="#" class="my">
                <span class="icons my-darkgray-16"></span>
                <span class="text">마이페이지</span>
            </a>
        </nav>
    </div>
</div>
</body>

</html>