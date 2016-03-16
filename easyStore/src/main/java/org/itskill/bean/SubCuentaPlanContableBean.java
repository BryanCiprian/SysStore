package org.itskill.bean;

public class SubCuentaPlanContableBean {
	private Integer idSubCuenta;
	private String desSubCuenta;
	private CuentaPlanContableBean cuenta;
	
	public SubCuentaPlanContableBean(){
		
	}

 

	public Integer getIdSubCuenta() {
		return idSubCuenta;
	}



	public void setIdSubCuenta(Integer idSubCuenta) {
		this.idSubCuenta = idSubCuenta;
	}



	public String getDesSubCuenta() {
		return desSubCuenta;
	}

	public void setDesSubCuenta(String desSubCuenta) {
		this.desSubCuenta = desSubCuenta;
	}

	public CuentaPlanContableBean getCuenta() {
		return cuenta;
	}

	public void setCuenta(CuentaPlanContableBean cuenta) {
		this.cuenta = cuenta;
	}
	
}
