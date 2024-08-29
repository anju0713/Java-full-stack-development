package com.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Admin;
import com.jfsd.repository.AdminRepository;



@Service
public class AdminServiceImp implements AdminService
{
	@Autowired
    private AdminRepository adminRepository;
	@Override
	public Admin checkadminlogin(String username, String password)
	{
		return adminRepository.checkadminlogin(username, password);
	}
	
	
}
