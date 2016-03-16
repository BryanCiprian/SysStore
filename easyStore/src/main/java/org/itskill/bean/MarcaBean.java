package org.itskill.bean;

public class MarcaBean {
	
private Integer id_marca;
private String desc_marca;
private Integer id_estado;
private UsuarioBean usuarioBean;


	public MarcaBean(){
		usuarioBean = new UsuarioBean();	
	}

	 

	public Integer getId_marca() {
		return id_marca;
	}



	public void setId_marca(Integer id_marca) {
		this.id_marca = id_marca;
	}



	public String getDesc_marca() {
		return desc_marca;
	}



	public void setDesc_marca(String desc_marca) {
		this.desc_marca = desc_marca;
	}



	public Integer getId_estado() {
		return id_estado;
	}



	public void setId_estado(Integer id_estado) {
		this.id_estado = id_estado;
	}



	public UsuarioBean getUsuarioBean() {
		return usuarioBean;
	}

	public void setUsuarioBean(UsuarioBean usuarioBean) {
		this.usuarioBean = usuarioBean;
	}
	
}
