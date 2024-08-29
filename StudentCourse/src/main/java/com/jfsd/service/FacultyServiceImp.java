package com.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Client;
import com.jfsd.model.Faculty;
import com.jfsd.repository.FacultyRepository;
@Service
public class FacultyServiceImp implements FacultyService{
@Autowired
private FacultyRepository facultyRepository;
	@Override
	public String addfaculty(Faculty f) {
		// TODO Auto-generated method stub
		facultyRepository.save(f);
		return "Registered Successfully";
	}

	@Override
	public Faculty checkfacultylogin(String username, String password) {
		// TODO Auto-generated method stub
		return facultyRepository.checkfacultylogin(username, password);
	}

	@Override
	public List<Faculty> getAllFaculty() {
		// TODO Auto-generated method stub
		
		return facultyRepository.findAll();
		
	}
	@Override
	public Faculty findById(Long id) {
		return facultyRepository.findById(id).orElse(null);
	}
	@Override
	public void save(Faculty faculty) {
		// TODO Auto-generated method stub
		facultyRepository.save(faculty);
	}

	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		facultyRepository.deleteById(id);
		
	}
}
