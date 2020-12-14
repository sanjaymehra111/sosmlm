$(function(){
    $(".LoginButton").click(function(){
        SubmitFunction();
    })

    $(".ValidInputField").on("keyup", function(event){
        if(event.which == 13)
            SubmitFunction();
    })// Press Enter

    function SubmitFunction(){
        var id = $(".UserName").val();
        var pwd = $(".UserPassword").val();
        var returns = ValidateInputField();
        if(returns){
            if (id != "admin" || pwd != "admin"){
                alert("Incorrect Password", 'err');
            }
            else{
                $(".InputFieldError").removeClass("InputFieldError");
                alert("Success", 'suc')
                window.location.href = "AdminDashboard";
            }
        }
    }; // SubmitFunction Close 


    $(".ForgetPasswordText").on("click", function(){
        $("#ForgotPasswordModal").modal("show");
    })

})