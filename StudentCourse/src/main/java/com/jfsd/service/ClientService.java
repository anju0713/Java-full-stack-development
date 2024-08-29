package com.jfsd.service;

import java.util.List;
import java.util.Optional;

import com.jfsd.model.Client;

public interface ClientService {
	public String addclient(Client c);
	public Client checklogin(String username, String password);
	public List<Client> getAllClients();
	public Client findById(Long id);
	public void save(Client client);
	public void deleteById(Long id);
	
}
