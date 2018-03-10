<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Employees Details</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Employees list</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<table width="100%"
						class="table table-striped table-bordered table-hover"
						id="allUsers">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Email</th>
								<th>Joining Date</th>
								<th>Role</th>
								<th>Contact No</th>
								<th></th>
							</tr>
						</thead>
					</table>

				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

	<!-- /.row -->

	<!-- /#page-wrapper -->
</div>
<!-- jQuery -->
<script
	src="<c:url  value='/resources/admin/vendor/jquery/jquery.min.js'/>"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!-- DataTables JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/datatables/js/jquery.dataTables.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-responsive/dataTables.responsive.js'/>"></script>
<script type="text/javascript">
	$(function() {
		var approoturl = "http://localhost:8090/AKInternational";
		var postReqURl = approoturl + '/admin/usersPaginationList?userid=' + ${userid};
		
		var table = $('#allUsers').DataTable({
			
			lenghtMenu : [[25 ,50 ,100, -1], ['25 records','50 records','100 records', 'ALL']],
			ajax : {
				url: postReqURl,
				dataSrc: ''
			},
			
			responsive : true,
			columns : [
				{
				data: 'userid'
				},
				{
					data : 'username'
			}, {
				data : 'email'
			}, {
				data : 'dateOfJoining'
			}, {
				data : 'role.authority'
			}, {
				data : 'contactNumber'
			},{
				data : 'userid',
				mRender: function(data, type, row){
					var str = '';
					str += '<a href="'+approoturl+'/admin/editUserView?userid='+${userid}+'&editUserId='+data+'" data-toggle="tooltip" title="edit"><i class="fa fa-edit fa-lg"></i></a>';
					
					return str;
				}
			}, ],

			//"aoColumnDefs":[{"sClass":"rowname","aTargets":[3]}] ,

			"rowCallback" : function(row, data) {

				console.log(data.userid);

			},

		});
	});
</script>