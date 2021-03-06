<html lang="en">

<head>

<Title>Change Password</Title>

<!-- Bootstrap -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--For Favicon Logo-->
<link rel="shortcut icon" href="/images/sosmlm_fevicon.png">

<!-- Embed Header CSS -->
<link rel="stylesheet" href="/style/adminHeader.css">
<link rel="stylesheet" href="/style/buttonStyle.css">
<link rel="stylesheet" href="/style/inputStyle.css">
<link rel="stylesheet" href="/style/layoutStyle.css">

<!-- Embed Header Script -->
<script src="/script/ValidationScript.js"></script>
<script src="/script/adminHeader.js"></script>


<script>

    $(function () {
        $(".TopPageNamePre").html('Change');
        $(".TopPageNamePost").html('Password');

        $(".ValidInputField").on("keyup", function(event){
            if(event.which == 13)
                SubmitFunction();
        })// Press Enter

    })


     function SubmitFunction(){
        
        var oldPwd = $(".OldPassword").val();
        var newPwd = $(".NewPassword").val();
        var newRePwd = $(".NewRePassword").val();

        var returns = ValidateInputField();
        
        if(returns){
            if (oldPwd == newPwd){
                $(".NewPassword").focus();
                 $(".NewPassword, .OldPassword").addClass("InputFieldError");
            }
            else if (newPwd != newRePwd){
                $(".NewPassword").focus();
                 $(".NewPassword, .NewRePassword").addClass("InputFieldError");
            }
            else{
                $(".InputFieldError").removeClass("InputFieldError");
                alert("Success", 'suc')
            }
        }
    }; // SubmitFunction Close 


</script>


</head>

<body>

<jsp:include page="AdminLeftMenu.jsp" />

<section id="contents">

<jsp:include page="AdminTopMenu.jsp" />


    <div class="Admin_Dashboard">

        <div class="section1">


            <div class="welcome">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content SectionStyle">


                                <div align="center">
                                    <div>

                                        <div class="welcome">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                            <h4> <i class="fa fa-key"></i> &nbsp; Change Password
                                                            </h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div style="margin-top:25px">

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Previous Password</div>
                                                <input class="InputDefault ValidInputField NoSpaceField OldPassword" type="password" maxlength="100" placeholder="Previous Password">
                                            </div>
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">New Password</div>
                                                <input class="InputDefault ValidInputField NoSpaceField NewPassword" type="password" maxlength="100" placeholder="New Password">
                                            </div>
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Re-Password</div>
                                                <input class="InputDefault ValidInputField NoSpaceField NewRePassword" type="password" maxlength="100" placeholder="Re-Password">
                                            </div>

                                        </div>
                                        <div class="container-fluid"></div>
                                        <br>
                                    </div>



                                    <div>
                                        <br><br>
                                        <button class="DefaultButton changePassword" onclick="SubmitFunction()" style="width:200px">Update</button>
                                    </div>

                                    <div class="container-fluid"></div>
                                    <br><br>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>





    </div>
    <div class="container-fluid"></div>
    <br><br><br><br>
</section>

</body>

</html>