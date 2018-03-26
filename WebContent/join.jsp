<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:include page="TOP n.jsp"/>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
				<!--회원가입 -->
					<h3 style="text-align: center;">Join Membership</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID"
							name="userID" maxlength="20">
						</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password"
							name="userPassword" maxlength="20">
						</div>
					<div class="form-gorup">
						<input type="text" class="form-control" placeholder="Name"
							name="userName" maxlength="20">
						</div>
						<div class="form-group" style="text-align:center;">
								</div>
								<div class="btn-group" data-toggle="buttons">
									</div>
								<label class="btn btn-primary active">
									<input type="radio" name="userGender" autocomplete="off" value="Male" checked>Male
								</label>
									<label class="btn btn-primary active">
									<input type="radio" name="userGender" autocomplete="off" value="Woman" checked>Woman
								</label>
								
					<div class="form-group">
						<input type="Email" class="form-control" placeholder="Email"
							name="userEmail" maxlength="50">
						</div>
				<!-- 회원가입창  end-->		
							
					
					<input type="submit" class="btn btn-primary form-control" value="Join Membership">
				</form>
			</div>
		</div>
	</div>
		<jsp:include page="bottom.jsp"/>