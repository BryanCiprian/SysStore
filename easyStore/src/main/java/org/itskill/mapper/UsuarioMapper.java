/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itskill.mapper;

import java.util.Map;
import org.itskill.bean.UsuarioBean;

public interface UsuarioMapper {
    public UsuarioBean validarUsuario(Map<String, Object> usuarioMap);
    public UsuarioBean findByName(String pvar_usu_usuario);
}
