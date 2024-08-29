package com.jfsd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Client;
import com.jfsd.repository.ClientRepository;

@Service
public class ClientServiceImp implements ClientService{
	@Autowired
	private ClientRepository clientRepository;
	@Override
	public String addclient(Client client) {
		 if (clientRepository.findByEmail(client.getEmail()) != null || 
		            clientRepository.findByPhn(client.getPhn()) != null) {
		            throw new CustomException("Email or phone number already exists"); // Custom exception for duplicate entry
		        }

		        // If unique, save the client
		 else
		 {
			clientRepository.save(client);
			return "Registered Successfully";
		 }
	}
	@Override
	public Client checklogin(String username, String password) {
		return clientRepository.checklogin(username, password);
	}
	@Override
	public List<Client> getAllClients() {
		// TODO Auto-generated method stub
		
		return clientRepository.findAll();
		
	}
	@Override
	public Client findById(Long id) {
		return clientRepository.findById(id).orElse(null);
	}
	@Override
	public void save(Client client) {
		// TODO Auto-generated method stub
		clientRepository.save(client);
	}
	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		clientRepository.deleteById(id);
	}
	
	
	

    
	
}
