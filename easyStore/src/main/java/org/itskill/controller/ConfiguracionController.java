package org.itskill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.itskill.bean.ConfiguracionBean;
import org.itskill.services.ConfiguracionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfiguracionController {

	@Autowired
	private ConfiguracionService configService;

	@RequestMapping(value = "main/config.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView accesConfigMain(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("configMain", modelMap);
		return modelAndView;
	}

	@RequestMapping(value = "mainConfig/crud.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String resultado(HttpServletRequest request) {
		ConfiguracionBean c = new ConfiguracionBean();
		c.setDir_empresa(request.getParameter("txtNomEmpresa"));
		c.setRuc_empresa(request.getParameter("txtRucEmpresa"));
		c.setDir_empresa(request.getParameter("txtDirEmpresa"));
		c.setUrl_logo_empresa(request.getParameter("txtUrlEmpresa"));
		c.setPos_menu(request.getParameter("txtPosEmpresa"));
		c.setFoot_empresa(request.getParameter("txtFootEmpresa"));
		c.setUsuario(request.getParameter("txtUsuEmpresa"));
		Integer id = configService.save(c);
		System.out.println(id + "");
		return id + "";
	}

}
