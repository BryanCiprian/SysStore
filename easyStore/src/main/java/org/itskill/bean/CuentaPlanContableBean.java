package org.itskill.bean;

public class CuentaPlanContableBean {
	private Integer idCuenta;
	private String desCuenta;
	private GrupoPlanContableBean grupo;
	private UsuarioBean usuarioBean;
	 private Integer id_estado;
	 
	public CuentaPlanContableBean(){
		usuarioBean = new UsuarioBean();
		grupo   = new GrupoPlanContableBean();
	}

	public Integer getIdCuenta() {
		return idCuenta;
	}

	public void setIdCuenta(Integer idCuenta) {
		this.idCuenta = idCuenta;
	}

	public String getDesCuenta() {
		return desCuenta;
	}

	public void setDesCuenta(String desCuenta) {
		this.desCuenta = desCuenta;
	}

	public GrupoPlanContableBean getGrupo() {
		return grupo;
	}

	public void setGrupo(GrupoPlanContableBean grupo) {
		this.grupo = grupo;
	}

	public UsuarioBean getUsuarioBean() {
		return usuarioBean;
	}

	public void setUsuarioBean(UsuarioBean usuarioBean) {
		this.usuarioBean = usuarioBean;
	}

	public Integer getId_estado() {
		return id_estado;
	}

	public void setId_estado(Integer id_estado) {
		this.id_estado = id_estado;
	}
	
}
