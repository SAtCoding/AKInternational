<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="page-wrapper"><br>

			<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
						<center>Daily Report </center>
                        </div>
                        <div class="panel-body">
                            <div class="row">
							<div class="col-lg-4"></div>
                                <div class="col-lg-4">
                                    <form role="form">
                                        <div class="form-group">
                                         <form action="#" method="get" class="sidebar-form">
                                                        <div class="input-group">
                                                            <input type="text" id="pac-input" class="form-control" placeholder="Search Dr/Clinic/Chemist">
                                                            <span class="input-group-btn">
                                                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                                                <i class="fa fa-search"></i>
                                                </button>
                                                </span>
                                                        </div>
                                                    </form>
                                        </div>
										 <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label> Name: </label>
                                                        <br>
                                                        <label> Contact Number: </label>
                                                        <br>
                                                        <label> Email ID: </label>
                                                        <br>
                                                        <label> Address: </label>
                                                        <br>
                                                    </div>
                                        </div>
                                       
                                      
                                        <center><button type="submit" class="btn btn-default">Submit for Approval</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-3">
                                   
                                </div>
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