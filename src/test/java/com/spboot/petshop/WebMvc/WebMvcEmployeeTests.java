/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.WebMvc;

import com.spboot.petshop.models.Admin;
import com.spboot.petshop.models.Divisi;
import com.spboot.petshop.models.Employee;
import com.spboot.petshop.models.Gender;
import java.util.HashMap;
import net.bytebuddy.utility.RandomString;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
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
public class WebMvcEmployeeTests {
    @Autowired
    private MockMvc mockMvc;
    
    @Test
    public void testShowDashboard() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Tebak");
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
    public void testEmpcreateEmployee() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Tebak");
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

        mockMvc.perform(get("/employee/empcreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Tebak ya";
        String telephone = "02158754";
        String address = "Jl. Kita No.1";

        Divisi div = new Divisi();
        div.setId(3);

        Gender gen = new Gender();
        gen.setId(1);

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDivisi(div);
        employee.setGender(gen);
        employee.setTelephone(telephone);
        employee.setAddress(address);
        employee.setAdmin(admin);

        mockMvc.perform(post("/employee/empstore")
                .sessionAttrs(sessionattr)
                .flashAttr("employee", employee))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/employee"))
                .andDo(print());
    }
    
    @Test
    public void testEmpcreateEmployeeWithoutName() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Tebak");
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

        mockMvc.perform(get("/employee/empcreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String telephone = "02158754";
        String address = "Jl.Kita No.1";
        
        Divisi div =  new Divisi();
        div.setId(3);
        
        Gender gen =  new Gender();
        gen.setId(1);

        Employee employee = new Employee();
        employee.setName("");
        employee.setDivisi(div);
        employee.setGender(gen);
        employee.setTelephone(telephone);
        employee.setAddress(address);

        mockMvc.perform(post("/employee/empstore")
                .sessionAttrs(sessionattr)
                .flashAttr("employee", employee))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/employee/empcreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                        .flash()
                        .attribute("danger", "Name cannot be null!")
                );
    }
    
    @Test
    public void testEmpcreateEmployeeWithoutTelephone() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Tebak");
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

        mockMvc.perform(get("/employee/empcreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Tebak ya";
        String address = "Jl.Kita No.1";
        
        Divisi div =  new Divisi();
        div.setId(3);
        
        Gender gen =  new Gender();
        gen.setId(1);

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDivisi(div);
        employee.setGender(gen);
        employee.setTelephone("");
        employee.setAddress(address);
        
        mockMvc.perform(post("/employee/empstore")
                .sessionAttrs(sessionattr)
                .flashAttr("employee", employee))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/employee/empcreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                        .flash()
                        .attribute("danger", "Telephone cannot be null!")
                );

    }
    
    @Test
    public void testEmpcreateEmployeeWithoutAddress() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Tebak");
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

        mockMvc.perform(get("/employee/empcreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Tebak ya";
        String telephone = "02158754";
        
        Divisi div =  new Divisi();
        div.setId(3);
        
        Gender gen =  new Gender();
        gen.setId(1);

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDivisi(div);
        employee.setGender(gen);
        employee.setTelephone(telephone);
        employee.setAddress("");
        
        mockMvc.perform(post("/employee/empstore")
                .sessionAttrs(sessionattr)
                .flashAttr("employee", employee))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/employee/empcreate"))
                .andDo(print())
                .andExpect(
                        MockMvcResultMatchers
                        .flash()
                        .attribute("danger", "Address cannot be null!")
                );

    }
}
