package com.narasimha.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.narasimha.mvc.model.PassengerProfile;
import com.narasimha.mvc.service.PassengerService;

@Controller
@RequestMapping("/passengers")
public class PassengerController {

	@Autowired
	PassengerService pservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultPage() {

		return "passenger";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView getEmployee(@RequestParam int profile_id) {
		PassengerProfile pass = pservice.getPassengerProfile(profile_id);

		ModelAndView model = new ModelAndView("passenger");
		if (pass == null) {
			model.addObject("result", "No such passenger..try with another id");
		} else {
			model.addObject("pass", pass);
		}
		return model;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addEmployee(@ModelAttribute PassengerProfile passenger, @RequestParam String hParam) {
		PassengerProfile pass = pservice.addPassengerProfile(passenger);
		ModelAndView model = new ModelAndView("passenger");
		if (pass == null) {
			model.addObject("result", "passenger cannot be added ..try again");
		} else {
			model.addObject("display", pass);

		}
		return model;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateEmployee(@ModelAttribute PassengerProfile passenger, @RequestParam String hParam) {
		PassengerProfile pass = pservice.updatePassengerProfile(passenger);
		ModelAndView model = new ModelAndView("passenger");
		if (pass == null) {
			model.addObject("result", "Passenger profile cannot be updated..try again");
		} else {
			model.addObject("display", pass);

		}
		return model;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deleteEmployee(@ModelAttribute PassengerProfile passenger, @RequestParam String hParam) {
		pservice.deletePassengerProfile(passenger.getProfile_id());
		ModelAndView model = new ModelAndView("passenger");
		model.addObject("result", "Passenger deleted sucessfully");
		return model;
	}

}
