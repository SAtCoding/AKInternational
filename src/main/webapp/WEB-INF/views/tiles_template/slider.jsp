<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <img src="<c:url  value='/resources/FrontEnd/images/Product1.jpeg'/>" style="height:350px; width:100%;"/>
                </div>

                <div class="item">
                    <img src="<c:url  value='/resources/FrontEnd/images/Product2.jpeg'/>" style="height:350px; width:100%;"/>
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