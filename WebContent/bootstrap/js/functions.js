//Função para mascarar telefones com DDD 11 (São Paulo)
var SPphoneMask = function(phone, e, currentField, options) {
  return phone.match(/^(\(?11\)? ?9(5[0-9]|6[0-9]|7[01234569]|8[0-9]|9[0-9])[0-9]{1})/g) ? '(00) 00000-0000' : '(00) 0000-0000';
};

function maskFieldPhone(field) {
  $(field).mask(SPphoneMask, {
    onKeyPress: function(phone, e, currentField, options) {
      $(currentField).mask(SPphoneMask(phone), options);
    }
  });
}