package com.jfsd.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jfsd.model.Admin;
import com.jfsd.model.Client;
import com.jfsd.model.Faculty;
import com.jfsd.repository.ClientRepository;
import com.jfsd.repository.FacultyRepository;
import com.jfsd.service.AdminService;
import com.jfsd.service.ClientService;
import com.jfsd.service.EmailService;
import com.jfsd.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ClinetController {

	@Autowired
	private ClientService clientService;
	@Autowired
	private EmailService emailService;
	@Autowired
	private ClientRepository clientRepository;
	@Autowired
	private FacultyRepository facultyRepository;
	@Autowired
	   private AdminService adminService;
	
	@Autowired
	private FacultyService facultyService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping("/forgot")
	public String openEmailForm() {
		return "forgotpassword";
	}
	@GetMapping("/clients")
    public String viewAllData(Model model) {
        java.util.List<Client> clients = clientService.getAllClients();
        model.addAttribute("data", clients);
        return "view-all-data";
    }
	@GetMapping("/facultys")
    public String viewAllDataf(Model model) {
        java.util.List<Faculty> facultys = facultyService.getAllFaculty();
        model.addAttribute("dataf", facultys);
        return "view-all-dataf";
    }
	@GetMapping("/doubts")
    public String askdoubtsf(Model model) {
        java.util.List<Faculty> facultys = facultyService.getAllFaculty();
        model.addAttribute("dataf", facultys);
        return "doubts-f";
    }
	@PostMapping("/doubts")
    public String askdoubts(Model model) {
        java.util.List<Faculty> facultys = facultyService.getAllFaculty();
        model.addAttribute("dataf", facultys);
        return "doubts-f";
    }
	 @PostMapping("/sendMessage")
	    public void sendMessage(@RequestParam Long facultyId) {
	        // Fetch the faculty using the facultyId
	        Faculty faculty = facultyService.findById(facultyId);

	       
	            emailService.sendNewMail(faculty.getEmail(), "New Message", "messageContent");

	           
	            
	    }
	@GetMapping("/edit-item")
	public String edit() {
		return "edit-item";
	}

	@GetMapping("/edit/{id}")
	public String editItem(@PathVariable Long id, Model model) {
	    Client item= clientService.findById(id);
	    model.addAttribute("client", item);
	    return "edit-item"; // Make sure this matches the correct JSP file name and location
	}
	
    // Handle the form submission for editing
	@PostMapping("/edit/{id}")
    public String editClient(@PathVariable Long id, @ModelAttribute Client updatedClient, RedirectAttributes redirectAttributes) {
        Optional<Client> existingClient = Optional.ofNullable(clientService.findById(id));

        if (existingClient.isPresent()) {
            Client client = existingClient.get();

            // Check if email, username, or phone number is being updated
            if (!client.getEmail().equals(updatedClient.getEmail())) {
                Client facultyWithEmail = clientRepository.findByEmail(updatedClient.getEmail());
                if (facultyWithEmail != null && !facultyWithEmail.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Email already exists");
                    return "redirect:/clients"; // Redirect with an error message
                }
            }

            if (!client.getUsername().equals(updatedClient.getUsername())) {
                Client facultyWithUsername = clientRepository.findByUsername(updatedClient.getUsername());
                if (facultyWithUsername != null && !facultyWithUsername.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Username already exists");
                    return "redirect:/clients"; // Redirect with an error message
                }
            }

            if (!client.getPhn().equals(updatedClient.getPhn())) {
                Client facultyWithPhoneNumber = clientRepository.findByPhn(updatedClient.getPhn());
                if (facultyWithPhoneNumber != null && !facultyWithPhoneNumber.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Phone number already exists");
                    return "redirect:/clients"; // Redirect with an error message
                }
            }

            // If no duplicate records found, proceed with the update
            client.setName(updatedClient.getName());
            client.setEmail(updatedClient.getEmail());
            client.setDob(updatedClient.getDob());
            client.setPassword(updatedClient.getPassword());
            client.setPhn(updatedClient.getPhn());
            client.setUsername(updatedClient.getUsername());
            // Update other properties as needed

            clientService.save(client);
            redirectAttributes.addFlashAttribute("successMessagede", "Faculty successfully edited");
            return "redirect:/clients";
        }

        // Redirect to the client list after editing
        return "redirect:/clients"; // Handle the scenario where the faculty is not found
    }
    @GetMapping("/editf/{id}")
    public String showEditFormf(@PathVariable Long id, Model model) {
        Optional<Faculty> faculty = Optional.ofNullable(facultyService.findById(id));
        
        if (faculty.isPresent()) {
            model.addAttribute("faculty", faculty.get());
            return "edit-faculty"; // This should match the name of your JSP file
        } else {
            // Handle client not found, you can redirect or show an error page
            return "redirect:/facultys"; // Redirect to the client list
        }
    }

    // Process the form submission
    @PostMapping("/editf/{id}")
    public String editFaculty(@PathVariable Long id, @ModelAttribute Faculty updatedFaculty, RedirectAttributes redirectAttributes) {
        Optional<Faculty> existingFaculty = Optional.ofNullable(facultyService.findById(id));

        if (existingFaculty.isPresent()) {
            Faculty faculty = existingFaculty.get();

            // Check if email, username, or phone number is being updated
            if (!faculty.getEmail().equals(updatedFaculty.getEmail())) {
                Faculty facultyWithEmail = facultyRepository.findByEmail(updatedFaculty.getEmail());
                if (facultyWithEmail != null && !facultyWithEmail.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Email already exists");
                    return "redirect:/facultys"; // Redirect with an error message
                }
            }

            if (!faculty.getUsername().equals(updatedFaculty.getUsername())) {
                Faculty facultyWithUsername = facultyRepository.findByUsername(updatedFaculty.getUsername());
                if (facultyWithUsername != null && !facultyWithUsername.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Username already exists");
                    return "redirect:/facultys"; // Redirect with an error message
                }
            }

            if (!faculty.getPhn().equals(updatedFaculty.getPhn())) {
                Faculty facultyWithPhoneNumber = facultyRepository.findByPhn(updatedFaculty.getPhn());
                if (facultyWithPhoneNumber != null && !facultyWithPhoneNumber.getId().equals(id)) {
                    redirectAttributes.addFlashAttribute("errorMessagede", "Phone number already exists");
                    return "redirect:/facultys"; // Redirect with an error message
                }
            }

            // If no duplicate records found, proceed with the update
            faculty.setName(updatedFaculty.getName());
            faculty.setEmail(updatedFaculty.getEmail());
            faculty.setDob(updatedFaculty.getDob());
            faculty.setPassword(updatedFaculty.getPassword());
            faculty.setPhn(updatedFaculty.getPhn());
            faculty.setUsername(updatedFaculty.getUsername());
            // Update other properties as needed

            facultyService.save(faculty);
            redirectAttributes.addFlashAttribute("successMessagede", "Faculty successfully edited");
            return "redirect:/facultys";
        }

        // Redirect to the client list after editing
        return "redirect:/facultys"; // Handle the scenario where the faculty is not found
    }

    @GetMapping("/delete/{id}")
    public String deleteClient(@PathVariable Long id,RedirectAttributes redirectAttributes) {
        // Implement the logic to delete the record from the database
        clientService.deleteById(id);
        redirectAttributes.addFlashAttribute("successMessaged", "Client successfully deleted");

        return "redirect:/clients"; // Redirect to the client list page after deletion
    }
    @GetMapping("/deletef/{id}")
    public String deleteFaculty(@PathVariable Long id,RedirectAttributes redirectAttributes) {
        // Implement the logic to delete the record from the database
        facultyService.deleteById(id);
        redirectAttributes.addFlashAttribute("successMessaged", "Faculty successfully deleted");

        return "redirect:/facultys"; // Redirect to the client list page after deletion
    }
    @PostMapping("/addstudent")
    public String addClient(@ModelAttribute Client client, RedirectAttributes redirectAttributes) {
        // Check if the email, username, or phone number already exists in the database
        Client existingClientByEmail = clientRepository.findByEmail(client.getEmail());
        Client existingClientByUsername = clientRepository.findByUsername(client.getUsername());
        Client existingClientByPhn = clientRepository.findByPhn(client.getPhn());

        if (existingClientByEmail != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Email already exists");
            return "redirect:/clients"; // Redirect back to the registration page with an error message
        } else if (existingClientByUsername != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Username already exists");
            return "redirect:/clients"; // Redirect back to the registration page with an error message
        } else if (existingClientByPhn != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Phone number already exists");
            return "redirect:/clients"; // Redirect back to the registration page with an error message
        } else {
            // Save the client details to the database if no duplicates are found
            redirectAttributes.addFlashAttribute("successMessage", "Client successfully added");
            clientService.save(client);
            return "redirect:/clients"; // Redirect to the client list page after adding
        }
    }
    @PostMapping("/addfaculty")
    public String addFaculty(@ModelAttribute Faculty faculty, RedirectAttributes redirectAttributes) {
        // Check if the email, username, or phone number already exists in the database
        Faculty existingClientByEmail = facultyRepository.findByEmail(faculty.getEmail());
        Faculty existingClientByUsername = facultyRepository.findByUsername(faculty.getUsername());
        Faculty existingClientByPhn = facultyRepository.findByPhn(faculty.getPhn());

        if (existingClientByEmail != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Email already exists");
            return "redirect:/facultys"; // Redirect back to the registration page with an error message
        } else if (existingClientByUsername != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Username already exists");
            return "redirect:/facultys"; // Redirect back to the registration page with an error message
        } else if (existingClientByPhn != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Phone number already exists");
            return "redirect:/facultys"; // Redirect back to the registration page with an error message
        } else {
            // Save the client details to the database if no duplicates are found
            redirectAttributes.addFlashAttribute("successMessage", "Client successfully added");
            facultyService.save(faculty);
            return "redirect:/facultys"; // Redirect to the client list page after adding
        }
    }



    
	@PostMapping("checklogin")
	  public ModelAndView checklogin(HttpServletRequest request) {
	    ModelAndView mv=new ModelAndView();
	    
	    String username = request.getParameter("username");
	       String password= request.getParameter("password");
	       
	       Client c = clientService.checklogin(username, password);
	       
	       if(c!=null) {
	        
	         
	         mv.setViewName("client_home");
	       }
	       else {
	         mv.setViewName("student_login");
	         mv.addObject("msg","Enter Correct Credentials:)");
	       }
	       return mv;
	  }
	@PostMapping("checkfacultylogin")
	  public ModelAndView checkfacultylogin(HttpServletRequest request) {
	    ModelAndView mv=new ModelAndView();
	    
	    String username = request.getParameter("username");
	       String password= request.getParameter("password");
	       
	       Faculty f = facultyService.checkfacultylogin(username, password);
	       
	       if(f!=null) {
	        
	         
	         mv.setViewName("faculty_home");
	       }
	       else {
	         mv.setViewName("faculty_login");
				mv.addObject("msg","Enter Correct Credentials:)");
	       }
	       return mv;
	  }
	@GetMapping("register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student_register");
		return mv;
	}
	@GetMapping("registerf")
	public ModelAndView registerf() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("faculty_register");
		return mv;
	}
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student_login");
		return mv;
	}
	@GetMapping("loginf")
	public ModelAndView loginf() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("faculty_login");
		return mv;
	}
	@PostMapping("insertc")
	  public ModelAndView insertc(HttpServletRequest request) {
	    String msg=null;

	    
	    ModelAndView mv=new ModelAndView();
	    try {
	    	String username = request.getParameter("username");
	    	  String password = request.getParameter("password");
	    	  String email = request.getParameter("email");
	          String phn = request.getParameter("phn");
	          String name = request.getParameter("name");
	          String dob = request.getParameter("dob");
	         
	        Client c = new Client();
	        c.setUsername(username);
	        c.setPassword(password);
	        c.setEmail(email);	        
	        c.setPhn(phn);
	        c.setName(name);
	        c.setDob(dob);
	        msg = clientService.addclient(c);
	        
	        mv.setViewName("student_register");
	        mv.addObject("message", "Registered Successfully");

	    }catch(Exception e) {
	      msg = e.getMessage();
	      
	    }
	    
	    return mv;
	  }
	@PostMapping("insertf")
	  public ModelAndView insertf(HttpServletRequest request) {
	    String msg=null;

	    
	    ModelAndView mv=new ModelAndView();
	    try {
	    	String username = request.getParameter("username");
	    	  String password = request.getParameter("password");
	    	  String email = request.getParameter("email");
	          String phn = request.getParameter("phn");
	          String name = request.getParameter("name");
	          String dob = request.getParameter("dob");
	         
	        Faculty f = new Faculty();
	        f.setDob(dob);
	        f.setEmail(email);
	        f.setName(name);
	        f.setPassword(password);
	        f.setPhn(phn);
	     f.setUsername(username);
	        msg = facultyService.addfaculty(f);
	        
	        mv.setViewName("faculty_register");
	        mv.addObject("message", "Registered Successfully");

	    }catch(Exception e) {
	      msg = e.getMessage();
	      
	    }
	    
	    return mv;
	  }
	@GetMapping("client_home")
	public ModelAndView chome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("client_home");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView checkadminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_login");
		return mv;
	}
	
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String username = request.getParameter("username");
		String password  = request.getParameter("password");
		
		Admin admin = adminService.checkadminlogin(username, password);
		
		if(admin!=null)
		{
			mv.setViewName("admin_home");
		}
		else
		{
			mv.setViewName("admin_login");
			mv.addObject("msg","Enter Correct Credentials:)");
		}
		return mv;
	}
}
