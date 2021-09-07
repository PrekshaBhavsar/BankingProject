package in.co.online.bank.mgt.ICNIBank.Bank.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/BankManagement")
public class WelcomeCtl {

	@RequestMapping(value ="",method = RequestMethod.GET)	
	//@GetMapping("/Welcome")
	public String welcome() {
		return "Welcome";
	}
	@RequestMapping(value ="/Home",method = RequestMethod.GET)	
	@ResponseBody
	public String Home() {
		return "Home";
	}
}
