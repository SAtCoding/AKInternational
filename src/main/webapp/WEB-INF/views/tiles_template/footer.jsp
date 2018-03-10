<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/bootstrap/bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/bootstrap-colorpicker.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/bootstrap-datepicker.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/bootstrap-slider.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/bootstrap-timepicker.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/Chart.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/core.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/daterangepicker.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/fullcalendar.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/gcal.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/icheck.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery-jvectormap.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery.inputmask.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery.slim.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery.sparkline.min.js' />"></script>
<script type="text/javascript" src="<c:url  value='/resources/FrontEnd/dist/js/jquery.slimscroll.min.js' />"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
 
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
   
 
<script>
$(document).ready(function() {
    $('#contactForm').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The email address is not valid'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    stringLength: {
                        min: 8,
                        message: 'The password minimum characters long'
                    }
                }
            }
        }
    });
});
</script>