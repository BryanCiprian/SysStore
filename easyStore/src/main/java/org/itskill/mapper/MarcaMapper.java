package org.itskill.mapper;

import java.util.List;
 
import org.itskill.bean.MarcaBean; 
import org.springframework.stereotype.Component;

/**
 *
 * @author Administrador
 */
@Component
public interface MarcaMapper {
 
    public Integer  save(MarcaBean marca);
    public List<MarcaBean> listarAll();
}
