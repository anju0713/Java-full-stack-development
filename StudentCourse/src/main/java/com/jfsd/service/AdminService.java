package com.jfsd.service;

import com.jfsd.model.Admin;

public interface AdminService 
{
	public Admin checkadminlogin(String username,String password);
}
