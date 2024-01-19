<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>에브리타임 프론트엔드 클론 코딩</title>
<%--  <link href="style.css" rel="stylesheet">--%>
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
      max-width: 1200px; /* 최대 너비 설정 */
      margin: 0 auto; /* 가운데 정렬을 위해 좌우 margin을 자동으로 계산 */
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

      align-items: center; /* 세로 중앙 정렬 */
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
      margin: 0 auto; /* 가운데 정렬을 위해 좌우 margin을 자동으로 계산 */
      border-left: solid 0.1px var(--border-color);
      border-right: solid 0.1px var(--border-color);
      /* background-color: aqua; */
      width: 960px;
      height: 220px;
      box-sizing: border-box; /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
    }

    .headUlList {
      /* margin-right: 30px; */
      /* background-color: green; */
      width: 350px;
      box-sizing: border-box; /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
      /* align-items: center; */
    }
    .headUlList ul {
      height: 200px;
      box-sizing: border-box; /* border와 padding이 요소의 크기에 포함되도록 box-sizing 설정 */
    }
    .headUlList .firstheadUl {
    }
    .headUlList .secondheadUl {
    }
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

    /*--------------------여기서 부터 section----------------*/
    section {
      position: relative;
      top: 320px;
      background-color: teal;
    }
    aside {
      position: relative;
      top: 320px;
      background-color: red;
    }

    /* @media screen and (max-width: 1280px) {
      .container .logo {
        background-color: blue;
        height: 80px;
        width: 150px;
        margin-left: 15px;
      }
      .container .menu {
        margin-left: 350px;
      }
    } */


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

<!-- 화면상단 -->
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
<section>
  <div>자유게시판</div>
  <div>팁 창</div>
  <input placeholder="새 글을 작성해주세요!" />
  <table border="1">
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
    <tr>
      <td>
        <div>이상이형 솔직히 오늘은 아님</div>
        <div>이거 상위권이면 오히려 문제다</div>
      </td>
    </tr>
  </table>
  <input placeholder="검색어를 입력하세요" />
  <button>다음 ></button>
</section>

<aside>
  <!-- 화면 오른쪽 column-->
  <div>
    <table border="1">
      <tr>
        <td>HOT 게시물</td>
      </tr>
      <tr>
        <td>예대 제목 오타난 거 아닌가요 01/15 16:14</td>
      </tr>
      <tr>
        <td>한동대 선배 홍이삭님 01/13 19:23</td>
      </tr>
      <tr>
        <td>외로움을 잘 이겨내시길... 01/14 13:03</td>
      </tr>
      <tr>
        <td>안녕하세요! 24학번입니다!! 01/15 00:23</td>
      </tr>
    </table>
  </div>

  <div>
    Best 게시판
  </div>

  <div>
    최근 강의평
    별 4/5
    인간커뮤니케이션:신순철
    신교수님은 모두까기 인형같다. 기독교, 타종교, 교수자, 학생, 진화론, 목사님등 모드를 차별없이 이판하기 때문이다. 아무 이유없이 비
    별 2/5
    커뮤니케이션 이론: 주재원
    23-2학기부터는 서술형에서 객관식으로 시험 양식이 바뀌었다. 시험의 난이도가 높지는 않으나 문제와 선지가 모우 영어라서 힘들
    별 3/5
    저널리즘의 이해: 주재원
    시험과 과제가 쉬워서 부담없이 좋은 학점을 받을 수 있다. 발표 팀플이 두 번 있는데 크게 부담이 되지는 않지만 팀플을 하고 다름 팀의 발
  </div>
</aside>


</body>

</html>