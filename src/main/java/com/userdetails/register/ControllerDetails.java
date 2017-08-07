package com.userdetails.register;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class ControllerDetails {

	@RequestMapping(method = RequestMethod.GET)
	public String getUserDetails(Model model) {

		Details details = new Details();

		model.addAttribute("firstname", details);
		model.addAttribute("lastname", details);
		model.addAttribute("email", details);
		model.addAttribute("password", details);
		model.addAttribute("confirmpassword", details);
		model.addAttribute("dob", details);
		model.addAttribute("gender", details);
		model.addAttribute("mobilenumber", details);
		model.addAttribute("address1", details);
		model.addAttribute("address2", details);
		model.addAttribute("city", details);
		model.addAttribute("state", details);
		model.addAttribute("country", details);
		model.addAttribute("zipcode", details);
		model.addAttribute("altemail", details);

		return "login";

	}

	@RequestMapping(value = "/userdetails", method = RequestMethod.POST)
	public String userDetails(@Valid @ModelAttribute Details details, BindingResult result, HttpServletRequest model) {

		String firstname = model.getParameter("firstname");
		String lastname = model.getParameter("lastname");
		String email = model.getParameter("email");
		String password = model.getParameter("password");
		String confirmpassword = model.getParameter("confirmpassword");
		String dob = model.getParameter("dob");
		String gender = model.getParameter("gender");
		String mobilenumber = model.getParameter("mobilenumber");
		String address1 = model.getParameter("address1");
		String address2 = model.getParameter("address2");
		String city = model.getParameter("city");
		String state = model.getParameter("state");
		String country = model.getParameter("country");
		String zipcode = model.getParameter("zipcode");
		String altemail = model.getParameter("altemail");

		details.setFirstname(firstname);
		details.setLastname(lastname);
		details.setEmail(email);
		details.setPassword(password);
		details.setConfirmpassword(confirmpassword);
		details.setDob(dob);
		details.setGender(gender);
		details.setMobilenumber(mobilenumber);
		details.setAddress1(address1);
		details.setAddress2(address2);
		details.setCity(city);
		details.setState(state);
		details.setCountry(country);
		details.setZipcode(zipcode);
		details.setAltemail(altemail);

		RepoDao dao = new RepoDao();

		dao.getConnection();
		dao.createRegistration();
		dao.saveRegistrationDetails(details);
		if(result.hasErrors()){
			return "login";
		}
	
		return "home";

	}

}
