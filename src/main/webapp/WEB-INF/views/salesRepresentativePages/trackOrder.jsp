<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<br>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<center>Order Tracking</center>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<form role="form">

								<div class="input-group ">
									<span class="input-group-addon "><i
										class="	glyphicon glyphicon-sort-by-order "></i></span> <input
										name="last_name " placeholder="Order Number"
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
					<div class="row">
						<div class="col-md-12">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<ol class="progtrckr" data-progtrckr-steps="5">
									<li class="progtrckr-done">Order Processing</li>
									<!--
 -->
									<li class="progtrckr-done">Pre-Production</li>
									<!--
 -->
									<li class="progtrckr-done">In Production</li>
									<!--
 -->
									<li class="progtrckr-done">Shipped</li>
									<!--
 -->
									<li class="progtrckr-todo">Delivered</li>
								</ol>
							</div>
							<div class="col-md-2"></div>

						</div>
						<div class="col-md-4"></div>
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