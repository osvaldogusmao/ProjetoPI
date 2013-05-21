$(document).ready(function() {

	//Globais
	var abaHabilitacao = 0;
	var pilotoID = $('#Piloto_id').val();

	//Ações
	$('#dvNovaHabilitacao').hide();
	$('#loadingHabilitacao').hide();
	$('#Habilitacao_do_piloto_validade').mask('99/99/9999');

	//Eventos
	$('a[href$="habilitacaoPiloto"]').click(function() {
		var id = $('#Piloto_id').val();
		if (id.length === 0) {
			alert('Para habilitar a aba habilitações, você deve primeiro cadastrar um Piloto.');
			return false;
		}else{
			abaHabilitacao++;
			if (abaHabilitacao === 1) {
				preencheTabelaHabilitacao();
			}
		}
	});

	$('#btnNovaHabilitacao').click(function(){
		$('#Habilitacao_do_piloto_piloto_id').val($('#Piloto_id').val());
		$('#frmNovaHabilitacao')[0].reset();
		$('#dvNovaHabilitacao').fadeIn('middle');
	});


	$('#frmNovaHabilitacao').submit(function(){

		$(this).ajaxSubmit({
			success : habilitacaoIncluida,
			dataType : 'json'
		});
		return false;
	});

	$('#btnFechaFormulariohabilitacao').click(function() {
		$('#frmNovaHabilitacao').get(0).reset();
		$('#dvNovaHabilitacao').fadeOut('middle');
	});

	$('#btnDeletaHabilitacao').click(function (argument) {

		var habilitacaoID = $('#habilitacaoPilotoID').val();

		$.ajax({
			url: '/habilitacaoDoPiloto/exclui',
			type: 'POST',
			dataType: 'json',
			data: {idHabilitacao: habilitacaoID},
			success: function(data, textStatus, xhr) {
				if(textStatus === 'success'){
					$('#modalDeletarHabilitacao').modal('hide');
					$('#tbHabilitacoes tr td').each(function() {
						if ($(this).attr('id') == habilitacaoID) {
							$($(this).parent()).remove();
						}
					});
					exibeAlertSuccess("Registro deletado com sucesso");
				}
			},
			error: function(xhr, textStatus, errorThrown) {
				exibeAlertError("Erro ao deletar o registro.");
			}
		});

	});

	//métodos
	function preencheTabelaHabilitacao() {
		$('#loadingHabilitacao').fadeIn('middle');
		$.ajax({
			url: '/habilitacaoDoPiloto/listaPorPiloto',
			type: 'POST',
			dataType : 'json',
			data: {pilotoID: pilotoID},
			success: function(data, textStatus, xhr) {

				var trs = [];
				$.each(data, function(index, habilitacao) {
					trs.push(
						'<tr>' +
							'<td id="' + habilitacao.habilitacaoDoPiloto.id + '">' + habilitacao.habilitacao.descricao + '</td>' +
							'<td>' + habilitacao.funcao.descricao+ '</td>' +
							'<td>' + habilitacao.validade + '</td>' +
							'<td>' + habilitacao.habilitacaoDoPiloto.numero_habilitacao + '</td>' +
							'<td>' +
								'<button class="editaHabilitacao btn btn-link" title="Editar"><i class="icon-edit"></i></button> ' +
								'<button class="deletaHabilitacao btn btn-link" title="Excluir"><i class="icon-remove"></i></button>' +
							'</td>' +
						'</tr>'
					);
				});

				$('#tbHabilitacoes > tbody:last').append(trs.join(''));

				$('#loadingHabilitacao').fadeOut('middle');

				$('.editaHabilitacao').click(function() {

					var node = $(this).parent().parent().children()[0];

					editaHabilitacao($(node).attr('id'));
				});

				$('.deletaHabilitacao').click(function() {

					var node = $(this).parent().parent().children()[0];

					deletaHabilitacao($(node).attr('id'));
				});
			},
			error: function(xhr, textStatus, errorThrown) {
				exibeAlertError('Erro ao listar as habilitações do piloto');
				$('#loadingHabilitacao').fadeOut('middle');
			}
		});

	}

	function habilitacaoIncluida(response, status, xhr, $form){

		if(response.result === true){
			var msg = 'Registro ' + ((response.acao === 'save') ? 'adicionando' : 'atualizado') +' com sucesso!';
			exibeAlertSuccess(msg);

			if(response.acao === 'save'){
				adicionaItemTable(response.id);
			}else{
				atualizaItemTable();
			}

			$('#frmNovaHabilitacao').get(0).reset();
			$('#dvNovaHabilitacao').fadeOut('middle');

		}else{
			exibeAlertError('Ops! Ocooreu um erro. Tente novamente por favor.');
		}

	}

	function editaHabilitacao(idHabilitacao){

		var habilitacao = retornaHabilitacaoPorID(idHabilitacao)[0];

		$('#dvNovaHabilitacao').fadeIn('middle');
		$('#Habilitacao_do_piloto_tipo').focus();
		$('#Habilitacao_do_piloto_id').val(habilitacao.habilitacaoDoPiloto.id);
		$('#Habilitacao_do_piloto_piloto_id').val(habilitacao.habilitacaoDoPiloto.piloto_id);
		$('#Habilitacao_do_piloto_tipo').val(habilitacao.habilitacao.id).change();
		$('#Habilitacao_do_piloto_validade').val(habilitacao.validade);
		$('#Habilitacao_do_piloto_funcao').val(habilitacao.funcao.id).change();
		$('#Habilitacao_do_piloto_nro_habilitacao').val(habilitacao.habilitacaoDoPiloto.numero_habilitacao);
	}

	function adicionaItemTable (idHabilitacao) {
		var habilitacao = retornaHabilitacaoPorID(idHabilitacao)[0];

		var html = '<tr>'+
					'<td id="'+habilitacao.habilitacaoDoPiloto.id+'">' + habilitacao.habilitacao.descricao + '</td>' +
					'<td>'+ habilitacao.funcao.descricao +'</td>' +
					'<td>'+ habilitacao.validade +'</td>' +
					'<td>'+ habilitacao.habilitacaoDoPiloto.numero_habilitacao +'</td>' +
					'<td>' +
						'<button class="editaHabilitacaoNew btn btn-link" title="Editar"><i class="icon-edit"></i></button> ' +
						'<button class="deletaHabilitacaoNew btn btn-link" title="Excluir"><i class="icon-remove"></i></button>' +
					'</td>' +
					'</tr>';

		$('#tbHabilitacoes > tbody:last').append(html);
		$('#frmNovaHabilitacao')[0].reset();

		$('.editaHabilitacaoNew').click(function() {
			var node = $(this).parent().parent().children()[0];

			editaHabilitacao($(node).attr('id'));
		});

		$('.deletaHabilitacaoNew').click(function() {
			var node = $(this).parent().parent().children()[0];

			deletaHabilitacao($(node).attr('id'));
		});
	}


	function atualizaItemTable () {

		var habilitacaoID = $('#Habilitacao_do_piloto_id').val();

		$('#tbHabilitacoes tr').each(function() {


			if($($(this).children()[0]).attr('id') === habilitacaoID ){
				var nodes = $(this).children();

				$(nodes[0]).html($('#Habilitacao_do_piloto_tipo option:selected').html());
				$(nodes[1]).html($('#Habilitacao_do_piloto_funcao option:selected').html());
				$(nodes[2]).html($('#Habilitacao_do_piloto_validade').val());
				$(nodes[3]).html($('#Habilitacao_do_piloto_nro_habilitacao').val());
				return false;
			}
		});

	}

	function deletaHabilitacao(habilitacaoPilotoID) {
		$('#habilitacaoPilotoID').val(habilitacaoPilotoID);
		$('#modalDeletarHabilitacao').modal('toggle');
	}

	function retornaHabilitacaoPorID (idHabilitacao) {

		var habilitacaoJson;

		$.ajax({
			url : '/habilitacaoDoPiloto/carrega',
			type : 'post',
			dataType : 'json',
			async : false,
			data : {idHabilitacao : idHabilitacao},
			success : function(json, textStatus){
				habilitacaoJson = json;
			}
		});

		return habilitacaoJson;
	}

	//Auxiliares
	function exibeAlertSuccess(msg){

		$('.alertSuccess span').html(msg);
		$('.alertSuccess').fadeIn('middle');

		window.setTimeout(function() {
			$('.alertSuccess').fadeOut('middle');
		}, 2000);

	}

	function exibeAlertError(msg){

		$('.alertError span').html(msg);
		$('.alertError').fadeIn('middle');

		window.setTimeout(function() {
			$('.alertError').fadeOut('middle');
		}, 2000);

	}


});