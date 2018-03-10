<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center></center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="form-group">
									<form action="#" method="get" class="sidebar-form">
										<div class="input-group ">
											<span class="input-group-addon "><span
												class="glyphicon glyphicon-calendar "></span></span>
												<input class="form-control" id="date" name="date" placeholder="Select Date" type="text"/>
										</div>
										<br>
										<div class="form-group">
											<select class="form-control select">
												<option selected="selected">Select</option>
												<option></option>
											</select>
										</div>
									</form>
								</div>

							</form>
						</div>
						<!-- /.col-lg-6 (nested) -->
						<div class="col-lg-3"></div>
						<!-- /.col-lg-6 (nested) -->
					</div>
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="form-group">
									<div class="col-md-12"></div>
								</div>
								<center>
									<button type="submit" class="btn btn-default">Submit</button>
									<button type="submit" class="btn btn-default">Cancel</button>
								</center>
							</form>
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
