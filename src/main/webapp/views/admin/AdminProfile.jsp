<html lang="en">

<head>

<Title>Admin Profile</Title>

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
<script src="/script/adminHeader.js"></script>
<script src="/script/ValidationScript.js"></script>

<style>
.InputDefault{
    text-align:left;
    padding:10px;
}
</style>

<script>

    $(function () {
        $(".TopPageNamePre").html('My')
        $(".TopPageNamePost").html('Profile')

        $(".adminImage").click(function () {
            $(".selectImage").click();
        })

        $(".selectImage").change(function () {
            readURL(this);
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.adminImage').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $(".ValidInputField").on("keyup", function(event){
            if(event.which == 13)
                SubmitFunction();
        })// Press Enter

    })

    function SubmitFunction(){


        var UserEmail = $(".UserEmail").val();
        var UserHostEmail = $(".UserHostEmail").val();
        var UserSenderEmail = $(".UserSenderEmail").val();
        var UserSenderPassword = $(".UserSenderPassword").val();
        var UserCompanyName = $(".UserCompanyName").val();
        var UserCompanyCode = $(".UserCompanyCode").val();
        var UserCompanyAddress = $(".UserCompanyAddress").val();
        var UserCompanyCity = $(".UserCompanyCity").val();
        var UserCompanyState = $(".UserCompanyState").val();
        var UserCompanyCountry = $(".UserCompanyCountry").val();
        var UserCompanyPhone = $(".UserCompanyPhone").val();
        var UserProfile = $(".selectImage")[0].files;

        //************* Add Multiple image Data To Ajax ********//

        // for(var i =0; i<img.length; i++){
		// 	data.append("file",$(".image_button")[0].files[i]);
		// }

        var returns = ValidateInputField();
        if(returns){
            if(UserCompanyPhone.length != 10)
                $(".UserCompanyPhone").addClass("InputFieldError");
            else{
                $(".InputFieldError").removeClass("InputFieldError");
                alert("Updated", 'suc')
            }
        }
    }; // SubmitFunction Close 

</script>

<style>
    .adminImage {
        width: 100px;
        height: 100px;
        border-radius: 100px;
        border: solid 2px lightgray;
        padding: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    .adminImage:hover {
        border: solid 2px gray;
        box-shadow: 5px 5px 5px gray;
    }
</style>

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
                                                        <div class="content"
                                                            style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                            <h4> <i class="fa fa-user-secret"></i> &nbsp; Personal Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-md-3"><br>
                                            <img class="adminImage" src="/images/adminicon2.png">
                                            <input type='file' class="hidden selectImage">
                                        </div>

                                        <div style="margin-top:25px">
                                            <div class="col-md-3"><br>
                                                <div style="text-align:left; color:gray">Name</div>
                                                <input class="InputDefault" type="text" placeholder="User Name" maxlength="50" disabled style="cursor:not-allowed">
                                            </div>
                                            <div class="col-md-3"><br>
                                                <div style="text-align:left; color:gray">Contatc</div>
                                                <input class="InputDefault" type="number" placeholder="Contact" maxlength="10" disabled style="cursor:not-allowed">
                                            </div>
                                            <div class="col-md-3"><br>
                                                <div style="text-align:left; color:gray">Email</div>
                                                <input class="InputDefault ValidInputField UserEmail" type="text" placeholder="Email" maxlength="100">
                                            </div>
                                        </div>
                                        <div class="container-fluid"></div>
                                        <br>
                                    </div>
                                    <div>

                                        <div class="welcome">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="content"
                                                            style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                            <h4> <i class="fa fa-briefcase"></i> &nbsp; Company
                                                                Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Host Email</div>
                                            <input class="InputDefault ValidInputField UserHostEmail" type="text" placeholder="Host Email"  maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Sender Email</div>
                                            <input class="InputDefault ValidInputField UserSenderEmail" type="text" placeholder="Sender Email" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Sender Password</div>
                                            <input class="InputDefault ValidInputField UserSenderPassword" type="password" placeholder="Sender Password" maxlength="100">
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Company Name</div>
                                            <input class="InputDefault ValidInputField UserCompanyName" type="text" placeholder="Compant Name" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Company Code</div>
                                            <input class="InputDefault ValidInputField UserCompanyCode" type="text" placeholder="Company Code" maxlength="100">
                                        </div>
                                        
                                        <%-- <div class="col-md-4"><br>
                                        <div style="text-align:left; color:gray">Password</div> 
                                        <input class="InputDefault ValidInputField" type="password" value="karan" maxlength="100">
                                        </div> --%>

                                        <div class="container-fluid"></div>
                                        <br>

                                    </div>


                                    <div>

                                        <div class="welcome">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="content"
                                                            style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                            <h4> <i class="fa fa-map-marker"></i> &nbsp; Company Address</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Company Address</div>
                                            <input class="InputDefault ValidInputField UserCompanyAddress" type="text" placeholder="Company Address" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">City</div>
                                            <input class="InputDefault ValidInputField UserCompanyCity" type="text" placeholder="City" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">State</div>
                                            <input class="InputDefault ValidInputField UserCompanyState" type="text" placeholder="State" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Country</div>
                                            <input class="InputDefault ValidInputField UserCompanyCountry" type="text" placeholder="Country" maxlength="100">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Company Phone</div>
                                            <input class="InputDefault ValidInputField UserCompanyPhone ValidateContactLength" type="number" placeholder="Company Phone" maxlength="10">
                                        </div>

                                        <div class="container-fluid"></div>
                                    </div>


                                    <div>
                                        <br><br>
                                        <button class="DefaultButton UpdateProfile" onclick="SubmitFunction()" style="width:200px">Update</button>
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