package com.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.model.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Long> {
	@Query("select c from Client c where username=?1 and password=?2")
	public Client checklogin(String username, String password);

	 Client findByEmail(String email);
	 Client findByPhn(String phn);
	 Client findByUsername(String username);
}
