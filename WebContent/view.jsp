<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viemport" content="width=device-width" ,initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP Web Site</title>
</head>
<body>
	<% //현재 세션이 존재할경우 아이디값을 받아서 넣어준다.
	String userID = null;
	if(session.getAttribute("userID")!=null){
		userID =(String)session.getAttribute("userID");
	}
	System.out.println("main userid:"+userID);
	
	
	int bbsID = 0;
	if(request.getParameter("bbsID")!= null){
		bbsID=Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID ==0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않는 글 입니다')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	
%>
		<jsp:include page="TOP n.jsp"/>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
				<!-- 짝수와홀수가 번갈아가면서 색상이변경하는 요소 table-striped -->
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center">게시판글보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:20%;">글제목</td>
						<td colspan="2"><%=bbs.getBbsTitle()%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%=bbs.getBbsDate().substring(0,11)+bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분" %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-heigth: 200px; text-align: left;"><%=bbs.getBbsContent()%></td>
					</tr>
		
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-primary">목록</a>
			<%
				if(userID != null && userID.equals(bbs.getUserID())){ //본인이라면 수정,삭제할수이쓴ㄴ기능
			%>
			<a href ="update.jsp?bbsID=<%=bbsID %>"class="btn btn-primary">수정</a> 
			<a onclick="return confirm('정말로삭제하시겠습니까?')" href ="deleteAction.jsp?bbsID=<%=bbsID %>"class="btn btn-primary">삭제</a> 
			<%
				}
			%>
			
		</div>
	</div>
		<jsp:include page="bottom.jsp"/>