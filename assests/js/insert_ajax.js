$(document).ready(function () {
  let btn = $("#submit");
  let FNameErrorMSg = $("#first_name_error_msg");
  let LNameErrorMSg = $("#last_name_error_msg");
  let EmailErrorMSg = $("#email_error_msg");
  let NumberErrorMSg = $("#number_error_msg");
  let DtypeErrorMSg = $("#dtype_error_msg");

  function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
  }
  btn.click((e) => {
    e.preventDefault();
    let FirstName = $("#wavy_first_name").val();
    let LastName = $("#wavy_last_name").val();
    let WavyEmail = $("#wavy_email").val();
    let WavyPhone = $("#wavy_phone").val();
    let DoctorType = $("#doctor_type").val();
  

    var validEmail =
      /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
    if (FirstName == "") {
      FNameErrorMSg.html("please Enter First Your Name");
      FNameErrorMSg.css("color", "red");
    } else {
      FNameErrorMSg.html("");
    }
    if (LastName == "") {
      LNameErrorMSg.html("please Enter Last Name");
      LNameErrorMSg.css("color", "red");
    } else {
      LNameErrorMSg.html("");
    }

    if (WavyEmail == "") {
      EmailErrorMSg.html("please Enter Your Email");
      EmailErrorMSg.css("color", "red");
    } else if (!WavyEmail.match(validEmail)) {
      EmailErrorMSg.html("please Enter Valid Email Address @ or Gmail.com");
      EmailErrorMSg.css("color", "red");
    } else {
      EmailErrorMSg.html("");
    }
    if (WavyPhone == "") {
      NumberErrorMSg.html("please Enter Your Number");
      NumberErrorMSg.css("color", "red");
    } else if (WavyPhone.length != 10) {
      NumberErrorMSg.html("please Enter Must be 10 digit Mobile Number");
      NumberErrorMSg.css("color", "red");
    } else {
      NumberErrorMSg.html("");
    }
   
    if (DoctorType == "Select Doctor Type") {
      
      DtypeErrorMSg.html("please Select Your Doctor Type");
      DtypeErrorMSg.css("color", "red");
    } else {
      DtypeErrorMSg.html("");
    }

    $.ajax({
      url: "includes/insert.php",
      method: "post",
      data: {
        FirstName: FirstName,
        LastName: LastName,
        WavyEmail: WavyEmail,
        WavyPhone: WavyPhone,
        DoctorType: DoctorType,
      },
      success: function (data) {
        if(FirstName!="" && LastName!="" && WavyEmail!=""&& WavyPhone.length == 10 && WavyPhone!="" && DoctorType !== "Select Doctor Type"){
            alert("Your Details has been submitted");
        }
      },
    });
  });
});
