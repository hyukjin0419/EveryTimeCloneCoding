<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>에브리타임 프론트엔드 클론 코딩</title>
  <link rel="stylesheet" type="text/css" href="${context}/css/board.css">
</head>

<body>
<header class="headerDesktop">
  <!-- 화면최상단/데스크탑에 표시될 내용 -->
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
        <img src="${context}/image/user.png" />
        <img src="${context}/image/chat.png" />
      </div>
    </div>
  </div>
</header>
<!-- 화면최상단/모바일 -->
<header class="headerMobile">
  <div class="headerMobileContainer">
    <div class="headerContainerBottom">
      <div class="icon">
        <img src="${context}/image/menu.png" />
        <span>자유게시판</span>
      </div>
    </div>
  </div>
</header>
<!------------------------------------------------------------------------------->
<!-- 화면상단 -->
<div class="headerContainer">
  <div class="headUl">
    <div class="headUlList">
      <div class="listContainer"></div>
      <ul class="firstheadUl">
        <li class="selectedUl">자유게시판 <span class="dot">•</span>
        </li>
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
        <li>퀴어 게시판(사랑, 고민··)</li>
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
<!------------------------------------------------------------------------------->
<section>
  <div class="board">
    <div class="boardTitle">자유게시판</div>

    <div id="beforeClickContainer">
      <div id="beforeClick" onclick="showForm()">
        <span id="beforeClickText">새 글을 작성해주세요!</span>
        <img src="${context}/image/pencil_grey.svg" />
      </div>
    </div>

    <form id="myForm">
      <div id="formTableContainer">
        <table id="formContainer">
          <tr>
            <th>글 제목</th>
          </tr>
          <tr>
            <td><textarea id="formTextArea"></textarea></td>
          </tr>
          <tr>
            <td>
              <div id="formCheckBoxContainer">
                <label class="formCheckLabel"><input class="formCheckInput" type="checkbox">질문</label>
                <label class="formCheckLabel"><input class="formCheckInput" type="checkbox">익명</label>
                <div id="formBtnContainer">
                  <input type="image" src="${context}/image/pencil_white.svg" id="formBtn" value="연필로 수정바람">
                </div>
              </div>

            </td>
          </tr>
        </table>
      </div>
    </form>

    <table class="boardTable">
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span><img src="${context}/image/good.png" /> 2</span>
            <span><img src="${context}/image/chat.svg" /> 3|</span>
            <span>몇 분전</span>
            <span>|</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr class="boardList">
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="boardListDivOne">이상이형 솔직히 오늘은 아님</div>
          <div class="boardListDivTwo">이거 상위권이면 오히려 문제다</div>
          <div class="icons">
            <span>굳</span>
            <span>댓글</span>
            <span>몇 분전</span>
            <span>익명</span>
          </div>
        </td>
      </tr>

    </table>
    <div class="bottomOfTable">
      <div class="searchContainer">
        <select>
          <option>전체</option>
          <option>해시태그</option>
          <option>글 제목</option>
          <option>글 내용</option>
        </select>
        <input placeholder="검색어를 입력하세요" />
        <img src="${context}/image/glass.png">

      </div>
      <button class="nextBtn">다음 <span>></span></button>
    </div>
  </div>



  <!-- 화면 오른쪽 column-->
  <div class="rightColumn">
    <table class="hotBoardTable">
      <tr>
        <th>
          <span class="hotBoardTitle">HOT 게시물</span>
          <span>더보기</span>
        </th>

      </tr>
      <tr>
        <td>
          <span>예대 제목 오타난 거 아닌가요</span>
          <span class="date">01/15 16:14</span>
        </td>
      </tr>
      <tr>
        <td>
          <span>예대 제목 오타난 거 아닌가요</span>
          <span class="date">01/15 16:14</span>
        </td>
      </tr>
      <tr>
        <td>
          <span>예대 제목 오타난 거 아닌가요</span>
          <span class="date">01/15 16:14</span>
        </td>
      </tr>
      <tr>
        <td>
          <span>예대 제목 오타난 거 아닌가요</span>
          <span class="date">01/15 16:14</span>
        </td>
      </tr>
    </table>

    <table class="hotBoardTable" id="hotBoardTable2">
      <tr>
        <th>
          <span class="hotBoardTitle">Best 게시판</span>
          <span>더보기</span>
        </th>
      </tr>
    </table>

    <table class="hotBoardTable" id="hotBoardTable3">
      <tr>
        <th>
          <span class="hotBoardTitle">최근 강의평</span>
          <span>더보기</span>
        </th>
      </tr>
      <tr>
        <td>
          <div class="imgContainer"><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /></div>
          <div class="title">인간커뮤니케이션:신순철</div>
          <div class="contents">신교수님은 모두까기 인형같다. 기독교, 타종교, 교수A자, 학생, 진화론, 목사님등 모드를 차별없이 이판하기 때문이다. 아무 이유없이 비</div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="imgContainer"><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /></div>
          <div class="title">커뮤니케이션 이론: 주재원</div>
          <div class="contents">23-2학기부터는 서술형에서 객관식으로 시험 양식이 바뀌었다. 시험의 난이도가 높지는 않으나 문제와 선지가 모우 영어라서 힘들</div>

        </td>
      </tr>
      <tr>
        <td>
          <div class="imgContainer"><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /><img
                  src="${context}/image/star.png" /><img src="${context}/image/star.png" /></div>
          <div class="title">저널리즘의 이해: 주재원</div>
          <div class="contents">시험과 과제가 쉬워서 부담없이 좋은 학점을 받을 수 있다. 발표 팀플이 두 번 있는데 크게 부담이 되지는 않지만 팀플을 하고 다름 팀의 발</div>

        </td>
      </tr>
    </table>

    <div>




    </div>
  </div>
</section>
</body>


<script>
  function showForm() {
    var form1 = document.getElementById("beforeClickContainer");
    var form2 = document.getElementById("myForm");
    var computedStyle = window.getComputedStyle(form2);

    if (computedStyle.getPropertyValue("display") === "none") {
      form2.style.display = "block";
      form1.style.display = "none";
    } else {
      form1.style.display = "block";
      form2.style.display = "none";
    }
  }

</script>

</html>