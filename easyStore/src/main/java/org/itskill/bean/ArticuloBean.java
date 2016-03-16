package org.itskill.bean;

import java.util.Date;

public class ArticuloBean {
	
	
	
	private Integer idArticulo;    
	private  String codArt;         
	private String  desArt;         
	private String  carArt;         
	private String  disArt;         
	private String  modArt;         
	private Double  stkMinArt;     
	private Double  stkMaxArt;     
	private String  urlFotoArt;    
	private UsuarioBean usuarioBean;
    private MarcaBean marcaBean;   
    private Integer idClasificacion;   
    private Integer idUniMedArt;   
    private InventarioDocumentoBean invDocBean;
    private ProcedenciaBean procedenciaBean;
	private EstadoBean estadoBean;      
	private ClasePlanContableBean claseBean;
	private GrupoPlanContableBean grupoBean;
	private CuentaPlanContableBean ctaBean;
	private SubCuentaPlanContableBean subCtaBean;
	
	public ArticuloBean(){
	/*marcaBean = new MarcaBean();
	procedenciaBean= new ProcedenciaBean();
	claseBean = new ClasePlanContableBean();
	grupoBean = new GrupoPlanContableBean();
	ctaBean   = new CuentaPlanContableBean(); 
	subCtaBean = new SubCuentaPlanContableBean();
	usuarioBean = new UsuarioBean();*/
	}

	public Integer getIdArticulo() {
		return idArticulo;
	}

	public void setIdArticulo(Integer idArticulo) {
		this.idArticulo = idArticulo;
	}

	public String getCodArt() {
		return codArt;
	}

	public void setCodArt(String codArt) {
		this.codArt = codArt;
	}

	public String getDesArt() {
		return desArt;
	}

	public void setDesArt(String desArt) {
		this.desArt = desArt;
	}

	public String getCarArt() {
		return carArt;
	}

	public void setCarArt(String carArt) {
		this.carArt = carArt;
	}

	public String getDisArt() {
		return disArt;
	}

	public void setDisArt(String disArt) {
		this.disArt = disArt;
	}

	public String getModArt() {
		return modArt;
	}

	public void setModArt(String modArt) {
		this.modArt = modArt;
	}

	public Double getStkMinArt() {
		return stkMinArt;
	}

	public void setStkMinArt(Double stkMinArt) {
		this.stkMinArt = stkMinArt;
	}

	public Double getStkMaxArt() {
		return stkMaxArt;
	}

	public void setStkMaxArt(Double stkMaxArt) {
		this.stkMaxArt = stkMaxArt;
	}

	public String getUrlFotoArt() {
		return urlFotoArt;
	}

	public void setUrlFotoArt(String urlFotoArt) {
		this.urlFotoArt = urlFotoArt;
	}

	public UsuarioBean getUsuarioBean() {
		return usuarioBean;
	}

	public void setUsuarioBean(UsuarioBean usuarioBean) {
		this.usuarioBean = usuarioBean;
	}

	public MarcaBean getMarcaBean() {
		return marcaBean;
	}

	public void setMarcaBean(MarcaBean marcaBean) {
		this.marcaBean = marcaBean;
	}

	public Integer getIdClasificacion() {
		return idClasificacion;
	}

	public void setIdClasificacion(Integer idClasificacion) {
		this.idClasificacion = idClasificacion;
	}

	public Integer getIdUniMedArt() {
		return idUniMedArt;
	}

	public void setIdUniMedArt(Integer idUniMedArt) {
		this.idUniMedArt = idUniMedArt;
	}

	public InventarioDocumentoBean getInvDocBean() {
		return invDocBean;
	}

	public void setInvDocBean(InventarioDocumentoBean invDocBean) {
		this.invDocBean = invDocBean;
	}

	public ProcedenciaBean getProcedenciaBean() {
		return procedenciaBean;
	}

	public void setProcedenciaBean(ProcedenciaBean procedenciaBean) {
		this.procedenciaBean = procedenciaBean;
	}

	public EstadoBean getEstadoBean() {
		return estadoBean;
	}

	public void setEstadoBean(EstadoBean estadoBean) {
		this.estadoBean = estadoBean;
	}

	public ClasePlanContableBean getClaseBean() {
		return claseBean;
	}

	public void setClaseBean(ClasePlanContableBean claseBean) {
		this.claseBean = claseBean;
	}

	public GrupoPlanContableBean getGrupoBean() {
		return grupoBean;
	}

	public void setGrupoBean(GrupoPlanContableBean grupoBean) {
		this.grupoBean = grupoBean;
	}

	public CuentaPlanContableBean getCtaBean() {
		return ctaBean;
	}

	public void setCtaBean(CuentaPlanContableBean ctaBean) {
		this.ctaBean = ctaBean;
	}

	public SubCuentaPlanContableBean getSubCtaBean() {
		return subCtaBean;
	}

	public void setSubCtaBean(SubCuentaPlanContableBean subCtaBean) {
		this.subCtaBean = subCtaBean;
	}



}
