/////////////////////////////////// ValidateInputField Start /////////////////////////////////////

function ValidateInputField(){
    var FieldNumber = 0;
    var TotalFieldNumber = 0;
    $(".ValidInputField").each(function(){
        TotalFieldNumber+=1;
        if($(this).val() == ""){
            $(this).addClass("InputFieldError");
            FieldNumber=0;
            $(this).first().focus();
            return false;
        } 
        else{
            FieldNumber+=1;
            $(this).removeClass("InputFieldError");
        }
    });
    if(FieldNumber == TotalFieldNumber)
        return true;
    else
        return false;
} 

/////////////////////////////////// ValidateInputField Close /////////////////////////////////////
// *
// *
// *
// *
// *
// *
/////////////////////////////////// Press Enter Start ////////////////////////////////////////////

function InputKeyPress(event, Callfn){
    if(event.which == 13)
        Callfn();
}

/////////////////////////////////// Press Enter Close ////////////////////////////////////////////
// *
// *
// *
// *
// *
// *
/////////////////////////////////// Function Start ///////////////////////////////////////////////
    
$(function(){

    //////////////////////////////////// No Space Fiel ///////////////////////////////////////////
    
    $(".NoSpaceField").on("keyup", function(event){
        if(event.type == "keyup")
            $(this).val($(this).val().replace(/ +?/g, ''));
    })// Press Enter

    /////////////////////////////////// Contact Length ///////////////////////////////////////////

    $(".ValidateContactLength").keypress(function(){
        if($(this).val().length > 9)
            return false;
    }) // contact length
    
    ///////////////////////////////////  OTP Length //////////////////////////////////////////////
    
    $(".ValidateOtpLength").keypress(function(){
        if($(this).val().length > 5)
            return false;
    }) // otp length

    ///////////////////////////////////  Press Enter //////////////////////////////////////////////

    $(".ValidInputField").on("keyup", function(event){
        if(event.which == 13)
            SubmitFunction();
    })// Press Enter


})

/////////////////////////////////// Function Close ///////////////////////////////////////////////
