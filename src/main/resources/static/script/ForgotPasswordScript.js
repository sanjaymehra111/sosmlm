var UserContact = "";

$(function () {

    $(".UserForgotInputField").on("keyup", function (event) {
        if (event.which == 13) {
            ForgotPasswordFunction();
        }
    })// Press Enter

    $(".UserForgotContact").on("keyup", function (event) {
        if (event.which == 13) {
            SendOtpFunction();
        }
    })// Press Enter
})

function SendOtpFunction() {
    UserContact = $(".UserContact").val();
    if (UserContact.length != 10) {
        $(".UserContact").focus();
        $(".UserContact").addClass("InputFieldError");
    }
    else {
        alert("OTP SENT ON " + UserContact, "suc");
        $(".InputFieldError").removeClass("InputFieldError");
        $(".ContactSection").hide(200);
        $(".ChangePasswordSection").show(200);
        $(".ShowUserContact").val(UserContact);
        $(".ForgotPasswordOtp").focus();
    }
}


function ForgotPasswordFunction() {

    var otp = $(".ForgotPasswordOtp").val();
    var pwd = $(".ForgotPassword").val();
    var rePwd = $(".ForgotRePassword").val();

    if (otp.length != 6) {
        $(".ForgotPasswordOtp").addClass("InputFieldError");
        $(".ForgotPasswordOtp").focus();
    }
    else if (pwd == "" || pwd != rePwd) {
        $(".InputFieldError").removeClass("InputFieldError");
        $(".ForgotPassword, .ForgotRePassword").addClass("InputFieldError");
        $(".ForgotPassword").focus();
    }
    else {
        alert("Password Updated", "suc");
        $(".InputFieldError").removeClass("InputFieldError");
    }
}