package org.itskill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.itskill.bean.ArticuloBean;
import org.springframework.stereotype.Component;

/**
 *
 * @author Administrador
 */
@Component
public interface ArticuloMapper {

	public Integer save(ArticuloBean articulo);

	public void deleteArticulo(@Param("id_articulo") String id);
	public List<ArticuloBean> getAll();
}
