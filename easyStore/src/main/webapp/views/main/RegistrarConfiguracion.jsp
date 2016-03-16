<div class="row">
	<article class="col-sm-12">
		<!-- Widget ID (each widget will need unique ID)-->
		<div class="jarviswidget jarviswidget-color-darken" id="wid-id-0"
			data-widget-editbutton="false" data-widget-deletebutton="false">
			<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
			<header>
				<span class="widget-icon"> <i class="fa fa-check"></i>
				</span>
				<h2>Configuracion Inicial del Sistema</h2>

			</header>

			<!-- widget div-->
			<div>

				<!-- widget edit box -->
				<div class="jarviswidget-editbox">
					<!-- This area used as dropdown edit box -->

				</div>
				<!-- end widget edit box -->

				<!-- widget content -->
				<div class="widget-body">

					<div class="row">
						<form id="wizard-1" novalidate="novalidate">
							<div id="bootstrap-wizard-1" class="col-sm-12">
								<div class="form-bootstrapWizard">
									<ul class="bootstrapWizard form-wizard">
										<li class="active" data-target="#step1"><a href="#tab1"
											data-toggle="tab"> <span class="step">1</span> <span
												class="title">Empresa</span>
										</a></li>
										<li data-target="#step2"><a href="#tab2"
											data-toggle="tab"> <span class="step">2</span> <span
												class="title">Moneda</span>
										</a></li>
										<li data-target="#step3"><a href="#tab3"
											data-toggle="tab"> <span class="step">3</span> <span
												class="title">Layout</span>
										</a></li>
										<li data-target="#step4"><a href="#tab4"
											data-toggle="tab"> <span class="step">4</span> <span
												class="title">Informacion Adicional</span>
										</a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="tab-content">
									<div class="tab-pane active" id="tab1">
										<br>
										<h3>
											<strong>Paso 1 </strong> - Datos de la Empresa
										</h3>



										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-user fa-lg fa-fw"></i></span> <input
															class="form-control input-group-sm"
															placeholder="Nombre Empresa" type="text" name="eName"
															id="fname">

													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-briefcase fa-lg fa-fw"></i></span> <input
															class="form-control input-group-sm"
															placeholder="Numero de ruc" type="text" name="nRuc"
															id="lname">

													</div>
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-building fa-lg fa-fw"></i></span> <input
															class="form-control input-group-sm"
															placeholder="Direccion de la empresa" type="text"
															name="dEmpresa" id="email">

													</div>
												</div>

											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-building fa-lg fa-fw"></i></span> <select
															class="form-control input-group-sm" name="tEmpresa">
															<option value="" selected="selected">Tipo de
																Empresa</option>
															<option>Tipo 1</option>
															<option>Tipo 2</option>
															<option>Tipo 3</option>
														</select>
													</div>
												</div>

											</div>

										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="col-md-2 control-label">Subir Logo</label>
													<div class="col-md-10">
														<input type="file" class="btn btn-default"
															id="exampleInputFile1">
														<p class="help-block">de prefferencia en formato png.
														</p>
													</div>
												</div>
											</div>

										</div>

									</div>
									<div class="tab-pane" id="tab2">
										<br>
										<h3>
											<strong>Paso 2</strong> - Configuracion Moneda
										</h3>

										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-flag fa-lg fa-fw"></i></span> <select
															name="esMoneda" class="form-control input-group-sm">
															<option value="" selected="selected">[Tipo de
																Cambio]</option>
															<option value="1">Habilitado</option>
															<option value="2">Deshabilitar</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="tMoneda" class="form-control input-group-sm">
															<option value="" selected="selected">[Tipo de
																Moneda]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="tab3">
										<br>
										<h3>
											<strong>Paso 3</strong> - Layout
										</h3>
										<div class="alert alert-info fade in">
											<button class="close" data-dismiss="alert">×</button>
											<i class="fa-fw fa fa-info"></i> <strong>Info!</strong> usted
											puede ver un vista previa de todos los cambios.
										</div>
										<div class="row">
											<div class="col-sm-3">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-flag fa-lg fa-fw"></i></span> <select
															name="tNavegacion" class="form-control input-group-sm">
															<option value="" selected="selected">[Tipo de
																Navegacion]</option>
															<option value="1">Habilitado</option>
															<option value="2">Deshabilitar</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="tDiseno" class="form-control input-group-sm">
															<option value="" selected="selected">[Tipo de
																Diseño]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="cBase" class="form-control input-group-sm">
															<option value="" selected="selected">[Color
																Base]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="cBase" class="form-control input-group-sm">
															<option value="" selected="selected">[Color 
																Alterno]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-flag fa-lg fa-fw"></i></span> <select
															name="tNavegacion" class="form-control input-group-sm">
															<option value="" selected="selected">[Posicion
																Cabecera]</option>
															<option value="1">Habilitado</option>
															<option value="2">Deshabilitar</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-flag fa-lg fa-fw"></i></span> <select
															name="tNavegacion" class="form-control input-group-sm">
															<option value="" selected="selected">[Posicion
																de Privilegios]</option>
															<option value="1">Habilitado</option>
															<option value="2">Deshabilitar</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-flag fa-lg fa-fw"></i></span> <select
															name="tNavegacion" class="form-control input-group-sm">
															<option value="" selected="selected">[Posicion
																de Pie]</option>
															<option value="1">Habilitado</option>
															<option value="2">Deshabilitar</option>
														</select>
													</div>
												</div>
											</div>
										</div>

									</div>
									<div class="tab-pane" id="tab4">
										<br>
										<h3>
											<strong>Paso 4</strong> - Informacion Adicional
										</h3>
										<br>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="cBase" class="form-control input-group-sm">
															<option value="" selected="selected">[Tipo de
																Impresora]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="cBase" class="form-control input-group-sm">
															<option value="" selected="selected">[Idioma]</option>
															<option value="1">Soles</option>
															<option value="2">Dolares</option>
															<option value="3">Peso</option>
															<option value="4">Euro</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="fa fa-map-marker fa-lg fa-fw"></i></span> <select
															name="cBase" class="form-control input-group-sm">
															<option value="" selected="selected">[Activar Comando de Voz]</option>
															<option value="1">Si</option>
															<option value="2">No</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-actions">
										<div class="row">
											<div class="col-sm-12">
												<ul class="pager wizard no-margin">
													<!--<li class="previous first disabled">
																		<a href="javascript:void(0);" class="btn btn-lg btn-default"> First </a>
																		</li>-->
													<li class="previous disabled"><a
														href="javascript:void(0);" class="btn btn-lg btn-default">
															Previous </a></li>
													<!--<li class="next last">
																		<a href="javascript:void(0);" class="btn btn-lg btn-primary"> Last </a>
																		</li>-->
													<li class="next"><a href="javascript:void(0);"
														class="btn btn-lg txt-color-darken"> Next </a></li>
												</ul>
											</div>
										</div>
									</div>

								</div>
							</div>
						</form>
					</div>

				</div>
				<!-- end widget content -->

			</div>
			<!-- end widget div -->

		</div>
		<!-- end widget -->


	</article>
