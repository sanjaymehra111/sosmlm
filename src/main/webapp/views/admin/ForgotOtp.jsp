<!-- Embed Script -->
<script src="/script/ForgotOtpScript.js"></script>

<div class="section2">
    <div class="ForgetPassword" align='center'>

        <!-- Modal -->
        <div id="ForgotPasswordModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Change Password</h4>
                    </div>
                    <div class="modal-body">

                        <div class="ContactSection">
                            <input type="number" class="inputField UserContact UserForgotContact NoSpaceFiel ValidateContactLength" placeholder="Contact Number"><br><br>
                            <button style="width:120px" onclick="SendOtpFunction()" class="DefaultButton">Sned OTP</button> <br><br><br>
                        </div>

                        <div class="ChangePasswordSection" style="display:none">
                            <input type="number" class="inputField ShowUserContact" style="cursor:not-allowed" placeholder="Contact Number" readonly> <br><br>
                            <input type="number" class="inputField UserForgotInputField NoSpaceFiel ForgotPasswordOtp ValidateOtpLength" placeholder="Enter OTP"><br><br>
                            <input type="password" class="inputField UserForgotInputField NoSpaceFiel ForgotPassword" placeholder="New Password"><br><br>
                            <input type="password" class="inputField UserForgotInputField NoSpaceFiel ForgotRePassword" placeholder="Re Password"><br><br>
                            <button style="width:150px" onclick="ForgotPasswordFunction()" class="DefaultButton ForgotPasswordFunction">Confirm</button> &nbsp;
                            <button style="width:120px" onclick="SendOtpFunction()" class="DefaultButton">ReSend OTP</button><br><br><br>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </div>
</div>