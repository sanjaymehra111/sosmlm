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

    <!-- Embed CSS -->
    <link rel="stylesheet" href="/style/login.css">

    <script>
        $(function(){
            $(".LoginButton").click(function(){
                var id = $(".UserName").val();
                var pwd = $(".UserPassword").val();
                if(id == "" || pwd== "")
                    alert("Incorrect Password")
                else
                    window.location.href = "AdminDashboard";
            })
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
                    <input type="text" class="inputField UserName" maxlength="100" placeholder="User Name"><br><br>
                    <input type="password" class="inputField UserPassword" maxlength="100" placeholder="User Password"><br><br>
                    <div style="width: 80%;">
                        <span class="floatLeft"><input type="checkbox"> Remember Me</span>
                        <span class="floatRight">Forgot Password ?</span><br><br><br>
                    </div>
                    <button class="LoginButton">Login</button><br><br><br>
                </div>
            </div>    
        </div>
    </div>
</body>
</html>
