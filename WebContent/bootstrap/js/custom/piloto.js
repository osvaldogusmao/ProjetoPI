$(document).ready(function() {

  //Ação
  $('#Piloto_data_nascimento').mask('99/99/9999');
  $('#Piloto_cpf').mask('999.999.999-99');
  $('#Piloto_telefone').mask('(99) 9999-9999');
  $('#Piloto_celular').mask('(99) 9999-9999');
  $('#Endereco_cep').mask('99999-999');

  //Ações
  $('#Caracteristica_possui_tatuagem').click(function(){
    if ($('#Caracteristica_possui_tatuagem').is(':checked')){
      $('#Caracteristica_local_tatuagem').fadeIn('fast');
      $('#lbLocalDaTatuagem').fadeIn('fast');
    }else{
      $('#Caracteristica_local_tatuagem').fadeOut('fast');
      $('#lbLocalDaTatuagem').fadeOut('fast');
    }
  });

  $('#tbCMA tbody tr').click(function() {
    $('#tbCMA tbody tr').each(function(){
      $(this).removeClass('selected').css('background-color', '#FFF');
    });
    $(this).addClass('selected').css('background-color', '#c5bdb2');
  });

  $('#btnSelecionaCMA').click(function(){
    $('#CMADoPiloto_id').val($($('#tbCMA tr.selected td')[0]).attr('id'));
    $('#CMANivel_selecionado').html($($('#tbCMA tr.selected td')[0]).html());
    $('#CMADescricao_selecinado').html($($('#tbCMA tr.selected td')[1]).html());
  });

  $('.deletaPiloto').click(function() {
      var tdIDNode = $(this).parent().parent().children()[0];
      var tdNomeNode = $(this).parent().parent().children()[1];

      $('#deletaPilotoID').val($(tdIDNode).attr('id'));
      $('#nomePiloto').html($(tdNomeNode).html());
    });

  //Alterando estilo input.file

  $(':file').filestyle({
      textField : true,
      buttonText : "Procurar",
      icon : true,
      classButton : 'btn-info'
  });


  //Ajax
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



  //Uplaod de foto
  var options = {
      beforeSubmit:  showRequestUploadFoto,
      success:       showResponseUploadPhoto,
      dataType: 'json'
  };

  $('#frmAdicionaFoto').submit(function() {
      $(this).ajaxSubmit(options);
      return false;
  });

  function showRequestUploadFoto(formData, jqForm, options) {
      return true;
  }

  function showResponseUploadPhoto(responseText, statusText, xhr, $form)  {
    if(responseText.validado){
      $('#modalIncluiFoto').modal('hide');
      $('#foto').attr('src', '/imagens/piloto/'+responseText.msg);
      $('#Piloto_path_foto_usuario').val(responseText.msg);
      $('#erroUploadFoto').fadeOut('fast');
    }else{
      $('#erroUploadFoto').fadeIn('middle');
      $('#msg_error').html(responseText.msg);
    }
  }

  //Adicionando Piloto via Ajax
  $('#frmNovoPiloto').submit(function() {
    $(this).ajaxSubmit({
      success   : pilotoAdicionado,
      dataType  : 'json'
    });
    return false;
  });

  function pilotoAdicionado(response, status, xhr, $form){
    if(status === 'success'){
      $('#Piloto_id').val(response.pilotoId);
      $('#idPiloto').val(response.pilotoId);
      $('#Endereco_id').val(response.enderecoId);
      $('#Caracteristica_id').val(response.caracteristicaId);

      var actionFormNovoContato = $('#frmNovoContato').attr('action') ;
      $('#frmNovoContato').attr('action', actionFormNovoContato + '/'+response.pilotoId);
      $('html, body').animate({ scrollTop: 0 }, 'slow');

      if(response.acao === 'salvo' ){
        exibeAlertSuccess('Cadastro efetuado com sucesso.');
      }else{
        exibeAlertSuccess('Cadastro atualizado com sucesso.');
      }
    }else{
      exibeAlertError('Erro ao salvar o cadastro do Piloto.');
    }
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

}); //end document.ready