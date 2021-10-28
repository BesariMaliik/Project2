/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.WebMvc;

import com.spboot.petshop.models.Admin;
import com.spboot.petshop.models.Product;
import com.spboot.petshop.models.Supplier;
import com.spboot.petshop.repositories.ProductRepository;
import com.spboot.petshop.services.ProductService;
import java.sql.Types;
import java.util.HashMap;
import net.bytebuddy.utility.RandomString;
import static oracle.jrockit.jfr.events.Bits.intValue;
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
public class WebMvcProductTests {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testShowDashboard() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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
    public void testProcreateProduct() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "Bagaimana ya";
        Integer stock = 10;
        Integer price = 25000;
        String description = "makanan kucing";
        String expired = "2022-10-25";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName(name);
        product.setStock(stock);
        product.setPrice(price);
        product.setDescription(description);
        product.setExpired(expired);
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product"))
                .andDo(print());
    }

    @Test
    public void testProcreateProductWithoutName() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        Integer stock = null;
        Integer price = null;
        String description = "";
        String expired = "";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName("");
        product.setStock(stock);
        product.setPrice(price);
        product.setDescription(description);
        product.setExpired(expired);
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product/procreate"))
                .andDo(print());
    }

    @Test
    public void testProcreateProductWithoutStock() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "";
        Integer price = null;
        String description = "";
        String expired = "";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName(name);
        product.setStock(null);
        product.setPrice(price);
        product.setDescription(description);
        product.setExpired(expired);
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product/procreate"))
                .andDo(print());
    }

    @Test
    public void testProcreateProductWithoutPrice() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "";
        Integer stock = null;
        String description = "";
        String expired = "";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName(name);
        product.setStock(stock);
        product.setPrice(null);
        product.setDescription(description);
        product.setExpired(expired);
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product/procreate"))
                .andDo(print());
    }

    @Test
    public void testProcreateProductWithoutDescription() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "";
        Integer stock = null;
        Integer price = null;
        String expired = "";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName(name);
        product.setStock(stock);
        product.setPrice(price);
        product.setDescription("");
        product.setExpired(expired);
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product/procreate"))
                .andDo(print());
    }
    
    @Test
    public void testProcreateProductWithoutExpired() throws Exception {

        String email = RandomString.make(20).toLowerCase() + "@gmail.com";
        String password = RandomString.make(20).toLowerCase();

        Admin admin = new Admin();
        admin.setName("Bagaimana");
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

        mockMvc.perform(get("/product/procreate")
                .sessionAttrs(sessionattr))
                .andExpect(status().isOk());

        String name = "";
        Integer stock = null;
        Integer price = null;
        String description = "";

        Supplier sup = new Supplier();
        sup.setId(3);

        Product product = new Product();
        product.setName(name);
        product.setStock(stock);
        product.setPrice(price);
        product.setDescription(description);
        product.setExpired("");
        product.setSupplier(sup);
        product.setAdmin(admin);

        mockMvc.perform(post("/product/prostore")
                .sessionAttrs(sessionattr)
                .flashAttr("product", product))
                .andExpect(status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/product/procreate"))
                .andDo(print());
    }

}
