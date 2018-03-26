<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<jsp:include page="TOP n.jsp"/>

		
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp; A
					</h3>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<a href="#"> <img class="media-object" src="images/back3.jpg"
								alt="개발자 이미지">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">A</h4>
							<br> 대표
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>A</th>
								<th>B</th>
								<th>C</th>
								<th>D</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>대표</td>
								<td>1</td>
								<td><a href="lecture.html?lectureName=A"> 식물</a></td>
								<td>2018-03-21</td>
							</tr>
							<tr>
								<td>대표</td>
								<td>2</td>
								<td><a href="lecture.html?lectureName=B"> 약사</a></td>
								<td>2018-03-21</td>
							</tr>
							<tr>
								<td>대표</td>
								<td>3</td>
								<td><a href="lecture.html?lectureName=C"> 공기</a></td>
								<td>2018-03-21</td>
							</tr>
						</tbody>
					</table>
					<div class="panel-footer">
						<blockquote>&nbsp;&nbsp; Do And Forget!</blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<jsp:include page="bottom.jsp"/>