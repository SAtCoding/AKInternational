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
										<div class="input-group">
											<input type="text" id='pac-input' class="form-control"
												placeholder="Search Dr/Clinic/Chemist"> <span
												class="input-group-btn">
												<button type="submit" name="search" id="search-btn"
													class="btn btn-flat">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
									</form>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<label> Name: </label> <br> <label> Contact
											Number: </label> <br> <label> Email ID: </label> <br> <label>
											Address: </label> <br>
									</div>
								</div>

							</form>
						</div>
						<!-- /.col-lg-6 (nested) -->
						<div class="col-lg-3"></div>
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<div class="panel-footer">
					<div id="map"></div>
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d925090.8127536911!2d55.321131!3d25.080324!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f43496ad9c645%3A0xbde66e5084295162!2sDubai+-+United+Arab+Emirates!5e0!3m2!1sen!2sus!4v1519747209275"
						width="1240" height="400" frameborder="0" style="border: 0"
						allowfullscreen></iframe>



					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
