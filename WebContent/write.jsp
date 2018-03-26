<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
	<jsp:include page="TOP n.jsp"/>
	<div class="container">
		<div class="row">	
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped" style="text-align: center; border:1px solid #dddddd"><!-- 짝수와홀수가 번갈아가면서 색상이변경하는 요소 table-striped -->
			<thead	>
				<tr>
					<th colspan="2" style="background-color:#eeeeee; text-align: center">게시판 글쓰기 양식</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50"></td>
				</tr>
				<tr>
					<td><textarea class="form-control" placeholder="내용" name="bbsContent" maxlength="2048" style="height:350px"></textarea></td>
				</tr>	
				</tbody>
			</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
		</div>
	</div>
		<jsp:include page="bottom.jsp"/>