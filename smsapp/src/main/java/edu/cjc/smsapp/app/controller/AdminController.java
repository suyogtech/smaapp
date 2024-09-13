package edu.cjc.smsapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.app.model.Student;
import edu.cjc.smsapp.app.servicei.StudentService;

@Controller
public class AdminController {
	@Autowired
	StudentService ssi;
	
	
	
	@RequestMapping("/")
	public String preLogin() {
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String onlogin(@RequestParam String Username,@RequestParam String Password,Model m) {
		if(Username.equals("admin") && Password.equals("admin")) {
			List<Student> students=ssi.getAllStudent();
			m.addAttribute("data", students);
			return "adminscreen";
		}
		else {
			m.addAttribute("login fail", "Enter valid details.");
			return "login";
		}
	}
		
		@RequestMapping("/enroll_student")
		public String saveData(@ModelAttribute Student s,Model m) {
			ssi.saveStudentDetails(s);
			List<Student> student=ssi.getAllStudent();
			m.addAttribute("data", student);
			return "adminscreen";
		}
		
		@RequestMapping("/search")
		public String getBatchStudent(@RequestParam String batchNumber,Model m) {
			
			List<Student> result=ssi.searchStudentsByBatch(batchNumber);
			if(result.size()>0) {
				m.addAttribute("data", result);
			}else {
				List<Student>student=ssi.getAllStudent();
				m.addAttribute("data", student);
				m.addAttribute("message","No records are available for the batch '"+batchNumber+"'...!");
			}
			
			return "adminscreen";
		}
		
		@RequestMapping("/fees")
		public String onFees(@RequestParam int id,Model m) {
			Student st=ssi.getSingleStudent(id);
			m.addAttribute("st", st);
			return "fees";
		}
		
		@RequestMapping("/payfees")
		public String payFees(@RequestParam int studentid,@RequestParam double ammount,Model m) {
			ssi.updateStudentFees(studentid,ammount);
			List<Student> students=ssi.getAllStudent();
			m.addAttribute("data",students);
			return "adminscreen";
			
		}
		
		@RequestMapping("/batch")
		public String onBatch(@RequestParam int id,Model m) {
			Student st=ssi.getSingleStudent(id);
			m.addAttribute("st", st);
			return "batch";
		}
		
//		@RequestMapping("/payfees")
//		public String payFees(@RequestParam int studentid,@RequestParam double ammount,Model m) {
//			ssi.updateStudentFees(studentid,ammount);
//			List<Student> students=ssi.getAllStudent();
//			m.addAttribute("data",students);
//			return "adminscreen";
//			
//		}
		
		
}
		
	
	
//	@RequestMapping("/signup")
//	public String signUp() {
//		
//		return "signup";
//	}


