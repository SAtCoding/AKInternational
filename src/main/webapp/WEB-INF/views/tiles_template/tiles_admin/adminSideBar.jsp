<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li><a href="#"><i class="fa fa-dashboard fa-fw"></i> Human
					Resource <span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a
						href="<c:url value='/admin/allUsersView?userid=${userid}'/>">View
							Employees</a></li>
					<li><a
						href="<c:url value='/admin/addUserView?userid=${userid}'/>">Add
							User</a></li>

				</ul></li>
			<li><a href="index.html"> <i class="fa fa-dashboard"></i>
					Planner<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="salesRepresentativePages/planner.jsp"> Planner</a></li>
					<li><a href="salesRepresentativePages/dailyplanner.jsp"> Daily Planner</a></li>
					<li><a href="salesRepresentativePages/activityplanner.jsp">Activity Planner</a></li>
				</ul></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
					Reporting<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> Weekly Report</a></li>
					<li><a href="dailyplanner.html"> Monthly Report</a></li>
				</ul></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>Sale
					Report<span class="fa arrow"></span></a></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
					Target vs Achievements<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> Weekly Target</a></li>
					<li><a href="dailyplanner.html"> Monthly Target</a></li>
				</ul></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>E-Detailing<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> Perfectha</a></li>
					<li><a href="dailyplanner.html">Prizmah</a></li>
					<li><a href="dailyplanner.html">Ultralift</a></li>
					<li><a href="dailyplanner.html"></a>Dermapen</li>
					<li><a href="dailyplanner.html"></a>Lapromed</li>
					<li><a href="dailyplanner.html"></a>Gastric Brands</li>
					<li><a href="dailyplanner.html"></a>QSS</li>
					<li><a href="dailyplanner.html"></a>Mosleds</li>
				</ul></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>Production
					Information<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> Perfectha</a></li>
					<li><a href="dailyplanner.html">Prizmah</a></li>
					<li><a href="dailyplanner.html">Ultralift</a></li>
					<li><a href="dailyplanner.html"></a>Dermapen</li>
					<li><a href="dailyplanner.html"></a>Lapromed</li>
					<li><a href="dailyplanner.html"></a>Gastric Brands</li>
					<li><a href="dailyplanner.html"></a>QSS</li>
					<li><a href="dailyplanner.html"></a>Mosleds</li>
				</ul></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Locate
					Clinic/Chemist</a></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
					Doctor List<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> View Doctor</a></li>
					<li><a href="planner.html"> Add Doctor</a></li>
				</ul></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
					Chemist List<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html"> View Doctor</a></li>
					<li><a href="planner.html"> Add Chemist</a></li>
				</ul></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Competitor
					Activity & Feedback</a></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>Order
					Management<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="planner.html">Place Order</a></li>
					<li><a href="planner.html"> Track Order</a></li>
					<li><a href="planner.html"> Return Order</a></li>
				</ul></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Expenses</a>
			</li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Events
					& Conferences</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Leave
					Application</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Gifts
					& Promotions</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Stock
					Management</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Wall
					of Frame</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Survey</a>
			</li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>HQ
					Updates</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Pending
					Payments</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Incentive
					Calculator</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>Signout</a>
			</li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->