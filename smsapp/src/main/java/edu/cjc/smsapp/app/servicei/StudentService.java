package edu.cjc.smsapp.app.servicei;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.app.model.Student;

public interface StudentService {
	
public void saveStudentDetails(Student st);

public List<Student> getAllStudent();

public List<Student> searchStudentsByBatch(String batchNumber);

public Student getSingleStudent(int id);

public void updateStudentFees(int studentId,double ammount);



}
