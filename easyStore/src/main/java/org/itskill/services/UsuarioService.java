/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itskill.services;

import java.util.HashMap;
import java.util.Map;

import org.itskill.bean.UsuarioBean;
import org.itskill.exception.InvalidUserException;
import org.itskill.exception.LockedUserException;
import org.itskill.mapper.UsuarioMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

 
@Component
public class UsuarioService {

    @Autowired
    private UsuarioMapper usuarioMapper;

    public UsuarioBean findUsuarioByName(String name) {
        return usuarioMapper.findByName(name);
    }
}