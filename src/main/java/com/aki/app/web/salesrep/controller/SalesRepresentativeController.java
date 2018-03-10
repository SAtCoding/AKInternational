package com.aki.app.web.salesrep.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aki.app.core.model.User;
import com.aki.app.service.security.UserService;

@Controller
@RequestMapping("/saleRep")
public class SalesRepresentativeController {

	@Autowired
	public UserService userService;

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String getAllUsers(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "plannerView";
	}

	@RequestMapping(value = "/dailyPlanner", method = RequestMethod.GET)
	public String displayDailyPlanner(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "dailyPannerView";
	}

	@RequestMapping(value = "/activityPlanner", method = RequestMethod.GET)
	public String displayActivityPlanner(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "activityPlannerView";
	}

	@RequestMapping(value = "/addDoctor", method = RequestMethod.GET)
	public String addDoctor(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "addDoctorView";
	}

	@RequestMapping(value = "/addChemist", method = RequestMethod.GET)
	public String addChemist(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "addChemistView";
	}

	@RequestMapping(value = "/doctorInterface", method = RequestMethod.GET)
	public String doctorInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "doctorInterfaceView";
	}

	@RequestMapping(value = "/chemistInterface", method = RequestMethod.GET)
	public String chemistInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "chemistInterfaceView";
	}

	@RequestMapping(value = "/purchaseOfficerInterface", method = RequestMethod.GET)
	public String purchaseOfficerInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "purchaseOfficerInterfaceView";
	}

	@RequestMapping(value = "/patientCoordinatorInterface", method = RequestMethod.GET)
	public String patientCoordinatorInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "patientCoordinatorInterfaceView";
	}

	@RequestMapping(value = "/paramedicInterface", method = RequestMethod.GET)
	public String paramedicInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "paramedicInterfaceView";
	}

	@RequestMapping(value = "/medicalDirectorInterface", method = RequestMethod.GET)
	public String medicalDirectorInterface(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "medicalDirectorInterfaceView";
	}

	@RequestMapping(value = "/dailyReport", method = RequestMethod.GET)
	public String dailyReport(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "dailyReportView";
	}

	@RequestMapping(value = "/monthlyReport", method = RequestMethod.GET)
	public String monthlyReport(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "monthlyReportView";
	}

	@RequestMapping(value = "/quarterlyReport", method = RequestMethod.GET)
	public String quarterlyReport(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "quarterlyReportView";
	}

	@RequestMapping(value = "/targetVsAchievement", method = RequestMethod.GET)
	public String targetVsAchievement(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "targetVsAchievementView";
	}

	@RequestMapping(value = "/eDetailing", method = RequestMethod.GET)
	public String eDetailing(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "eDetailingView";
	}

	@RequestMapping(value = "/locateClinicChemist", method = RequestMethod.GET)
	public String locateClinicChemist(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "locateClinicChemistView";
	}

	@RequestMapping(value = "/placeOrder", method = RequestMethod.GET)
	public String placeOrder(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "placeOrderView";
	}
	
	@RequestMapping(value = "/trackOrder", method = RequestMethod.GET)
	public String trackOrder(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "trackOrderView";
	}
	
	@RequestMapping(value = "/returnOrder", method = RequestMethod.GET)
	public String returnOrder(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "returnOrderView";
	}
	
	@RequestMapping(value = "/stockManagement", method = RequestMethod.GET)
	public String stockManagement(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "stockManagementView";
	}
	
	@RequestMapping(value = "/leaveApplication", method = RequestMethod.GET)
	public String leaveApplication(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "leaveApplicationView";
	}
	
	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public String events(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "eventsView";
	}

	@RequestMapping(value = "/expenses", method = RequestMethod.GET)
	public String expenses(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "expensesView";
	}

	@RequestMapping(value = "/giftsPromotions", method = RequestMethod.GET)
	public String giftsPromotions(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "giftsPromotionsView";
	}

	@RequestMapping(value = "/wallOfFrame", method = RequestMethod.GET)
	public String wallOfFrame(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "wallOfFrameView";
	}

	@RequestMapping(value = "/survey", method = RequestMethod.GET)
	public String survey(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "surveyView";
	}

	@RequestMapping(value = "/hQUpdates", method = RequestMethod.GET)
	public String hQUpdates(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "hQUpdatesView";
	}

	@RequestMapping(value = "/pendingPayments", method = RequestMethod.GET)
	public String pendingPayments(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "pendingPaymentsView";
	}
	
	@RequestMapping(value = "/productionInformation", method = RequestMethod.GET)
	public String productionInformation(@RequestParam int userid, ModelMap map) {
		User user = this.userService.getUserByUserId(userid);
		map.addAttribute("user", user);
		return "productionInformationView";
	}
}