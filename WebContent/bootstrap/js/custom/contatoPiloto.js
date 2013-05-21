$(document).ready(function() {

	//Globais
	var abaContato = 0;
	var pilotoId = $('#Piloto_id').val();

	//Mascara de campo
	$('#telefone_pri').mask('(99) 9999-9999');
	$('#celular_pri').mask('(99) 9999-9999');
	$('#telefone_sec').mask('(99) 9999-9999');
	$('#celular_sec').mask('(99) 9999-9999');
	$('#cepContato').mask('99999-999');
	$('#loadingContato').css('display','none');

	//Ordenação Grid
	var fixHelper = function(e, ui) {
		ui.children().each(function() {
			$(this).width($(this).width());
		});
		return ui;
	};

	var ordemFinal = function(e, ui) {

		var json = {
			pilotoID: $('#Piloto_id').val(),
			ordens: []
		};


		$('td.index', ui.item.parent()).each(function(i) {
			$('#loadingContato').fadeIn('fast');
			$(this).html(i + 1);
			var ordem = {
				contatoID: $(this).attr('id'),
				ordem: $(this).html()
			};
			json.ordens.push(ordem);
		});

		alteraOrdem(json);
	};

	$('#tbContatos tbody').sortable({
		helper: fixHelper,
		stop: ordemFinal,
		cursor: 'move'
	}).disableSelection();


	//Acoes
	$('#btnNovoContato').click(function() {
		$('#dvNovoContato').fadeIn('middle');
		$('#Piloto_contato_id').val("");
		$('#frmNovoContato')[0].reset();
		$('#frmNovoContato #nome').focus();
	});

	$('#btnCancelarContato').click(function() {
		$('#dvNovoContato').fadeOut('middle');
	});

	$('#btnFechaFormularioContato').click(function () {
		$('#dvNovoContato').fadeOut('middle');
	});

	$('.alertSuccess').hide();
	$('.alertError').hide();

	$('a[href$="contatoPiloto"]').click(function() {
		var id = $('#Piloto_id').val();
		if (id.length === 0) {
			alert('Para habilitar a aba Contatos, você deve primeiro cadastrar um Piloto.');
			return false;
		} else {
			abaContato++;
			if (abaContato === 1) {
				preencherTabelaContatos();
			}
		}
	});

	$('#btnDeletaContato').click(function() {
		$('#loadingContato').fadeIn('fast');

		var contatoPilotoID = $('#contatoPilotoID').val();

		$.ajax({
			url: '/contatosDoPiloto/exclui',
			type: 'POST',
			data: {
				contatoPilotoID: contatoPilotoID
			},
			success: function(data, textStatus, xhr) {
				if (textStatus == 'success') {
					$('#tbContatos tr td.index').each(function() {
						if ($(this).attr('id') == contatoPilotoID) {
							$($(this).parent()).remove();
						}
					});
					reorganizaContatos();
					$('#modalDeletarContato').modal('hide');
					exibeAlertSuccess('Contato deletado com sucesso.');
				}
			},
			error: function(xhr, textStatus, errorThrown) {
				exibeAlertError('Erro ao deletar um Contato.');
			}
		});
		$('#loadingContato').fadeOut('fast');
	});

	$('#frmNovoContato').submit(function() {
		$(this).ajaxSubmit({
			success: contatoAdicionado,
			dataType: 'json'
		});
		return false;
	});

	//Ajax
	$('#paisContato').change(function() {
		$.getJSON(
			'/endereco/listaEstadoAjax?paisID=' + $(this).val(),

		function(data) {
			var html = "<option value=''>Selecione</option>";

			$.each(data, function(key, estado) {
				html += "<option value='" + estado.id + "'>" + estado.sigla + " - " + estado.nome + "</option>";
			});

			$('#estadoContato').html(html);
		});
	});

	$('#estadoContato').change(function() {
		$.getJSON('/endereco/listaCidadeAjax?estadoID=' + $(this).val(),

		function(data) {
			var html = "<option value=''>Selecione</option>";
			$.each(data, function(key, cidade) {
				html += "<option value='" + cidade.id + "'>" + cidade.nome + "</option>";
			});
			$('#EnderecoContato_cidade_id').html(html);
		});
	});


	//Salvando o cadastro

	function contatoAdicionado(response, status, xhr, $form) {

		if (status === 'success') {
			if (response.acao === 'save') {
				$('#Endereco_contato_id').val(response.enderecoId);
				adicionaContatoGrid(response.pilotoContatoId);
				exibeAlertSuccess('Contato cadastrado com sucesso.');
			} else {
				atualizaContatoGrid(response.pilotoContatoId);
				exibeAlertSuccess('Contato atualizado com sucesso.');
			}
		} else {
			alertError('Houve um erro ao salvar o cadastro');
		}
	}

	function adicionaContatoGrid(contatoID) {
		$('#loadingContato').fadeIn('fast');
		var nome = $('#frmNovoContato #nome').val();
		var telefone_pri = $('#frmNovoContato #telefone_pri').val();
		var celular_pri = $('#frmNovoContato #celular_pri').val();
		var relacao_piloto = $('#frmNovoContato #relacao_piloto').val();
		var tipoContato = $('#tipo_de_contato_id option:selected').html();


		var html = '<tr>' +
			'<td class="index" id="' + contatoID + '">' +
				(ordemMaior() + 1) +
			'</td>' +
			'<td>' + nome + '</td>' +
			'<td>' + telefone_pri + '</td>' +
			'<td>' + celular_pri + '</td>' +
			'<td>' + relacao_piloto + '</td>' +
			'<td>' + tipoContato + '</td>' +
			'<td>' +
			'<button class="editaNew btn btn-link" title="Editar"><i class="icon-edit"></i></button> ' +
			'<button class="deletaNew btn btn-link" title="Excluir"><i class="icon-remove"></i></button>' +
			'</td>' +
			"</tr>";

		$('#tbContatos > tbody:last').append(html);

		$('html, body').animate({ scrollTop: 0 }, 'slow');

		$('#loadingContato').fadeOut('fast');

		$('#tbContatos tr td').mouseover(function() {
				$(this).css('cursor', 'move');
		});

		$('#dvNovoContato').fadeOut('middle');
		$('#frmNovoContato')[0].reset();

		$('.deletaNew').click(function() {
			var tdIDNode = $(this).parent().parent().children()[0];
			var tdNomeNode = $(this).parent().parent().children()[1];

			deletaContato($(tdIDNode).attr('id'), $(tdNomeNode).html());
		});

		$('.editaNew').click(function() {
			var tdIDNode = $(this).parent().parent().children()[0];

			editaContato($(tdIDNode).attr('id'));
		});

	}

	function atualizaContatoGrid(contatoID) {
		$('#loadingContato').fadeIn('fast');
		var nome = $('#frmNovoContato #nome').val();
		var telefone_pri = $('#frmNovoContato #telefone_pri').val();
		var celular_pri = $('#frmNovoContato #celular_pri').val();
		var relacao_piloto = $('#frmNovoContato #relacao_piloto').val();
		var tipoContato = $('#tipo_de_contato_id option:selected').html();


		$('#tbContatos tr td.index').parent().each(function() {

			if ($($(this).children()[0]).attr('id') === contatoID) {

				$($(this).children()[1]).html(nome);
				$($(this).children()[2]).html(telefone_pri);
				$($(this).children()[3]).html(celular_pri);
				$($(this).children()[4]).html(relacao_piloto);
				$($(this).children()[5]).html(tipoContato);

				$('#dvNovoContato').fadeOut('fast');
				$('#loadingContato').fadeOut('fast');
				return false;
			}
		});

	}

	function deletaContato(contatoPilotoID, nomeContato) {
		$('#nomeContato').html(nomeContato);
		$('#contatoPilotoID').val(contatoPilotoID);
		$('#modalDeletarContato').modal('toggle');
	}

	function editaContato(contatoPilotoID) {
		$('#loadingContato').fadeIn('fast');
		$.ajax({
			url: '/contatosDoPiloto/listaPorID',
			type: 'POST',
			dataType: 'json',
			data: {
				contatoPilotoID: contatoPilotoID
			},
			success: function(contatoPiloto, textStatus, xhr) {
				var pilotoContato = contatoPiloto[0].pilotoContato;
				var endereco = contatoPiloto[0].endereco;
				var paisID = contatoPiloto[0].paisID;
				var estadoID = contatoPiloto[0].estadoID;

				//Piloto
				$('#frmNovoContato #Piloto_contato_id').val(pilotoContato.id);
				$('#frmNovoContato #nome').val(pilotoContato.nome);
				$('#frmNovoContato #telefone_pri').val(pilotoContato.telefone_pri);
				$('#frmNovoContato #telefone_sec').val(pilotoContato.telefone_sec);
				$('#frmNovoContato #celular_pri').val(pilotoContato.celular_pri);
				$('#frmNovoContato #celular_sec').val(pilotoContato.celular_sec);
				$('#frmNovoContato #email').val(pilotoContato.email);
				$('#frmNovoContato #tipo_de_contato_id').val(pilotoContato.tipo_de_contato_id);
				$('#frmNovoContato #relacao_piloto').val(pilotoContato.relacao_piloto);

				//Endereco
				$('#frmNovoContato #paisContato option').each(function() {
					if ($(this).val() == paisID) {
						$('#frmNovoContato #paisContato').val(paisID).change();
					}
				});

				window.setTimeout(function() {
					$('#frmNovoContato #estadoContato option').each(function() {
						if ($(this).val() == estadoID) {
							$('#frmNovoContato #estadoContato').val(estadoID).change();
						}
					});
				}, 500);

				window.setTimeout(function() {
					$('#frmNovoContato #EnderecoContato_cidade_id option').each(function() {
						if ($(this).val() == endereco.cidade_id) {
							$('#frmNovoContato #EnderecoContato_cidade_id').val(endereco.cidade_id).change();
						}
					});
				}, 1000);

				$('#frmNovoContato #Endereco_contato_id').val(endereco.id);
				$('#frmNovoContato #Endereco_logradouro').val(endereco.logradouro);
				$('#frmNovoContato #Endereco_bairro').val(endereco.bairro);
				$('#frmNovoContato #Endereco_nro_imovel').val(endereco.nro_imovel);
				$('#frmNovoContato #Endereco_complemento').val(endereco.complemento);
				$('#frmNovoContato #cepContato').val(endereco.cep);

				$('#dvNovoContato').fadeIn('middle');
				$('#loadingContato').fadeOut('fast');
			},
			error: function(xhr, textStatus, errorThrown) {
				$('#loadingContato').fadeOut('fast');
				exibeAlertError('Erro ao atualizar contato');
			}
		});
	}

	function preencherTabelaContatos() {
		$('#loadingContato').fadeIn('fast');
		$.getJSON('/contatosDoPiloto/listaPorPiloto/' + $('#Piloto_id').val(), function(contatos) {

			var trs = [];

			$.each(contatos, function(key, contato) {
				trs.push('<tr>' +
					'<td class="index" id="' + contato.pilotoContato.id + '" >' +
						contato.pilotoContato.ordem +
					'</td>' +
					'<td>' + contato.pilotoContato.nome + '</td>' +
					'<td>' + contato.pilotoContato.telefone_pri + '</td>' +
					'<td>' + contato.pilotoContato.celular_pri + '</td>' +
					'<td>' + contato.pilotoContato.relacao_piloto + '</td>' +
					'<td>' + contato.tipoContato.descricao + '</td>' +
					'<td>' +
					'<button class="edita btn btn-link" title="Editar"><i class="icon-edit"></i></button> ' +
					'<button class="deleta btn btn-link" title="Excluir"><i class="icon-remove"></i></button>' +
					'</td>' +
					'</tr>');
			});
			$('#tbContatos > tbody:last').append(trs.join(''));

			$('#loadingContato').fadeOut('fast');

			$('#tbContatos tr td').mouseover(function() {
				$(this).css('cursor', 'move');
			});

			$('.deleta').click(function() {
				var tdIDNode = $(this).parent().parent().children()[0];
				var tdNomeNode = $(this).parent().parent().children()[1];

				deletaContato($(tdIDNode).attr('id'), $(tdNomeNode).html());
			});

			$('.edita').click(function() {
				var tdIDNode = $(this).parent().parent().children()[0];

				editaContato($(tdIDNode).attr('id'));
			});

		});
	}

	function alteraOrdem(json) {
		$.ajax({
			url: '/contatosDoPiloto/alteraOrdemContatos',
			type: 'post',
			data: {
				alteracao: json
			},
			success: function(data, textStatus, xhr) {
				$('#loadingContato').fadeOut('fast');
			}
		});
	}

	//Auxiliares
	function reorganizaContatos() {
		$('#loadingContato').fadeIn('fast');
		$('#tbContatos tr td.index').each(function(i) {
			$(this).html(i + 1);
		});
		$('#loadingContato').fadeOut('fast');
	}

	function ordemMaior() {

		var maior = 0;

		$('td.index').each(function(i) {
			if ($(this).html() > maior) {
				maior = $(this).html();
			}
		});

		return parseInt(maior, 10);
	}

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