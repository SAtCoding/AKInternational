<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center>Register Employee</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<c:url value="/admin/registerUser?userid=${userid}"
								var="registerUser"></c:url>
							<form:form role="form" action="${registerUser}" method="post"
								modelAttribute="user">
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span>
									<form:input type="text" path="firstName" class="form-control"
										id="" placeholder="First Name" />
									<form:errors path="firstName" cssClass="text-danger" />

								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span>
									<form:input type="text" path="lastName" class="form-control"
										id="" placeholder="Last Name" />
									<form:errors path="lastName" cssClass="text-danger" />
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-envelope "></span></i> </span>
									<form:input type="email" path="email" class="form-control"
										id="" placeholder="Email" />
									<form:errors path="email" cssClass="text-danger" />
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-calendar "></i></span>
										
									<form:input  data-date-format="dd-mm-yyyy"  path="dateOfBitrh" class="form-control"
										id="date" name="date" placeholder="Birth date" />
									<form:errors path="dateOfBitrh" cssClass="text-danger" />
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-earphone "></i></span>
									<form:input type="text" path="contactNumber" class="form-control"
										id="" placeholder="Contact Number" />
									<form:errors path="contactNumber" cssClass="text-danger" />
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-calendar "></span></span>
									<form:input data-date-format="dd-mm-yyyy" name="date" path="dateOfJoining" class="form-control"
										id="date" placeholder="Hire date" />
									<form:errors path="dateOfJoining" cssClass="text-danger" />
								</div>
								<br>
								<div class="form-group">
									<form:select path="role.roleId" class="form-control"
										placeholder="Role">
										<form:option value="-1">Role</form:option>
										<form:options items="${roles}" itemValue="roleId"
											itemLabel="authority" />
									</form:select>
									<form:errors path="role.roleId" cssClass="text-danger" />
								</div>
								<center>
									<button type="submit" class="btn btn-default">Submit</button>
									<center>
							</form:form>
						</div>
						<!-- /.col-lg-6 (nested) -->
						<div class="col-lg-3"></div>
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
