<html lang="en">

<head>

<Title>Edit Profile</Title>

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

<!-- Embed Button CSS -->
<link rel="stylesheet" href="/style/buttonStyle.css">

<!-- Embed Input CSS -->
<link rel="stylesheet" href="/style/inputStyle.css">

<!-- Embed Layout CSS -->
<link rel="stylesheet" href="/style/layoutStyle.css">

<!-- Embed Header Script -->
<script src="/script/adminHeader.js"></script>

<style>
.InputDefault{
    text-align:left;
    padding-left:0
}
</style>


<script>

    $(function () {
        $(".TopPageNamePre").html('User')
        $(".TopPageNamePost").html('Profile')

        $(".userImage").click(function () {
            $(".selectImage").click();
        })

        $(".selectImage").change(function () {
            readURL(this);
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.userImage').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $(".UpdateProfile").click(function(){
            alert('Updated');
        })

    })

</script>

<style>
    .userImage {
        width: 100px;
        height: 100px;
        border-radius: 100px;
        border: solid 2px lightgray;
        padding: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    .userImage:hover {
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


                                        <div class="col-md-4"><br>
                                            <img class="userImage" src="/images/adminicon2.png">
                                            <input type='file' class="hidden selectImage">
                                        </div>

                                        <div class="col-md-8"><br>

                                        <div style="margin-top:25px">

                                            <div class="col-md-6"><br>
                                                <div style="text-align:left; color:gray">First Name</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="First Name">
                                            </div>
                                            
                                            <div class="col-md-6"><br>
                                                <div style="text-align:left; color:gray">Last Name</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="Last Name">
                                            </div>
                                        </div>

                                        </div>



                                        <div style="margin-top:25px">

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Gender</div>
                                                <select class="InputDefault">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                </select>
                                            </div>

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Contact</div>
                                                <input class="InputDefault" type="number" maxlength="100" placeholder="Contact">
                                            </div>
                                            
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Email ID</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="Email ID">
                                            </div>
                                        </div>

                                        <div style="margin-top:25px">

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Father / Husband Name</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="Father / Husband Name">
                                            </div>
                                            
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Nominee Name</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="Nominee Name">
                                            </div>

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Nominee Relation</div>
                                                <input class="InputDefault" type="text" maxlength="100" placeholder="Nominee Relation">
                                            </div>

                                        </div>

                                        <div style="margin-top:25px">  
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Date Of Birth</div>
                                                <input class="InputDefault" type="date" maxlength="100" placeholder="Date Of Birth">
                                            </div>

                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Aadhar Number</div>
                                                <input class="InputDefault" type="number" placeholder="Aadhar Number">
                                            </div>
                                            
                                            <div class="col-md-4"><br>
                                                <div style="text-align:left; color:gray">Pan Number</div>
                                                <input class="InputDefault" type="text" maxlength="10" placeholder="Pan Number">
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
                                                            <h4> <i class="fa fa-map-marker"></i> &nbsp; Address Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Country</div>
                                            <select class="InputDefault">
                                                <option>abc</option>
                                                <option>defg</option>
                                            </select>
                                        </div>  
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">State</div>
                                            <select class="InputDefault">
                                                <option>abc</option>
                                                <option>defg</option>
                                            </select>
                                        </div>  
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">District</div>
                                            <select class="InputDefault">
                                                <option>abc</option>
                                                <option>defg</option>
                                            </select>
                                        </div>  
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">City</div>
                                            <select class="InputDefault">
                                                <option>abc</option>
                                                <option>defg</option>
                                            </select>
                                        </div>  
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Address</div>
                                            <input class="InputDefault" type="text" maxlength="1000" placeholder="Address">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Pin Code</div>
                                            <input class="InputDefault" type="number" maxlength="6" placeholder="Pin Code">
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
                                                            <h4> <i class="fa fa-university"></i> &nbsp; Bank Details</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Bank Name</div>
                                            <input class="InputDefault" type="text" maxlength="100" placeholder="Bank Name">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Bank Address</div>
                                            <input class="InputDefault" type="text" maxlength="100" placeholder="Bank Address">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">IFSC Code</div>
                                            <input class="InputDefault" type="text" maxlength="100" placeholder="IFSC Code">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Account Number</div>
                                            <input class="InputDefault" type="text" maxlength="100" placeholder="Account Number">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">A/C Holder Name</div>
                                            <input class="InputDefault" type="text" maxlength="10" placeholder="A/C Holder Name">
                                        </div>
                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">PAN Number</div>
                                            <input class="InputDefault" type="text" maxlength="100" placeholder="PAN NUmber">
                                        </div>
                                        <div class="container-fluid"></div>
                                    </div>


                                    <div>
                                        <br><br>
                                        <button class="DefaultButton UpdateProfile" style="width:200px">Update</button>
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