</div>


<div class="col-md-6">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 style="text-align: center;">REGISTRO DE CONFIGURACION</h5>
		</div>

		<form class="form-config">
			<div class="form-group2">
				<input class="form-control" id="txtNomEmpresa" name="txtNomEmpresa"
					maxlength="30" type="text"
					placeholder="Ingrese Nombre de la empresa" required="required">
			</div>
			<div class="form-group2">
				<input class="form-control" id="txtRucEmpresa" name="txtRucEmpresa"
					maxlength="30" type="text" placeholder="Ingrese RUC de la empresa"
					required="required">
			</div>
			<div class="form-group2">
				<input class="form-control" id="txtDirEmpresa" name="txtDirEmpresa"
					maxlength="30" type="text"
					placeholder="Ingrese Direccion de la empresa" required="required">
			</div>
			<div class="form-group2">
				<input class="form-control" id="txtUrlEmpresa" required="required"
					name="txtUrlEmpresa" maxlength="30" type="text"
					placeholder="Ingrese la ruta de su logo">
			</div>
			<div class="form-group2">
				<select name="txtPosEmpresa" class="txtPosEmpresa"
					required="required">
					<option value="">[Seleccione]</option>
					<option value="minified">Navigation Minified</option>
					<option value="hidden-menu">Hidden Navigation</option>
					<option value="top-navigation container">Menu on Top with
						center content</option>
					<option value="minified container">Center content with
						minified nav</option>
					<option value="smart-rtl">RTL Layout</option>
					<option value="smart-rtl top-navigation menu-on-top">RTL
						with Menu on Top</option>
				</select>

			</div>
			<div class="form-group2">
				<input class="form-control" id="txtFootEmpresa"
					name="txtFootEmpresa" maxlength="30" type="text"
					placeholder="Ingrese el pie de página" required="required">
			</div>
			<div class="form-group2">
				<input class="form-control" id="txtUsuEmpresa" name="txtUsuEmpresa"
					maxlength="30" type="text" placeholder="Ingrese usuario"
					required="required">
			</div>
		</form>


		<DIV style="text-align: center;">

			<button class="btn btn-primary" type="button" id="btnEnviar"
				name="btnIngresar">
				<span class="glyphicon glyphicon-ok"></span> Ingresar
			</button>


			<p>
				<br>
			</p>
		</DIV>
	</div>

