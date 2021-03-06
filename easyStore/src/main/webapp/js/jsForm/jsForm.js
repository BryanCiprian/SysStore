

function list_select(objSelect, url, datos, opc, id) {
     
    var text_html = "";
    objSelect.empty();
    objSelect.removeClass("chosen-select");
    objSelect.append("<option  value='' >Cargando...</option>");
    $.post(url, datos, function(objJson) {
        objSelect.empty();
        if (objJson.rpta === -1) {
            alert(objJson.mensaje);
            return;
        }
        var lista = objJson.lista;
        if (lista.length > 0) {
            objSelect.append("<option value=''>[Seleccione]</option>");
            if (opc === "1" | opc === "4") {
                for (var i = 0; i < lista.length; i++) {
                    if (id == lista[i].id) {
                        text_html += "<option selected value='" + lista[i].id + "'>" + lista[i].nombre + "</option>";
                    } else {
                        text_html += "<option value='" + lista[i].id + "'>" + lista[i].nombre + "</option>";
                    }
                }
            } else {
                for (var i = 0; i < lista.length; i++) {
                    text_html += "<option value='" + lista[i].id + "'>" + lista[i].nombre + "</option>";
                }
            }
        } else {
            objSelect.append("<option value=''>[]</option>");
        }
        objSelect.append(text_html);
        text_html = "";
        if (opc === "3" | opc === "4") {
            objSelect.addClass("chosen-select");
             $(".chosen-select").trigger("chosen:updated");
            var config = {
                '.chosen-select': {no_results_text: 'Oops, nada encontrado!', allow_single_deselect: true},
                '.chosen-select-width': {width: "95%"}
            }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }
        }
       
    });
    if (opc === "3" | opc === "4") {
        /*sirve para validar cuando es required*/
        $.validator.setDefaults({ignore: ":hidden:not(select)"})
    }

}
function list_selectJavaBeans(objSelect, url, datos,id_select,opcion_select, opc, id) {
    var text_html = "";
    objSelect.empty();
    objSelect.removeClass("chosen-select");
    objSelect.append("<option  value='' >Cargando...</option>");
    $.post(url, datos, function(objJson) {
        objSelect.empty();
        if (objJson.rpta == -1) {
            alert(objJson.mensaje);
            return;
        }
        var lista = objJson.lista;
        if (lista.length > 0) {
            objSelect.append("<option value=''>[Seleccione]</option>");
            if (opc == "1" | opc == "4") {
                for (var i = 0; i < lista.length; i++) {
                    if (id == lista[i][id_select] ) {
                        text_html += "<option selected value='" + lista[i][id_select] + "'>" + lista[i][opcion_select] + "</option>";
                    } else {
                        text_html += "<option value='" + lista[i][id_select] + "'>" + lista[i][opcion_select]+ "</option>";
                    }
                }
            } else {
                for (var i = 0; i < lista.length; i++) {
                    text_html += "<option value='" + lista[i][id_select] + "'>" +lista[i][opcion_select] + "</option>";
                }
            }
        } else {
            objSelect.append("<option value=''>[NO DATA]</option>");
        }
        objSelect.append(text_html);
        text_html = "";
        if (opc == "3" | opc == "4") {
            objSelect.addClass("chosen-select");
             $(".chosen-select").trigger("chosen:updated");
            var config = {
                '.chosen-select': {no_results_text: 'Oops, nada encontrado!', allow_single_deselect: true},
                '.chosen-select-width': {width: "95%"}
            }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }
        }
       
    });
    if (opc == "3" | opc == "4") {
        /*sirve para validar cuando es required*/
        $.validator.setDefaults({ignore: ":hidden:not(select)"});
    }

}