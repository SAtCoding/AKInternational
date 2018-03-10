<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">
								<div class="input-group ">
									<span class="input-group-addon "><i
										class="glyphicon glyphicon-user "></i></span> <input
										name="last_name " placeholder="Gift Given to Doctor Name"
										class="form-control " type="text ">
								</div>
								<br>

								<div class="input-group ">
									<span class="input-group-addon "><span
										class="glyphicon glyphicon-calendar "></span></span> 
										<input class="form-control" id="date" name="date" placeholder="Enter Date" type="text"/>
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