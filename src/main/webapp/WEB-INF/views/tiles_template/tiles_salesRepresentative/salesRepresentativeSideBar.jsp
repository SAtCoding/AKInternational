<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li><a href="#"> <i class="fa fa-dashboard"></i> Planner<span
					class="fa arrow"></span></a> </a>
				<ul class="nav nav-second-level">
					<li><a
						href="<c:url  value='/saleRep/planner?userid=${userid}'/>'/>">
							Planner</a></li>
					<li><a
						href="<c:url  value='/saleRep/dailyPlanner?userid=${userid}'/>">
							Daily Planner</a></li>
					<li><a
						href="<c:url  value='/saleRep/activityPlanner?userid=${userid}'/>">Activity
							Planner</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i> Reporting<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#"><i class="fa fa-table fa-fw"></i> DCR<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="<c:url  value='/saleRep/doctorInterface?userid=${userid}'/>">
									Doctor Interface</a></li>
							<li><a
								href="<c:url  value='/saleRep/chemistInterface?userid=${userid}'/>">
									Chemist Interface</a></li>
							<li><a
								href="<c:url  value='/saleRep/purchaseOfficerInterface?userid=${userid}'/>">
									Purchase Officer Interface</a></li>
							<li><a
								href="<c:url  value='/saleRep/patientCoordinatorInterface?userid=${userid}'/>">
									Patient Coordinator Interface</a></li>
							<li><a
								href="<c:url  value='/saleRep/paramedicInterface?userid=${userid}'/>">
									Paramedic Interface</a></li>
							<li><a
								href="<c:url  value='/saleRep/medicalDirectorInterface?userid=${userid}'/>">
									Medical Director Interface</a></li>
									
						</ul> <a href="#"><i class="fa fa-table fa-fw"></i> Weekly Report<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="<c:url  value='/saleRep/dailyReport?userid=${userid}'/>"> Daily Report</a></li>
							<li><a
								href="<c:url  value='/saleRep/monthlyReport?userid=${userid}'/>"> Monthly Report</a></li>
							<li><a href="<c:url  value='/saleRep/quarterlyReport?userid=${userid}'/>"> Quarterly Report</a></li>
						</ul></li>
					<li><a href="quaterlyReport.html"><i
							class="fa fa-table fa-fw"></i> Monthly Plan</a></li>
				</ul></li>
			<li><a href="<c:url  value='/saleRep/targetVsAchievement?userid=${userid}'/>"><i
					class="fa fa-table fa-fw"></i> Target vs Achievements</a></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i>E-Detailing<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Perfectha</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Prizmah</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Ultralift</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Dermapen</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Lapromed</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Gastric Brands</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> QSS</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Mosleds</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i>Production
					Information<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Perfectha</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Prizmah</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Ultralift</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Dermapen</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Lapromed</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Gastric Brands</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> QSS</a></li>
					<li><a href="<c:url  value='/saleRep/productionInformation?userid=${userid}'/>"> Mosleds</a></li>
				</ul></li>
			<li><a href="<c:url  value='/saleRep/locateClinicChemist?userid=${userid}'/>"><i
					class="fa fa-edit fa-fw"></i>Locate Clinic/Chemist</a></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i> Doctor
					List<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="<c:url  value='/saleRep/addDoctor?userid=${userid}'/>">Add Doctor</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i> Chemist
					List<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="<c:url  value='/saleRep/addChemist?userid=${userid}'/>"> Add Chemist</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-edit fa-fw"></i>Competitor
					Activity & Feedback</a></li>
			<li><a href="#"><i class="fa fa-table fa-fw"></i>Order
					Management<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="<c:url  value='/saleRep/placeOrder?userid=${userid}'/>">Place Order</a></li>
					<li><a href="<c:url  value='/saleRep/trackOrder?userid=${userid}'/>">Track Order</a></li>
					<li><a href="<c:url  value='/saleRep/returnOrder?userid=${userid}'/>">Return Order</a></li>
				</ul></li>
			<li><a href="<c:url  value='/saleRep/expenses?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>Expenses</a>
			</li>
			<li><a href="<c:url  value='/saleRep/events?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>Events
					& Conferences</a></li>
			<li><a href="<c:url  value='/saleRep/leaveApplication?userid=${userid}'/>"><i
					class="fa fa-edit fa-fw"></i>Leave Application</a></li>
			<li><a href="<c:url  value='/saleRep/giftsPromotions?userid=${userid}'/>"><i
					class="fa fa-edit fa-fw"></i>Gifts & Promotions</a></li>
			<li><a href="<c:url  value='/saleRep/stockManagement?userid=${userid}'/>"><i
					class="fa fa-edit fa-fw"></i>Stock Management</a></li>
			<li><a href="<c:url  value='/saleRep/wallOfFrame?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>Wall
					of Frame</a></li>
			<li><a href="<c:url  value='/saleRep/survey?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>Survey</a>
			</li>
			<li><a href="<c:url  value='/saleRep/hQUpdates?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>HQ
					Updates</a></li>
			<li><a href="<c:url  value='/saleRep/pendingPayments?userid=${userid}'/>"><i
					class="fa fa-edit fa-fw"></i>Pending Payments</a></li>
			<li><a href="<c:url  value='/saleRep/placeOrder?userid=${userid}'/>"><i class="fa fa-edit fa-fw"></i>Signout</a>
			</li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->