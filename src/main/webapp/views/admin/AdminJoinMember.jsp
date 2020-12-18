<html lang="en">

<head>

    <Title>New Member</Title>

    <!-- Bootstrap -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--For Favicon Logo-->
    <link rel="shortcut icon" href="/images/sosmlm_fevicon.png">

    <!-- Embed Button CSS -->
    <link rel="stylesheet" href="/style/joinMemberStyle.css">
    <link rel="stylesheet" href="/style/layoutStyle.css">

    <!-- Embed Header Script -->
    <script src="/script/ValidationScript.js"></script>

    <style>
    .ShowSpinner{
        font-size: 16px;
        position: absolute;
        right: 50px;
        color: #227491;
        font-weight: bold;
        margin-top: 21px;
        display:none;
    }
    </style>



    <Script>

        function GetSponsorDetails(){
            var SponsorId = $(".SponsorId").val();
            if(SponsorId){
                $(".SponsorName").val("ADMIN"+SponsorId.toUpperCase());
                $(".ShowSpinner").show(200);
            }
            else{
                $(".SponsorName").val("");
                $(".ShowSpinner").hide(200);
            }
        }
        
        var UserGender="male";
        
        $(function(){
            $(".UserGender").click(function(){
                UserGender = $(this).val();
            })
        })
        function SubmitFunction(){
            var SponsorId = $(".SponsorId").val();
            var SponsorName = $(".SponsorName").val();
            var UserFirstName = $(".UserFirstName").val();
            var UserLastName = $(".UserLastName").val();
            //var UserGender = $(".UserGender").val();
            var UserContact = $(".UserContact").val();
            var UserEmail = $(".UserEmail").val();
            var UserPan = $(".UserPan").val();
            var UserPassword = $(".UserPassword").val();
            var UserRePassword = $(".UserRePassword").val();
            
            //************* Add Multiple image Data To Ajax ********//

            var returns = ValidateInputField();
            if(returns){
                if(UserContact.length != 10){
                    $(".UserContact").addClass("InputFieldError");
                    $(".UserContact").focus(); 
                }
                else if(UserPassword != UserRePassword){
                    $(".UserPassword, .UserRePassword").addClass("InputFieldError");
                    $(".UserPassword").focus();
                }
                else{
                    $(".InputFieldError").removeClass("InputFieldError");
                    alert("Updated", 'suc')
                }
            }
        }; // SubmitFunction Close 


    </script>



</head>

<body>

<Section>

    <div class="Head">

        <div align="Center">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="Head2">
                    <br>
                    <div style="background-color: rgb(255, 123, 0); padding: 10;">
                        <span style="color: white; text-transform: uppercase; font-size: 20px; font-weight: bold;">New Registration</span>
                    </div>
                    <br><br>
                    <div style="text-align: left;">
                        <div>Sponsor ID *</div>
                            <input class="InputType ValidInputField SponsorId" type="text" maxlength="100" placeholder="Sponsor ID" onkeyup="GetSponsorDetails()">
                            <br><br>
                        <div>Sponsor Naame *</div>
                            <i class="fa fa-spinner fa-pulse ShowSpinner"></i>
                            <input class="InputType SponsorName" type="text" readonly style="cursor:not-allowed" placeholder="Sponsor Name">
                            <br><br>
                        <div>First Name *</div>
                            <input class="InputType ValidInputField UserFirstName" type="text" maxlength="50" placeholder="First Name">
                            <br><br>
                        <div>Last Name *</div>
                            <input class="InputType ValidInputField UserLastName" type="text" maxlength="50" placeholder="Last Name">
                            <br><br>
                        <div>Select Gender *</div>
                            <label style="cursor:pointer">
                                <span>Male &nbsp;  </span>
                                <input name="Gender" value="male" class="RadioButton UserGender" checked type="radio"> &nbsp;&nbsp;&nbsp;&nbsp;
                            </label>

                            <label style="cursor:pointer">
                                <span>Female &nbsp; </span>
                                <input name="Gender" value="female" class="RadioButton UserGender" type="radio"> &nbsp;&nbsp;&nbsp;&nbsp;
                            </label>
                            
                            <label style="cursor:pointer">
                                <span>Other &nbsp; </span>
                                <input name="Gender" value="other" class="RadioButton UserGender" type="radio">
                            </label>
                            
                            <br><br>
                        <div>Contact *</div>
                            <input class="InputType ValidInputField ValidateContactLength UserContact" type="number" placeholder="Contact No.">
                            <br><br>
                        <div>Email ID *</div>
                            <input class="InputType ValidInputField UserEmail" type="text" maxlength="100" placeholder="Email Id">
                            <br><br>
                        <div>PAN No*</div>
                            <input class="InputType ValidInputField UserPan" type="number" placeholder="PAN No.">
                            <br><br>
                        <div>Password *</div>
                            <input class="InputType ValidInputField UserPassword" type="password" maxlength="50" placeholder="Password">
                            <br><br>
                        <div>Re-Password *</div>
                            <input class="InputType ValidInputField UserRePassword" type="password" maxlength="50" placeholder="Re Password">
                            <br><br><br>

                        <button onclick="SubmitFunction()" class="DefaultButton">Submit</button>
                        <br><br>

                        </div>
                        

            </div>
        </div>
        <div class="container-fluid"></div>
        <br><br>
        
    </div>
    
</Section>
  
</body>

</html>