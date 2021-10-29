/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.WebMvc;

import com.spboot.petshop.repositories.CustomerRepository;
import com.spboot.petshop.services.CustomerService;
import com.spboot.petshop.models.Admin;
import com.spboot.petshop.models.Customer;
import java.util.HashMap;
import net.bytebuddy.utility.RandomString;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 *
 * @author BesariMaliik, Sofia
 */
@ExtendWith(SpringExtension.class)
@SpringBootTest
@AutoConfigureMockMvc
public class WebMvcCustomerTests {
    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testShowDashboard() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Kita");
        admin.setEmail(email);
        admin.setPassword(password);

        mockMvc.perform(post("/register")
                .flashAttr("admin", admin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/login"));

        Admin adminLogin = new Admin();
        adminLogin.setEmail(email);
        adminLogin.setPassword(password);

        mockMvc.perform(post("/login")
                .flashAttr("admin", adminLogin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/"))
                .andDo(print());

        HashMap<String, Object> sessionattr = new HashMap<String, Object>();

        sessionattr.put("id", admin.getId());
        sessionattr.put("name", admin.getName());
        sessionattr.put("email", admin.getEmail());
        sessionattr.put("loggedIn", true);

        mockMvc.perform(get("/")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());
    }
    
    @Test
    public void testCuscreateCustomer() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Kita");
        admin.setEmail(email);
        admin.setPassword(password);

        mockMvc.perform(post("/register")
                .flashAttr("admin", admin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/login"));

        Admin adminLogin = new Admin();
        adminLogin.setEmail(email);
        adminLogin.setPassword(password);

        mockMvc.perform(post("/login")
                .flashAttr("admin", adminLogin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/"));

        HashMap<String, Object> sessionattr = new HashMap<String, Object>();

        sessionattr.put("id", admin.getId());
        sessionattr.put("name", admin.getName());
        sessionattr.put("email", admin.getEmail());
        sessionattr.put("loggedIn", true);

        mockMvc.perform(get("/")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        mockMvc.perform(get("/customer/cuscreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Kita aja";
        String telephone1 = "0813567644";
        String telephone2 = "02158754";
        String address = "Jl. Kita No.1";

        Customer customer = new Customer();
        customer.setName(name);
        customer.setTelephone1(telephone1);
        customer.setTelephone2(telephone2);
        customer.setAddress(address);

        mockMvc.perform(post("/customer/cusstore")
                .sessionAttrs(sessionattr)
                .flashAttr("customer", customer))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/customer"))
                .andDo(print());
    }
    
    @Test
    public void testCuscreateCustomerWithoutName() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Kita");
        admin.setEmail(email);
        admin.setPassword(password);

        mockMvc.perform(post("/register")
                .flashAttr("admin", admin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/login"));

        Admin adminLogin = new Admin();
        adminLogin.setEmail(email);
        adminLogin.setPassword(password);

        mockMvc.perform(post("/login")
                .flashAttr("admin", adminLogin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/"));

        HashMap<String, Object> sessionattr = new HashMap<String, Object>();

        sessionattr.put("id", admin.getId());
        sessionattr.put("name", admin.getName());
        sessionattr.put("email", admin.getEmail());
        sessionattr.put("loggedIn", true);

        mockMvc.perform(get("/")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        mockMvc.perform(get("/customer/cuscreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String telephone1 = "0812345678";
        String telephone2 = "08645678";
        String address = "Jl.Kita No.1";

        Customer customer = new Customer();

        customer.setName("");
        customer.setTelephone1(telephone1);
        customer.setTelephone2(telephone2);
        customer.setAddress(address);

        mockMvc.perform(post("/customer/cusstore")
                .sessionAttrs(sessionattr)
                .flashAttr("customer", customer))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/customer/cuscreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                            .flash()
                            .attribute("danger", "Name cannot be null!")
                );
    }
    
    @Test
    public void testCuscreateCustomerWithoutTelephone1() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Kita");
        admin.setEmail(email);
        admin.setPassword(password);

        mockMvc.perform(post("/register")
                .flashAttr("admin", admin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/login"));

        Admin adminLogin = new Admin();
        adminLogin.setEmail(email);
        adminLogin.setPassword(password);

        mockMvc.perform(post("/login")
                .flashAttr("admin", adminLogin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/"));

        HashMap<String, Object> sessionattr = new HashMap<String, Object>();

        sessionattr.put("id", admin.getId());
        sessionattr.put("name", admin.getName());
        sessionattr.put("email", admin.getEmail());
        sessionattr.put("loggedIn", true);

        mockMvc.perform(get("/")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        mockMvc.perform(get("/customer/cuscreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Kita";
        String telephone2 = "08645678";
        String address = "Jl.Kita No.1";

        Customer customer = new Customer();

        customer.setName(name);
        customer.setTelephone1("");
        customer.setTelephone2(telephone2);
        customer.setAddress(address);
        
        mockMvc.perform(post("/customer/cusstore")
                .sessionAttrs(sessionattr)
                .flashAttr("customer", customer))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/customer/cuscreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                        .flash()
                        .attribute("danger", "Telephone1 cannot be null!")
                );
    }
    
    @Test
    public void testCuscreateCustomerWithoutAddress() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Kita");
        admin.setEmail(email);
        admin.setPassword(password);

        mockMvc.perform(post("/register")
                .flashAttr("admin", admin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/login"));

        Admin adminLogin = new Admin();
        adminLogin.setEmail(email);
        adminLogin.setPassword(password);

        mockMvc.perform(post("/login")
                .flashAttr("admin", adminLogin))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/"));

        HashMap<String, Object> sessionattr = new HashMap<String, Object>();

        sessionattr.put("id", admin.getId());
        sessionattr.put("name", admin.getName());
        sessionattr.put("email", admin.getEmail());
        sessionattr.put("loggedIn", true);

        mockMvc.perform(get("/")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        mockMvc.perform(get("/customer/cuscreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Kita";
        String telephone1 = "0812345678";
        String telephone2 = "08645678";

        Customer customer = new Customer();

        customer.setName(name);
        customer.setTelephone1(telephone1);
        customer.setTelephone2(telephone2);
        customer.setAddress("");
        
        mockMvc.perform(post("/customer/cusstore")
                .sessionAttrs(sessionattr)
                .flashAttr("customer", customer))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/customer/cuscreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                        .flash()
                        .attribute("danger", "Address cannot be null!")
                );
    }
}
