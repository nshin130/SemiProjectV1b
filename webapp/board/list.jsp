<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-doctype html>
<html  lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트v1-list</title>
        <link rel ="stylesheet" href="/css/base.css">
        <style>
            table { width: 75%; margin: 0 auto; border-collapse: collapse;
                        table-layout: fixed}
            th, td { border: 1px solid black; text-align: center; padding: 10px}
            td:nth-child(2) { white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  }
            button {width: 100px; padding 5px; margin-right: -10px}
            .newbtn { text-align: right; border: 0 solid white }
            .tbnav {border: none;}
            .cpage {font-weight: bold; color: red; font-size:35px}

        </style>
    </head>
    <body>
        <div id="wrap">
         <%@ include file="/layout/header.jsp" %>
         
        <div id="container">
        <!-- 메인영역 -->
            <h2>게시판</h2>
            <table>
                <colgroup> <!-- 테이블 컬럼 스타일 정의 -->
                    <col style="width: 10%">
                    <col style="">
                    <col style="width: 15%">
                    <col style="width: 15%">
                    <col style="width: 10%">
                </colgroup>
                <thead>
                <tr><td colspan="5" class="newbtn">
                    <button type="button">글쓰기</button></td></tr>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회</th>
                </tr></thead>
                <tbody>
                <tr>
                    <td style="text-align: center">1</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">2</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">3</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">4</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">5</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">6</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">7</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">8</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                 <tr>
                    <td style="text-align: center">9</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">10</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">11</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">12</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">13</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">14</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>
                <tr>
                    <td style="text-align: center">15</td>
                    <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                    <td>nshin130</td>
                    <td>2014-05-01</td>
                    <td>777</td>
                </tr>


                </tbody>
                <tfoot>
                    <tr><td colspan="5" class="tbnav">
                        <span>◁ ◀◀<span class="cpage">1</span> 2 3 4 5 6 7 8 9 10 ▶▶ ▷</span>
                        </td></tr>
                </tfoot>
            </table>
            </div>
         <%@ include file="/layout/footer.jsp" %>
        </div>
    </body>
</html>