</div>


<script type="text/javascript">
	/* DO NOT REMOVE : GLOBAL FUNCTIONS!
	 *
	 * pageSetUp(); WILL CALL THE FOLLOWING FUNCTIONS
	 *
	 * // activate tooltips
	 * $("[rel=tooltip]").tooltip();
	 *
	 * // activate popovers
	 * $("[rel=popover]").popover();
	 *
	 * // activate popovers with hover states
	 * $("[rel=popover-hover]").popover({ trigger: "hover" });
	 *
	 * // activate inline charts
	 * runAllCharts();
	 *
	 * // setup widgets
	 * setup_widgets_desktop();
	 *
	 * // run form elements
	 * runAllForms();
	 *
	 ********************************
	 *
	 * pageSetUp() is needed whenever you load a page.
	 * It initializes and checks for all basic elements of the page
	 * and makes rendering easier.
	 *
	 */

	pageSetUp();

	// PAGE RELATED SCRIPTS

	// pagefunction

	var pagefunction = function() {

		// load bootstrap wizard
		$("#btnEnviar")
				.click(
						function() {
							if ($(".form-config").valid()) {
								$
										.ajax({
											url : "../mainConfig/crud.htm",
											type : "POST",
											data : $(".form-config")
													.serialize(),
											success : function(data) {

												$
														.smallBox({
															title : "Notificacion",
															content : "<i class='fa fa-clock-o'></i> <i>Se ha registrado correctamente la configuracion...</i>",
															color : "#296191",
															iconSmall : "fa fa-thumbs-up bounce animated",
															timeout : 4000
														});

											}
										});
							}
						});

		$(".txtPosEmpresa").change(function() {
			$("#body-main").removeClass();
			$("#body-main").addClass($(this).val());
		});

		loadScript(
				"../js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js",
				runBootstrapWizard);

		//Bootstrap Wizard Validations

		function runBootstrapWizard() {

			var $validator = $("#wizard-1")
					.validate(
							{

								rules : {
									email : {
										required : true,
										email : "Your email address must be in the format of name@domain.com"
									},
									fname : {
										required : true
									},
									lname : {
										required : true
									},
									country : {
										required : true
									},
									city : {
										required : true
									},
									postal : {
										required : true,
										minlength : 4
									},
									wphone : {
										required : true,
										minlength : 10
									},
									hphone : {
										required : true,
										minlength : 10
									}
								},

								messages : {
									fname : "Please specify your First name",
									lname : "Please specify your Last name",
									email : {
										required : "We need your email address to contact you",
										email : "Your email address must be in the format of name@domain.com"
									}
								},

								highlight : function(element) {
									$(element).closest('.form-group')
											.removeClass('has-success')
											.addClass('has-error');
								},
								unhighlight : function(element) {
									$(element).closest('.form-group')
											.removeClass('has-error').addClass(
													'has-success');
								},
								errorElement : 'span',
								errorClass : 'help-block',
								errorPlacement : function(error, element) {
									if (element.parent('.input-group').length) {
										error.insertAfter(element.parent());
									} else {
										error.insertAfter(element);
									}
								}
							});

			$('#bootstrap-wizard-1').bootstrapWizard(
					{

						'tabClass' : 'form-wizard',
						'onNext' : function(tab, navigation, index) {
							var $valid = $("#wizard-1").valid();
							if (!$valid) {
								$validator.focusInvalid();
								return false;
							} else {
								$('#bootstrap-wizard-1').find('.form-wizard')
										.children('li').eq(index - 1).addClass(
												'complete');
								$('#bootstrap-wizard-1').find('.form-wizard')
										.children('li').eq(index - 1).find(
												'.step').html(
												'<i class="fa fa-check"></i>');
							}
						}
					});

		}
		;

		// load fuelux wizard

		loadScript("../js/plugin/fuelux/wizard/wizard.min.js", fueluxWizard);

		function fueluxWizard() {

			var wizard = $('.wizard').wizard();

			wizard
					.on(
							'finished',
							function(e, data) {
								//$("#fuelux-wizard").submit();
								//console.log("submitted!");
								$
										.smallBox({
											title : "Congratulations! Your form was submitted",
											content : "<i class='fa fa-clock-o'></i><i>1 seconds ago...</i>",
											color : "#5F895F",
											iconSmall : "fa fa-check bounce animated",
											timeout : 4000
										});

							});

		}
		;

	};

	// end pagefunction

	// Load bootstrap wizard dependency then run pagefunction
	pagefunction();
</script>

