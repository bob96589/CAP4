pageInit(function() {
  $(function() {
    $('#change').click(function() {
      $.ajax({
        url : url("usersethandler/changePassword"),
        data : $('#mform').serializeData()
      }).done(function() {
        API.showMessage('', i18n.pwdchange.changePwdOk, function() {
          $('#mform').reset();
        });
      });
    });
    $('#clear').click(function() {
      $('#mform').reset();
    });
  });
});
