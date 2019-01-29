package com.javax.services;
import com.javax.beans.Student;

public interface StudentService{
	
	public boolean addStudent(Student p);

	public boolean deleteStudent(int id);

	public Student getStudent(int id);
		
	public Student[] getAllStudents();
}
