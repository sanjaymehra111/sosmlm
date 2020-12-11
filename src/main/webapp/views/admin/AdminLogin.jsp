<html>

<head>
    <Title>Login Page</Title>
    <!-- Bootstrap -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--For Favicon Logo-->
    <link rel="shortcut icon" href="/images/sosmlm_fevicon.png">

    <!-- Embed CSS -->
    <link rel="stylesheet" href="/style/login.css">
    <link rel="stylesheet" href="/style/layoutStyle.css">
    <link rel="stylesheet" href="/style/buttonStyle.css">
    
    <!-- Embed Script -->
    <script src="/script/ValidationScript.js"></script>

    <script>
        $(function(){
            $(".LoginButton").click(function(){
                SubmitFunction();
            })

            $(".ValidInputField").on("keyup", function(event){
                if(event.type == "keyup")
                    $(this).val($(this).val().replace(/ +?/g, ''));
                if(event.which == 13){
                    SubmitFunction();
                }
                    
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
                        //window.location.href = "AdminDashboard";
                    }
                }
            }; // SubmitFunction Close 

        })
    </script>

</head>

<jsp:include page="../alert.jsp" />

<body>
    <div>

        <div class="section1">
            <div class="loginbg" align='center'>
                <div class="height100"></div>
                <div class="head">
                    <img src="/images/logo.png" class="LogoImage"><br><br>
                    <input type="text" class="inputField ValidInputField UserName" maxlength="100" placeholder="User Name"><br><br>
                    <input type="password" class="inputField ValidInputField UserPassword" maxlength="100" placeholder="User Password"><br><br>
                    <div style="width: 80%;">
                        <span class="floatRight ForgetPasswordText" data-toggle="modal" data-target="#ForgotPAsswordModal">Forgot Password ?</span><br><br><br>
                    </div>
                    <button class="LoginButton">Login</button><br><br><br>
                </div>
            </div>    
        </div>



<style>
.ChangePasswordSection{
    display:none;
}
</style>

<script>
$(function(){
    $(".ValidateContact").keypress(function(){
        if($(this).val().length > 9)
            return false;
    })

    $(".SendOtpFunction").click(function(){
        $(".ContactSection").hide(200);
        $(".ChangePasswordSection").show(200);
    })

    $(".ReSendOtpFunction").click(function(){
        $(".ChangePasswordSection").hide(200);
        $(".ContactSection").show(200);
    })
    
})

</script>


        <div class="section2">
            <div class="ForgetPAssword" align='center'>
                
                <!-- Modal -->
                <div id="ForgotPAsswordModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Forgot Password</h4>
                    </div>
                    <div class="modal-body">

                        <div class="ContactSection">
                            <input type="number" class="inputField UserContact ValidateContact" placeholder="Contact Number"><br><br>
                            <button style="width:100px" class="DefaultButton SendOtpFunction">Sned OTP</button><br><br><br>
                        </div>

                        <div class="ChangePasswordSection">
                            <input type="password" class="inputField ForgotPassword" placeholder="New Password"><br><br>
                            <input type="password" class="inputField ForgotRePassword" placeholder="Re Password"><br><br>
                            <button style="width:150px" class="DefaultButton ForgotPasswordFunction">Confirm</button><br><br><br>
                        </div>

                    </div>
                    </div>

                </div>
                </div>


            </div>    
        </div>



    </div>
</body>
</html>
