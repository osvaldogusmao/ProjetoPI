$(document).ready(function(){
		
		/*
		* Ações em table
		*/
		$('#tbVerbas tbody tr').click(function(){
			$('#tbVerbas tbody tr').each(function(){
				$(this).removeClass('table-selected');	
			});
			$(this).addClass('table-selected');
		});
		
		$('#tbEmpresas tbody tr').click(function(){
			$('#tbEmpresas tbody tr').each(function(){
				$(this).removeClass('table-selected');
			});
			$(this).addClass('table-selected');
		});
		
		/*
		* Ações em button
		*/
		$('#btnSelecionaVerba').click(function(){
			var idVerba = $('#tbVerbas tbody tr.table-selected').attr('id');
			var descricaoVerba = $($('#tbVerbas tbody tr.table-selected td')[1]).html();
			
			$('#verba_id').val(idVerba);
			$('#verba_id_span').html(idVerba);
			$('#verba_descricao').html(descricaoVerba);
			
			$('#modalPesquisaVerba').modal('hide');
		});
		
		$('#btnSelecionaEmpresa').click(function(){
			var idEmpresa = $('#tbEmpresas tbody tr.table-selected').attr('id');
			var descricaoEmpresa = $($('#tbEmpresas tbody tr.table-selected td')[1]).html();
			
			$('#empresa_id_span').html(idEmpresa);
			$('#empresa_id').val(idEmpresa);
			
			$('#empresa_descricao').html(descricaoEmpresa);
			
			$('#modalPesquisaEmpresa').modal('hide');
		});
		
		$('#btnSalvarApontamento').click(function(){
			$('#frmNovoApontamento').submit();
			//$('#dvCadastroVerba').fadeIn('middle');
			//$('html, body').animate({scrollTop : $(document).height()}, 'slow');
		});
		
		/*
		* Ações em input:text
		*/
		$('#funcionario_nome').blur(function(){
			if($(this).val() === ""){
				$('#funcionario_id').val("");
				$('#funcionario_salario').html("");
			}
		});
		
		$('#funcionario_nome').typeahead({
			source : function(query, process){
				funcionarios = bindAutoCompleteFuncionarios(listaFuncionarioPorNome(query));
				process(funcionarios['objects']);
			},
			items : 4,
			minLength : 3,
			updater : function(selectedName){
				var funcionario = funcionarios['map'][selectedName];
				$('#funcionario_id').val(funcionario.id);
				$('#funcionario_salario').html(funcionario.salario);
				return funcionario.nome;
			},
			highlighter : function(selectedName){
				$('#funcionario_nome').css('margin-right', '20px');
				var regex = new RegExp( '(' + this.query + ')', 'gi' );
				return selectedName.replace(regex, "<strong>$1</strong>");
			}
		});
		
		/*
		* Metodos auxiliares
		*/
		function listaFuncionarioPorNome(query){
			var funcionarios = "";
			$.ajaxSetup({async: false});
			$.getJSON('bootstrap/data.json', function(data){
				funcionarios = data;
			});
			return funcionarios;
		}
		
		function bindAutoCompleteFuncionarios(data){
			var objects = [];
			var map = {};
			$.each(data, function(i, object){
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