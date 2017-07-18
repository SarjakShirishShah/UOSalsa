package com.uosalsa.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.uosalsa.model.Role;
import com.uosalsa.model.SignedUpUsers;
import com.uosalsa.model.UosalsaUser;
import com.uosalsa.service.RoleService;
import com.uosalsa.service.SignedUpUsersService;
import com.uosalsa.service.UosalsaUserService;
import com.uosalsa.viewClasses.LoginBean;
import com.uosalsa.viewClasses.RegistrationBean;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Controller
public class LoginController {
	
	@Autowired
	private UosalsaUserService uosalsaUserService;
	
	@Autowired
	private SignedUpUsersService signedUpUsersService;
	
	@Autowired
	private RoleService roleService;
	
	private UoSalsaMailingService uoSalsaMailingService;

	@Autowired
	public void setSecChargeMailingService(
			UoSalsaMailingService uoSalsaMailingService) {
		this.uoSalsaMailingService = uoSalsaMailingService;
	}
	
	
	
	@RequestMapping(value = { "/signUp"}, method = RequestMethod.POST)
	public String signUp(ModelMap model, 
			@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "email", required = true) String email) {	
		
		SignedUpUsers signedUpUsers1 = signedUpUsersService.findByEmail(email);
		if (signedUpUsers1 != null)
		{
			model.addAttribute("message", "Hey " + name + ". You are already Signed Up!! .\r\n");
		}
		else
		{
			model.addAttribute("message", "Hey " + name + ". Thanks!! For Signing Up.\r\n");
			
			uoSalsaMailingService.sendMail("uosalsa@gmail.com",
					"SIGN-UP from Website", name + " with email " + email + " Signed Up." );
			
			String body = "Hi " + name + ", \r\n";
			body += "Thanks for Signing Up! \r\n";
			body += "Please Visit our <a href= www.facebook.com/UOSalsa"
					 + ">Facebook Page</a> for more information\r\n";
			body += "We will Keep sending you news and information about our classes. \r\n";
			body += "Keep dancing!! Have fun! \r\n \r\n";
			body += "Regards, \r\n";
			body += "UOSalsa";
			uoSalsaMailingService.sendMail(email,
					"Thanks for contacting UOSalsa", body);
		
			SignedUpUsers signedUpUsers = new SignedUpUsers(name, email, true);
			signedUpUsersService.create(signedUpUsers);
		}
		return "home";
	}
	
	@RequestMapping(value="/adminLogin19900",method=RequestMethod.GET)
	public String adminLogin(ModelMap model){
		
		LoginBean loginBean = new LoginBean();
		model.addAttribute("loginBean", loginBean); 
		return "adminLogin";
	}
	
	@RequestMapping(value="/executeAdminLogin",method=RequestMethod.POST)
	public String executeAdminLogin(ModelMap model,@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,
			HttpServletRequest request){
		System.out.println ("username = " + username);
		System.out.println ("password = " + password);
	
		
		UosalsaUser uosalsaUser	= uosalsaUserService.findByUsername(username);
		if (uosalsaUser != null)
		{
			String dBPassword = uosalsaUser.getPassword();
			
			BCryptPasswordEncoder bc = new BCryptPasswordEncoder();
			Boolean match = bc.matches(password, dBPassword);
			
			if(match)
			{
				Long roleId = uosalsaUser.getRoleId();
				Role role = roleService.findById(roleId);
				if (role.getName().equalsIgnoreCase("AdminHl"))
				{	
					RegistrationBean registrationBean = new RegistrationBean();
					model.addAttribute("registrationBean", registrationBean); 
					return "registration";
				}
				if (role.getName().equalsIgnoreCase("Admin"))
				{
					return "adminPage";
				}
			}
			else
			{
				model.addAttribute("message", "Login Credentials are invalid!!");
				model.addAttribute("resetPassword", 
						"<a href="
						+ getBaseURL(request) + "/resetPassword/" + uosalsaUser.getId()
						+ ">CLICK HERE</a> to reset the Password");
			}
		}
		model.addAttribute("message", "Login Credentials are invalid!!");
		return "adminLogin";
		
		
	}
	
	@RequestMapping(value = "/resetPassword/{token}", method = RequestMethod.GET)
	public String resendregister(ModelMap model, @PathVariable String token,
			HttpServletRequest request) {
		Long id = Long.valueOf(token);
		UosalsaUser uosalsaUser	= uosalsaUserService.findById(id);
		if (uosalsaUser != null)
		{
			String body = "Hi " + uosalsaUser.getUsername() + ", \r\n";
			body += "Please reset your password by <a href="
					+ getBaseURL(request) + "/executeResetPassword?uId=" + uosalsaUser.getId()
					+ ">clicking here.</a> \r\n";
			
			uoSalsaMailingService.sendMail(uosalsaUser.getEmail(),
					"Reset Uosalsa Password", body);
			
			model.addAttribute("resetPassword", "Check Your email, to reset your password");
			return "redirect:/navigate";
		}
		model.addAttribute("resetPassword", "You are not a registered user, Please register again");
		return "adminLogin";
	}
	
	@RequestMapping(value = "/navigate", method = RequestMethod.GET)
	public String navigate(ModelMap model) {
		
		model.addAttribute("resetPassword", "Check Your email, to reset your password");
		return "adminLogin";
	}
	
	@RequestMapping(value = "/executeResetPassword", method = RequestMethod.GET)
	public String executeResetPassword(ModelMap model,
			@RequestParam(value = "uId", required = true) String token) {
		
		Long id = Long.valueOf(token);
		UosalsaUser uosalsaUser	= uosalsaUserService.findById(id);
		model.addAttribute("id", uosalsaUser.getId());
		return "resetPassword";		
	}
	
	@RequestMapping(value = "/executeReset", method = RequestMethod.POST)
	public String executeReset(ModelMap model,
			HttpServletRequest request,
			@RequestParam(value = "confirmPassword", required = true) String confirmPassword,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "id", required = true) String token) {
		
		if (password.equals(confirmPassword))
		{
			Long id = Long.valueOf(token);
			UosalsaUser uosalsaUser	= uosalsaUserService.findById(id);
			BCryptPasswordEncoder bc = new BCryptPasswordEncoder();
			String encodedPassword = bc.encode(password);
			uosalsaUser.setPassword(encodedPassword);
			uosalsaUser.setPasswordConfirm(encodedPassword);
			uosalsaUserService.update(uosalsaUser);
			/*UosalsaUser updatedUosalsaUser = new UosalsaUser(uosalsaUser.getUsername(),
					encodedPassword, encodedPassword, uosalsaUser.getEmail(),
					uosalsaUser.getRoleId());
			uosalsaUserService.delete(uosalsaUser);
			uosalsaUserService.create(updatedUosalsaUser);*/
			model.addAttribute("message", "Password successfully reset!");
			return "resetPassword";	
		}
		else
		{
			model.addAttribute("message", "Password does not match with confirmed password");
			return "resetPassword";
		}
	}
	
	
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String executeRegistration(ModelMap model,
			@ModelAttribute("RegistrationBean")RegistrationBean registrationBean){
		UosalsaUser uosalsaUser1 = uosalsaUserService.findByUsername(registrationBean.getUsername());
		UosalsaUser uosalsaUser2 = uosalsaUserService.findByEmail(registrationBean.getEmail());
		if (uosalsaUser1 != null)
		{
			model.addAttribute("message", "Sorry!! The Username - " + uosalsaUser1.getUsername() +
					" is unavialable. Please try a different Username.");
			return "registration";
		}
		else if (uosalsaUser2 != null)
		{
			model.addAttribute("message", "Sorry!! The email - " + uosalsaUser2.getEmail() +
					" is already registered. If you do not remember your password, please contact administration.");
			return "registration";
		}
		
		else
		{
			
			UosalsaUser uosalsaUser = new UosalsaUser();
			uosalsaUser.setEmail(registrationBean.getEmail());
			BCryptPasswordEncoder bc = new BCryptPasswordEncoder();
			String encodedPassword = bc.encode(registrationBean.getPassword());
			uosalsaUser.setPassword(encodedPassword);
			uosalsaUser.setUsername(registrationBean.getUsername());
			Role role = roleService.findByName("Admin");
			uosalsaUser.setRoleId(role.getId());
			uosalsaUserService.create(uosalsaUser);
			
			/*RegistrationBean newRegistrationBean = new RegistrationBean();
			model.addAttribute("registrationBean", newRegistrationBean); */
			
			model.addAttribute("message", "Congratulations " + uosalsaUser.getUsername() +
					"!! You are now registered with Uosalsa!!");
			/*return "registration";*/
			return "adminPage";
		}
	}
	
	@RequestMapping(value="/deleteSignedUpUser",method=RequestMethod.GET)
	public String deleteSignedUpUser(ModelMap model,
			@RequestParam(value = "dId", required = true) String deleteId){
		Long id = Long.valueOf(deleteId);
		SignedUpUsers signedUpUsers = signedUpUsersService.findById(id);
		signedUpUsersService.delete(signedUpUsers);
		return "redirect:/listAllusers";
	}
	
	private String getBaseURL(HttpServletRequest request) {
		return String.format("%s://%s:%d" + request.getContextPath(),
				request.getScheme(), request.getServerName(),
				request.getServerPort());
	}
}
