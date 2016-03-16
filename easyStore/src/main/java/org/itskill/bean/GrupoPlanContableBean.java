package org.itskill.bean;

public class GrupoPlanContableBean {
private Integer idGrupo;
private ClasePlanContableBean clase;
private String desGrupo;


public GrupoPlanContableBean(){
	clase =new ClasePlanContableBean();
}


public Integer getIdGrupo() {
	return idGrupo;
}


public void setIdGrupo(Integer idGrupo) {
	this.idGrupo = idGrupo;
}


public ClasePlanContableBean getClase() {
	return clase;
}


public void setClase(ClasePlanContableBean clase) {
	this.clase = clase;
}


public String getDesGrupo() {
	return desGrupo;
}


public void setDesGrupo(String desGrupo) {
	this.desGrupo = desGrupo;
}

}
