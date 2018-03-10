<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center>Place Order</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Enter Doctor/Clinic Name"
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">

									<textarea class="form-control" rows="3" cols="55"
										placeholder="Address..."></textarea>
								</div>
								<br>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Brand</option>
										<option></option>
									</select>
								</div>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										placeholder="Add Quantity" class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="United Price Value(AED) "
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Total Value(AED) "
										class="form-control " type="text ">
								</div>
								<br>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Select Payee</option>
										<option>New Account</option>
										<option>Existing Account</option>
									</select>
								</div>
								<div class="form-group">
									<select class="form-control">
										<option value=" ">Mode of Payment</option>
										<option>Cash</option>
										<option>Card</option>
										<option>Payment Account</option>
									</select>
								</div>
								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-calendar "></span></span>
										<input class="form-control" id="datetimepicker2'" name="date" placeholder="Select Delivery Date & time" type="text"/>
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Add Delivery Notes "
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="PO Number "
										class="form-control " type="text ">
								</div>
								<br>
								<div class="input-group ">
									<input type="file">
								</div>
								<br>

								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Order Taken By "
										class="form-control " type="text ">
								</div>
								<br>

								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Digital Signiture"
										class="form-control " type="text ">
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
