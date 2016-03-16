

function listar() {
	var b = $(".tbodys");
	b.empty();
	var text_html = "";
	b.append("<tr><td colspan='9'>Cargando...</td></tr>");
	$.post("../articulo/listArticulo.htm",	$(".form_plazo").serialize()+ "&opc=Listar_Plazo",
					function(objJson) {
						b.empty();
						var lista = objJson.lista;
						if (objJson.rpta) {
							alert(objJson.mensaje);
							return;
						}else{
							alert("listaaa")
						}
						/*for (var i = 0; i < lista.length; i++) {
							if (lista[i].estado == '1') {
								text_html += "<tr class='success' >";
							} else if (lista[i].estado == '0') {
								text_html += "<tr class='danger' >";
							}
							text_html += "<td>" + (i + 1) + "</td>";
							if (lista[i].tipo === "1") {
								text_html += "<td class='tipo" + i
										+ "'>Inicio de Contrato</td>";
							} else if (lista[i].tipo === "2") {
								text_html += "<td class='tipo" + i
										+ "'>Ingreso a planilla</td>";
							}
							text_html += "<td class='nombre" + i + "'>"
									+ lista[i].nom + "</td>";
							text_html += "<td class='det" + i + "'>"
									+ lista[i].det + "</td>";
							text_html += "<td class='desde" + i + "'>"
									+ lista[i].desde + "</td>";
							text_html += "<td class='hasta" + i + "'>"
									+ lista[i].hasta + "</td>";
							text_html += "<td class='planilla" + i + "'>"
									+ lista[i].planilla + "</td>";
							text_html += "<td >" + lista[i].req + "</td>";
							text_html += "<td >" + lista[i].dep_tol + "</td>";
							text_html += "<td >" + lista[i].dias + "</td>";
							text_html += "<td >" + lista[i].dep + "</td>";
							text_html += "<td >" + lista[i].area + "</td>";
							if (lista[i].estado == '1') {
								text_html += "<td  >Activo</td>";
							} else if (lista[i].estado == '0') {
								text_html += "<td >No activo</td>";
							}
							text_html += "<input type='hidden' value='"
									+ lista[i].id_req + "'/>";
							text_html += "<td><button class='btn btn-success btn-sm Editar-Plazo' value='"
									+ lista[i].id
									+ "'><i class='fa fa-pencil'></i></button>";
							text_html += "<button class='btn btn-danger btn-sm Eliminar-Plazo' value='"
									+ lista[i].id
									+ "'><i class='fa fa-times'></i></button></td>";
							text_html += "</tr>";
						}*/
						b.append(text_html);
						text_html = "";
						$(".Editar-Plazo")
								.click(
										function() {
											$(".nombre_plazo")
													.val(
															$(
																	".nombre"
																			+ $(
																					this)
																					.val())
																	.text());
											$(".descripcion").val(
													$(".det" + $(this).val())
															.text());
											$(".desde").val(
													$(".desde" + $(this).val())
															.text());
											$(".hasta").val(
													$(".hasta" + $(this).val())
															.text());
											$("#form-plazo")
													.append(
															"<input type='hidden' name='ID' value='"
																	+ $(
																			".id"
																					+ $(
																							this)
																							.val())
																			.text()
																	+ "'  />");
											$("#btn-registrar")
													.val("Modificar");
											$(".opc").val("Modificar");
										});
						$(".Eliminar-Plazo")
								.click(
										function() {
											var valor = $(this).val();
											$
													.SmartMessageBox(
															{
																title : "¡Advertencia!",
																content : "¿Esta seguro de eliminar el plazo?",
																buttons : '[No][Si]'
															},
															function(
																	ButtonPressed) {
																if (ButtonPressed === "Si") {
																	$
																			.ajax(
																					{
																						url : "../../../plazo_dgp",
																						data : "opc=Eliminar&plz="
																								+ valor,
																						type : "POST"
																					})
																			.done(
																					function() {
																						listar();
																						$
																								.smallBox({
																									title : "¡Procesado con exito!",
																									content : "<i class='fa fa-clock-o'></i> <i>Se ha eliminado el plazo correctamente...</i>",
																									color : "#659265",
																									iconSmall : "fa fa-check fa-2x fadeInRight animated",
																									timeout : 4000
																								});
																					});
																}
																if (ButtonPressed === "No") {
																}
															});
										});
					});
}