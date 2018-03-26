<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:include page="TOP n.jsp"/>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">Login</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID"
							name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password"
							name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="Login">
				</form>
			</div>
		</div>
	</div>
		<jsp:include page="bottom.jsp"/>