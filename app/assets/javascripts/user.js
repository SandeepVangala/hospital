$( document ).ready(function() {
 $( "select#role_id_0" ).change(function() {
  if(this.value == 2 || this.value == 3)
  {
    $("#doctor_fileds").hide();
  }else {
    $("#doctor_fileds").show();
  }
});

$("#new_user").validate({
    rules: {
      "user[name]": {
        required: true,
        maxlength: 35
      },
      "role_id[0]": {
        required: true
      },
      "user[zip]": {
        digits: true,
        maxlength: 5
      },
      "user[years_practice]": {
        digits: true,
        range: [1, 100]
      },
    }
  });
});

