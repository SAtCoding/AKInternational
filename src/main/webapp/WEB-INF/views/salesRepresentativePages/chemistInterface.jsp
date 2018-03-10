<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center>Chemist Interface</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Profession</option>
										<option>Doctor</option>
										<option>Chemist</option>
										<option>Patient Coordinator</option>
										<option>Paramedic</option>
										<option>Clinic Manager</option>
										<option>Purchase Officer</option>
										<option>Medical Doctor</option>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Chemist Name</option>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Product Made Available</option>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Join call Colleague</option>
									</select>
								</div>

								<div class="input-group ">
									<textarea class="form-control" rows="3" cols="55"
										placeholder="Add Discussion Points ..."></textarea>
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-sort-by-order "></i></span> <input
										name="last_name " placeholder="Order Confirmed AED Value"
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-sort-by-order "></i></span> <input
										name="last_name " placeholder="FC Order AED Value"
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<input type="file">
								</div>
								<br>


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
