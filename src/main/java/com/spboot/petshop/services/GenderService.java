/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.petshop.services;

import com.spboot.petshop.interfaces.GenderInterface;
import com.spboot.petshop.models.Gender;
import com.spboot.petshop.repositories.GenderRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author BesariMaliik, Sofia
 */
@Service
public class GenderService implements GenderInterface {

    @Autowired
    private GenderRepository genderRepository;

    @Override
    public List<Gender> getAll() {
        return genderRepository.findAll();
    }
}
