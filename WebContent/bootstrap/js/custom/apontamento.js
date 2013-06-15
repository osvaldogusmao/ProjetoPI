$(document).ready(function() {

	/*
	 * A��es em table
	 */
	$('#tbVerbas tbody tr').click(function() {
		$('#tbVerbas tbody tr').each(function() {
			$(this).removeClass('table-selected');
		});
		$(this).addClass('table-selected');
	});

	$('#tbEmpresas tbody tr').click(function() {
		$('#tbEmpresas tbody tr').each(function() {
			$(this).removeClass('table-selected');
		});
		$(this).addClass('table-selected');
	});

	/*
	 * A��es em button
	 */
	$('#btnSelecionaVerba').click(function() {
		var idVerba = $('#tbVerbas tbody tr.table-selected').attr('id');
		var td = $('#tbVerbas tbody tr.table-selected td')[1];
		var descricaoVerba = $(td).html();

		$('#verba_id').val(idVerba);
		$('#verba_id_span').html(idVerba);
		$('#verba_descricao').html(descricaoVerba);

		$('#modalPesquisaVerba').modal('hide');

	});

	$('#btnSelecionaEmpresa').click(function() {
		var idEmpresa = $('#tbEmpresas tbody tr.table-selected').attr('id');
		var td = $('#tbEmpresas tbody tr.table-selected td')[1];
		var descricaoEmpresa = $(td).html();

		$('#empresa_id_span').html(idEmpresa);
		$('#empresa_id').val(idEmpresa);

		$('#empresa_descricao').html(descricaoEmpresa);

		$('#modalPesquisaEmpresa').modal('hide');
	});

	$('#btnSalvarApontamento').click(function() {

		var form = $('#frmNovoApontamento').serialize();

		$.ajax({
			url : '/projetopi/apontamento?salva',
			type : 'POST',
			data : form,
			dataType : 'json',
			success : function(data, textStatus, jqXHR) {
				if(data.id > 0){
					$('#dvCadastroVerba').fadeIn('middle');
					$('html, body').animate({scrollTop : $(document).height()}, 'slow');
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("Erro " + textStatus + " - " + errorThrown);
			}
		});

	});
	
	$('#btnAdicionaVerba').click(function(){
		var form = $('#frmNovaVerbaApontamento').serialize();
		
		$.ajax({
			url : '/projetopi/apontamento?adicionaVerba',
			type : 'POST',
			data : form,
			dataType : 'json',
			success : function(data, textStatus, jqXHR){
				if(textStatus === 'success'){
					var codigo = $('#verba_id_span').html();
					var descricao = $('#verba_descricao').html();
					var qtd = $('#apontamento_qtd').val();
					
					var html = "<tr>" +
									"<td> " + codigo + "</td>" +
									"<td> " + descricao + "</td> " +
									"<td> " + qtd + "</td> " +
									"<td style='text-align: center;'> " +
										"<a href='#deleta' class='deleta' ><i class='icon-remove'></i></a> " +
									"</td> " +
								"</tr>";

					$('#tbVerbas > tbody:last').append(html);
				}
			},
			error : function(jqXHR, textStatus, errorThrow){
				alert("Erro ao adicionar uma Verba");
			}
		});
				
	});

	/*
	 * A��es em input:text
	 */
	$('#funcionario_nome').blur(function() {
		if ($(this).val() === "") {
			$('#funcionario_id').val("");
			$('#funcionario_salario').html("");
		}
	});

	$('#funcionario_nome').typeahead({
		source : function(query, process) {
			funcionarios = bindAutoCompleteFuncionarios(listaFuncionarioPorNome(query));
			process(funcionarios['objects']);
		},
		items : 4,
		minLength : 3,
		updater : function(selectedName) {
			var funcionario = funcionarios['map'][selectedName];
			$('#funcionario_id').val(funcionario.id);
			$('#funcionario_salario').html(funcionario.salario);
			return funcionario.nome;
		},
		highlighter : function(selectedName) {
			$('#funcionario_nome').css('margin-right', '20px');
			var regex = new RegExp('(' + this.query + ')', 'gi');
			return selectedName.replace(regex, "<strong>$1</strong>");
		}
	});

	/*
	 * Metodos auxiliares
	 */
	function listaFuncionarioPorNome(query) {
		var funcionarios = "";
		$.ajaxSetup({
			async : false
		});
		$.getJSON('bootstrap/data.json', function(data) {
			funcionarios = data;
		});
		return funcionarios;
	}

	function bindAutoCompleteFuncionarios(data) {
		var objects = [];
		var map = {};
		$.each(data, function(i, object) {
			var label = object.id + " - " + object.nome;
			map[label] = object;
			objects.push(label);
		});

		var array = {};
		array['objects'] = objects;
		array['map'] = map;
		return array;
	}

});