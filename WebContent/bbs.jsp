<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

	<jsp:include page="TOP n.jsp"/>
	<% 
		int pageNumber =1; //기본페이지
	if(request.getParameter("pageNumber")!=null){ //페이지 넘버가 넘어왔다면 
		pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<div class="container">
		<div class="row">	<!-- 짝수와홀수가 번갈아가면서 색상이변경하는 요소 table-striped -->
			<table class="table table-striped">
			<thead>
				<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list= bbsDAO.getList(pageNumber);
					for(int i=0; i< list.size();i++){
				%>
				<tr>
				<td><%=list.get(i).getBbsID() %></td>
				<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle() %></a></td>
				<td><%= list.get(i).getUserID()%></td>
				<td><%= list.get(i).getBbsDate().substring(0,11)+list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분"%></td>
				</tr>
				<%
					}
				%>
			</tbody>
			</table>
			<div class="text-center">
			<ul class="pagination">
				<li><a href="bbs.jsp?pageNumber=1">1</a></li>
				<li><a href="bbs.jsp?pageNumber=2">2</a></li>
				<li><a href="bbs.jsp?pageNumber=3">3</a></li>
				<li><a href="bbs.jsp?pageNumber=4">4</a></li>
				<li><a href="bbs.jsp?pageNumber=5">5</a></li>
				<li><a href="bbs.jsp?pageNumber=6">6</a></li>
				<li><a href="bbs.jsp?pageNumber=7">7</a></li>
				<li><a href="bbs.jsp?pageNumber=8">8</a></li>
				<li><a href="bbs.jsp?pageNumber=9">9</a></li>
				<li><a href="bbs.jsp?pageNumber=10">10</a></li>
			</ul>
			</div>
			
		
			<a href="write.jsp" class="btn btn-primary pull-rigth">글쓰기</a> <!-- 새로운 write.jsp 페이지로 만들고
																			하나의버튼이 오른쪽에고정할수있는 글쓰기-->
		</div>
	</div>
	
	<jsp:include page="bottom.jsp"/>