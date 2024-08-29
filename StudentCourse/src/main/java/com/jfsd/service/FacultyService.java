package com.jfsd.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jfsd.model.Faculty;
public interface FacultyService {
	public String addfaculty(Faculty f);
	public Faculty checkfacultylogin(String username,String password);
	public List<Faculty> getAllFaculty();
	public Faculty findById(Long id);
	public void save(Faculty faculty);
	public void deleteById(Long id);
}
