/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.WebMvc;

import com.spboot.petshop.models.Admin;
import com.spboot.petshop.models.Customer;
import com.spboot.petshop.models.Product;
import com.spboot.petshop.models.Transaction;
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
public class WebMvcTransactionTests {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testShowDashboard() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Dimana");
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
    public void testTracreateTransaction() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Dimana");
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

        mockMvc.perform(get("/transaction/tracreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        Product pro = new Product();
        pro.setId(1);
        
        Integer quantity = 2;
        
        Customer cus = new Customer();
        cus.setId(7);

        Transaction transaction = new Transaction();
        transaction.setProduct(pro);
        transaction.setQuantity(quantity);
        transaction.setCustomer(cus);
        transaction.setAdmin(admin);
        
        
        mockMvc.perform(post("/transaction/trastore")
                .sessionAttrs(sessionattr)
                .flashAttr("transaction", transaction))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/transaction"))
                .andDo(print());
    }
}
