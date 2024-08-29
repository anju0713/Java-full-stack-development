package com.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.model.Client;
import com.jfsd.model.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Long>{
	
	@Query("select f from Faculty f where username=?1 and password=?2")
	public Faculty checkfacultylogin(String username,String password);
	 Faculty findByEmail(String email);
	 Faculty findByPhn(String phn);
	 Faculty findByUsername(String username);
}
