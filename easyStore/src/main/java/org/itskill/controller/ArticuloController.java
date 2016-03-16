package org.itskill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.itskill.bean.ArticuloBean;
import org.itskill.bean.UsuarioBean;
import org.itskill.services.ArticuloService;
import org.itskill.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import java.util.Map;
import java.util.HashMap;

@Controller
public class ArticuloController {

	@Autowired
	private ArticuloService articuloService;
	Gson gson = new Gson();
	Map<String, Object> rpta = new HashMap<String, Object>();

	@RequestMapping(value = "admin/artic.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView inicioPageArticulo(ModelMap modelMap, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("Entro a inicio Pagina inicioPageArticulo ");
		UsuarioBean usuarioBean = new UsuarioBean();
		request.getSession().setAttribute("usuarioBean", usuarioBean);
		ModelAndView modelAndView = new ModelAndView("crudArticulo", modelMap);
		return modelAndView;
	}

	@RequestMapping(value = "articulo/regArt.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView guardarArticulo(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Entro a registrar Articulo ");
		ModelAndView modelAndView = new ModelAndView("crudArticulo", modelMap);
		ArticuloBean articulo = new ArticuloBean();
		UsuarioBean usuarioBean = new UsuarioBean();
		HttpSession sesion = request.getSession(true);
		try {
			String codigo = request.getParameter("codigoArticulo");
			System.out.println("CODIGO: " + codigo);
			articulo.setCodArt(codigo);
			System.out.println("CODIGO: " + articulo.getCodArt());

			String clasificacion = request.getParameter("clasificacion");
			System.out.println("CLASIFICACION: " + clasificacion);
			articulo.setIdClasificacion(Util.validarEntero(Integer.parseInt(clasificacion)));
			System.out.println("CLASIFICACION: " + articulo.getIdClasificacion());

			String uniMedida = request.getParameter("unidadMedida");
			System.out.println("UNIDAD MEDIDA: " + uniMedida);
			articulo.setIdUniMedArt(Util.validarEntero(Integer.parseInt(uniMedida)));
			System.out.println("UNIDAD MEDIDA: " + articulo.getIdUniMedArt());

			String descripcion = request.getParameter("nombreArticulo");
			System.out.println("DESCRIPCION: " + descripcion);
			articulo.setDesArt(descripcion);
			System.out.println("DESCRIPCION: " + articulo.getDesArt());

			String caracteristica = request.getParameter("descripcion");
			System.out.println("DESCRIPCION: " + caracteristica);
			articulo.setCarArt(Util.validarString(caracteristica));
			System.out.println("CARACTERISTICAS: " + articulo.getCarArt());

			String dise = request.getParameter("diseno");
			System.out.println("DISEÑO: " + dise);
			articulo.setDisArt(Util.validarString(dise));
			System.out.println("DISEÑO: " + articulo.getDisArt());

			String modelo = request.getParameter("modelo");
			System.out.println("MODELO: " + modelo);
			articulo.setModArt(Util.validarString(modelo));
			System.out.println("MODELO: " + articulo.getModArt());

			String marca = request.getParameter("marca");
			System.out.println("MARCA: " + marca);
			articulo.getMarcaBean().setId_marca(Util.validarEntero(Integer.parseInt(marca)));
			System.out.println("MARCA: " + articulo.getMarcaBean().getId_marca());

			String clase = request.getParameter("cboClase");
			System.out.println("CLASE: " + clase);
			/*
			 * articulo.getClaseBean().setIdClase(Util.validarEntero(Integer.
			 * parseInt(clase))); System.out.println("CLASE: " +
			 * articulo.getClaseBean().getIdClase());
			 */
			String grupo = request.getParameter("cboGrupo");
			System.out.println("GRUPO: " + grupo);
			/*
			 * articulo.getGrupoBean().setIdGrupo(Util.validarEntero(Integer.
			 * parseInt(grupo))); System.out.println("GRUPO: " +
			 * articulo.getGrupoBean().getIdGrupo());
			 */
			String procedencia = request.getParameter("procedencia");
			System.out.println("PROCEDENCIA: " + procedencia);
			articulo.getProcedenciaBean().setId_proc(Util.validarEntero(Integer.parseInt(procedencia)));
			System.out.println("PROCEDENCIA: " + articulo.getProcedenciaBean().getId_proc());

			String cuenta = request.getParameter("cboCta");
			System.out.println("CUENTA: " + cuenta);
			/*
			 * articulo.getCtaBean().setIdCuenta(Util.validarEntero(Integer.
			 * parseInt(cuenta))); System.out.println("CUENTA: " +
			 * articulo.getCtaBean().getIdCuenta());
			 */
			String subCta = request.getParameter("cboSubCta");
			System.out.println("SUB CUENTA: " + subCta);
			/*
			 * articulo.getSubCtaBean().setIdSubCuenta(Util.validarEntero(
			 * Integer.parseInt(subCta))); System.out.println("SUB CUENTA: " +
			 * articulo.getSubCtaBean().getIdSubCuenta());
			 */
			String stkMinimo = request.getParameter("stockMin");
			System.out.println("STOCK MINIMO: " + stkMinimo);
			articulo.setStkMinArt(Util.validarDouble(Double.parseDouble(stkMinimo)));
			System.out.println("STOCK MINIMO: " + articulo.getStkMinArt());

			String stkMaxim = request.getParameter("stockMax");
			System.out.println("STOCK MAXIMO: " + stkMaxim);
			articulo.setStkMaxArt(Util.validarDouble(Double.parseDouble(stkMaxim)));
			System.out.println("STOCK MAXIMO: " + articulo.getStkMaxArt());

			String foto = request.getParameter("txtFoto");
			System.out.println("URL FOTO: " + foto);
			/*
			 * articulo.setUrlFotoArt(Util.validarString(foto));
			 * System.out.println("URL FOTO: " + articulo.getUrlFotoArt());
			 */
			System.out.println("USUARIO: " + (String) sesion.getAttribute("usuario"));
			articulo.getUsuarioBean().setVar_usuario((String) sesion.getAttribute("usuario"));
			System.out.println("USUARIO: " + articulo.getUsuarioBean().getVar_usuario());

			Integer resArticulo = articuloService.save(articulo);
			System.out.println("Articulo registrado: " + resArticulo);
		} catch (Exception e) {
			System.out.println("1ER - ERROR " + e.getStackTrace());
			System.out.println("2DO - ERROR " + e.getMessage());
			return modelAndView;
		}
		request.getSession().setAttribute("usuarioBean", usuarioBean);
		return modelAndView;
	}

	@RequestMapping(value = "articulo/delArticulo.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String eliminarArticulo(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("idArticulo");
		articuloService.deleteArticulo(id);
		rpta.put("rpta", true);
		return gson.toJson(rpta);
	}

	@RequestMapping(value = "articulo/listArticulo.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String listarArticulo(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		rpta.put("rpta", true);
		rpta.put("lista", articuloService.listarArticulo());

		return gson.toJson(rpta);
	}

}
