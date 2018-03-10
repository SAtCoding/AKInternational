<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="pull-right hidden-xs">
	<strong>Copyright &copy; </strong> All rights reserved.
</div>

<!-- Required Jquery files  -->

<!-- jQuery -->
<script
	src="<c:url  value='/resources/admin/vendor/jquery/jquery.min.js'/>"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Metis Menu Plugin JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/metisMenu/metisMenu.min.js'/>"></script>

<!-- DataTables JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/datatables/js/jquery.dataTables.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-responsive/dataTables.responsive.js'/>"></script>

<!-- Custom Theme JavaScript -->
<script src="<c:url  value='/resources/admin/dist/js/sb-admin-2.js'/>"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
	$(document).ready(function() {
		$('#dataTables-example').DataTable({
			responsive : true
		});
	});
</script>

<script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    locale: 'ru'
                });
            });
        </script>
