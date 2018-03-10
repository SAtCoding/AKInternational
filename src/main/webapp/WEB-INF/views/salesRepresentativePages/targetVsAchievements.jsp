<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center>Target Vs Achievements</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Target</option>
										<option>Weekly Target</option>
										<option>Monthly Target</option>
									</select>
								</div>

								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-sort-by-order "></span></span> <input
										placeholder="Order confirmed AED Value " class="form-control "
										type="text ">
								</div>
								<br>

								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-calendar " id='datetimepicker1'></span></i>
									</span> <input placeholder="Enter Date " class="form-control "
										type="text ">
								</div>
								<br>

								<center>
									<button type="submit" class="btn btn-default">Submit</button>
									<center>
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
