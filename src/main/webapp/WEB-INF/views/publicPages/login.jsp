<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="wrapper" style="padding-top: 5px">
	<div class="col-lg-12">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
		<c:url value="/j_spring_security_check" var="loginAction" />
				<form id="contactForm" class="form-horizontal"
					action="${loginAction}" method="post">
			<div class="panel panel-default">
				
					<div class="panel-body">
					<center><h3 class="text-center">Sing in</h3></center>
						
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
							<input name="j_username" type="email" class="form-control"
								placeholder="Username">
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input name="j_password" type="password" class="form-control"
								placeholder="Password">
						</div>
						<div class="col-lg-6">
							<div class="form-group input-group">
								<div class="checkbox">
									<label> <input type="checkbox" value="">Keep
										login always
									</label>
								</div>
							</div>

						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-6 align-right">
							<a href="">Forgot Password</a>
						</div>

					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-4"></div>
								<div class="col-md-4">
									<button type="submit" class="btn btn-block btn-primary">
										Sign in
									</button>
								</div>
							</div>
						</div>
					</div>
			</div>
			</form>
		</div>

	</div>

	<div class="col-lg-12"></div>

</div>