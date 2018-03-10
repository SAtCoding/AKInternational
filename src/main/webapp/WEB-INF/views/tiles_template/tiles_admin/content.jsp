<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="/resources/FrontEnd/images/Product1.jpeg" style="height:350px;width:100%;">
                        </div>

                        <div class="item">
                            <img src="/resources/FrontEnd/images/Product2.jpeg" style="height:350px;width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">  
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control select">
                                                    <option selected="selected">Select</option>
                                                    <option>Alaska</option>
                                                    <option>California</option>
                                                    <option>Delaware</option>
                                                    <option>Tennessee</option>
                                                    <option>Texas</option>
                                                    <option>Washington</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <input type="text" class="form-control pull-right" id="datepicker" placeholder="Enter Date">

                                                <div class="input-group-addon">
                                                    <a href=""><i class="fa fa-clock-o"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									<div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
										<br>
											<input type="text" class="form-control" placeholder="Enter Client Name">
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									<div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
										<br>
											<input type="text" class="form-control" placeholder="Enter Doctor Name">
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
										<br>
											<input type="email" class="form-control" id="inputEmail3" placeholder="Invite AK Colleagues">
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									<div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4"><br>
                                        <select class="form-control select2" multiple="multiple" data-placeholder="Select Brands" style="width: 100%;">
											<option>Alabama</option>
											<option>Alaska</option>
											<option>California</option>
											<option>Delaware</option>
											<option>Tennessee</option>
											<option>Texas</option>
											<option>Washington</option>
										</select>
										</div>
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									<div class="col-md-12">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4"><br>
                                                          <div class="input-group">
                <input type="text" class="form-control" placeholder="Number of sample required">
                <span class="input-group-addon"><i class="fa fa-plus-circle"></i></span>
              </div>
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
									<br>
              <!-- /.form-group -->
            </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- ./box-body -->
                            <div class="box-footer">
                                <div class="row">
								                                <div class="col-md-12">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-2">
                                            <button type="button" class="btn btn-block btn-success">Submit</button>
                                        </div>
                                        <div class="col-md-2">
                                            <button type="button" class="btn btn-block btn-danger">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </div>

                            <!-- /.box-footer -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
            </section>
        </div>