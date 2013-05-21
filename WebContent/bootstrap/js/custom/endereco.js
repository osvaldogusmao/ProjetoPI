$('#pais').change(function(){   
	$.getJSON('/endereco/listaEstadoAjax?paisID='+$(this).val(), function(data){
		var html = "<option value=''>Selecione</option>";
		$.each(data, function(key, estado) {
			html += "<option value='"+estado.id+"'>"+estado.sigla + " - " +estado.nome+"</option>";
		}); 
		$('#estado').html(html);
	});
});

$('#estado').change(function(){ 
	$.getJSON('/endereco/listaCidadeAjax?estadoID='+$(this).val(), function(data){
		var html = "<option value=''>Selecione</option>";
		$.each(data, function(key, cidade) {
			html += "<option value='"+cidade.id+"'>"+cidade.nome+"</option>";
		}); 
		$('#Endereco_cidade_id').html(html);
	});
});
