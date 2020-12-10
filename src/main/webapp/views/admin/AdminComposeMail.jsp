<html lang="en">

<head>

<Title>Compose Mail</Title>

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

<!-- Embed DataTable CSS -->
<link rel="stylesheet" href="/style/dataTable.css">

<!-- Embed Button CSS -->
<link rel="stylesheet" href="/style/buttonStyle.css">

<!-- Embed Input CSS -->
<link rel="stylesheet" href="/style/inputStyle.css">

<!-- Embed Layout CSS -->
<link rel="stylesheet" href="/style/layoutStyle.css">

<!-- Embed Header Script -->
<script src="/script/adminHeader.js"></script>

<!-- For Search Table -->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    
<style>
.TextArea{
    resize:none;
    border:solid 1px lightgray;
    margin-top:10px;
}
.InputDefault{
    text-align:left
}
.MemberCheck{
    transform:scale(1.5);
}
.MemberLabel{
    font-size:12px;
    cursor:pointer;
}

</style>

<script>

$(function () {
  $(".TopPageNamePre").html('Compose')
  $(".TopPageNamePost").html("Mail")


  $(".ComposeMail").click(function(){
    alert('Mail Sent');
  })


})

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

<div class="welcome">
<div class="container-fluid">
<div class="row">
<div class="content"
style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
<h4> <i class="fa fa-pencil-square-o"></i> &nbsp; Compose Mail</h4>
</div>
</div>
</div>
</div>

<br> 


<div style="margin-top:25px">

<div class="col-md-4"><br>
    <div style="text-align:left; color:gray">To</div>
    <input class="InputDefault" type="text" maxlength="100" placeholder="Add a Tag">
</div>

<div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Subject</div>
    <input class="InputDefault" type="text" maxlength="100" placeholder="Subject">
</div>


<div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Message Type</div>
    <select class="InputDefault">
        <option>Other</option>
        <option>Joining</option>
        <option>Greeting</option>
        <option>Meeting</option>
        <option>Withdraw</option>
    </select>
</div>

<div class="col-md-12"><br>
    <div style="text-align:left; color:gray">Message</div>
    <textarea class="InputDefault TextArea" maxlength="100"> Message </textarea>
</div>

<div class="col-md-12" align="left" style="color:gray"><br>

<label class="MemberLabel">
    <input class="MemberCheck" type="checkbox"> <span>&nbsp; SEND TO ALL MEMBER</span>
</label>
 
</div>

</div>

</div>




<div class="container-fluid"></div>

<div align="center">
<br><br>
<button class="DefaultButton ComposeMail" style="width:200px">Send</button>
</div>

</div>
<div>


<div class="container-fluid"></div>
</div>
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