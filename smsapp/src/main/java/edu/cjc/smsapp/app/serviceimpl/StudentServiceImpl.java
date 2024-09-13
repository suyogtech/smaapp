package edu.cjc.smsapp.app.serviceimpl;

import java.util.List;

import org.apache.catalina.startup.ListenerCreateRule.OptionalListener;
import org.apache.el.stream.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.app.model.Student;
import edu.cjc.smsapp.app.repositary.StudentRepository;
import edu.cjc.smsapp.app.servicei.StudentService;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentRepository sr;
	@Override
	public void saveStudentDetails(Student st) {

		sr.save(st);
		
	}
	@Override
	public List<Student> getAllStudent() {
		return sr.findAll();
	}
	@Override
	public List<Student> searchStudentsByBatch(String batchNumber) {
		List<Student> batchStudents=sr.findByBatchNumber(batchNumber);
		
		return batchStudents;
	}
	@Override
	public Student getSingleStudent(int id) {
		java.util.Optional<Student> opStudent=sr.findById(id);
		return opStudent.get();
	}
	@Override
	public void updateStudentFees(int studentId,double ammount) {
		java.util.Optional<Student> opStudent=sr.findById(studentId);
		Student st=opStudent.get();
		
		st.setFeesPaid(st.getFeesPaid()+ammount);
		sr.save(st);
		
	}

}
