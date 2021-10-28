/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop;

import com.spboot.petshop.models.Admin;
import com.spboot.petshop.repositories.AdminRepository;
import com.spboot.petshop.services.AdminService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.when;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

/**
 *
 * @author BesariMaliik, Sofia
 */
@SpringBootTest
public class AdminIntegrationTests {

    @Autowired
    AdminService adminService;

    @MockBean
    AdminRepository adminRepository;

    @Test
    public void createAdminTest() throws Exception {

        Admin admin = new Admin();

        admin.setName("Test");
        admin.setEmail("test@gmail.com");
        admin.setPassword("test-strong-password");

        when(adminRepository.save(admin)).thenReturn(admin);
        adminService.register(admin);

        when(adminRepository.findByEmail("test@gmail.com")).thenReturn(admin);

        Admin checkAdmin = this.adminRepository.findByEmail("test@gmail.com");

        Assertions.assertEquals(admin, checkAdmin);

    }

    @Test
    public void createAdminTestWithEmptyName() throws Exception {
        try {
            Admin admin = new Admin();

            admin.setName("");
            admin.setEmail("test@gmail.com");
            admin.setPassword("test-strong-password");

            when(adminRepository.save(admin))
                    .thenThrow(new IllegalArgumentException("name cannot be null!"));

            adminService.register(admin);
        } catch (Exception e) {
            Assertions.assertTrue(e instanceof Exception);
            Assertions.assertEquals("name cannot be null!", e.getMessage());
        }
    }

    @Test
    public void createAdminTestWithEmptyEmail() throws Exception {
        try {
            Admin admin = new Admin();

            admin.setName("Test");
            admin.setEmail("");
            admin.setPassword("test-strong-password");

            when(adminRepository.save(admin))
                    .thenThrow(new IllegalArgumentException("email cannot be null!"));

            adminService.register(admin);
        } catch (Exception e) {
            Assertions.assertTrue(e instanceof Exception);
            Assertions.assertEquals("email cannot be null!", e.getMessage());
        }
    }

    @Test
    public void createAdminTestWithEmptyPassword() throws Exception {
        try {
            Admin admin = new Admin();

            admin.setName("Test");
            admin.setEmail("test@gmail.com");
            admin.setPassword("");

            when(adminRepository.save(admin))
                    .thenThrow(new IllegalArgumentException("password cannot be null!"));

            adminService.register(admin);
        } catch (Exception e) {
            Assertions.assertTrue(e instanceof Exception);
            Assertions.assertEquals("password cannot be null!", e.getMessage());
        }
    }

    @Test
    public void authTest() throws Exception {

        Admin admin = new Admin();

        admin.setName("Test");
        admin.setEmail("test@gmail.com");
        admin.setPassword("test-strong-password");

        when(adminRepository.save(admin)).thenReturn(admin);
        adminService.register(admin);

        when(adminRepository.findByEmail("test@gmail.com")).thenReturn(admin);

        Admin checkAdmin = adminService.auth("test@gmail.com", "test-strong-password");

        Assertions.assertEquals(admin, checkAdmin);
    }

    @Test
    public void authTestWrongEmail() throws Exception {

        Admin admin = new Admin();

        admin.setName("Test");
        admin.setEmail("test@gmail.com");
        admin.setPassword("test-strong-password");

        when(adminRepository.save(admin)).thenReturn(admin);
        adminService.register(admin);

        when(adminRepository.findByEmail("test@gmail.com")).thenReturn(admin);

        Admin checkAdmin = adminService.auth("test1@gmail.com", "test-strong-password");

        Assertions.assertEquals(null, checkAdmin);
    }

    @Test
    public void authTestWrongPassword() throws Exception {

        Admin admin = new Admin();

        admin.setName("Test");
        admin.setEmail("test@gmail.com");
        admin.setPassword("test-strong-password");

        when(adminRepository.save(admin)).thenReturn(admin);
        adminService.register(admin);

        when(adminRepository.findByEmail("test@gmail.com")).thenReturn(admin);

        Admin checkAdmin = adminService.auth("test@gmail.com", "test-strong-password1");

        Assertions.assertEquals(null, checkAdmin);
    }

    @Test
    public void authTestWrongEmailAndPassword() throws Exception {

        Admin admin = new Admin();

        admin.setName("Test");
        admin.setEmail("test@gmail.com");
        admin.setPassword("test-strong-password");

        when(adminRepository.save(admin)).thenReturn(admin);
        adminService.register(admin);

        when(adminRepository.findByEmail("test@gmail.com")).thenReturn(admin);

        Admin checkAdmin = adminService.auth("test1@gmail.com", "test-strong-password1");

        Assertions.assertEquals(null, checkAdmin);
    }
}
