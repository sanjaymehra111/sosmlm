<html lang="en">

<head>

<Title>View Tree</Title>

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


<!-- For Matrix  -->
<%-- <link rel="stylesheet" href="/style/MatrixTreeStyle.css"> --%>
<%-- <script src="/script/MatrixTreeScript.js"></script> --%>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jstree/3.3.8/themes/default/style.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jstree/3.3.8/jstree.min.js"></script>




<style>
  .InputDefault{
    text-align:left;
    padding-left:0
  }
  .jstree-container-ul{
    color:gray;
    text-transform:capitalize;
  }
  .UserMatrixTree{
    background:white;
    width:97%;
    margin-top:20px;
    padding:10px;
    overflow: scroll;
  }

.jstree-themeicon-custom{
    width: 18px !important;
    height: 18px !important;
    background-size: 100% 100% !important;
 }
</style>


<script>

$(function () {
    $(".TopPageNamePre").html('View')
    $(".TopPageNamePost").html('Tree')

    $(".UpdateProfile").click(function(){
      alert('Updated');
    })

    var data = [
      {
          text: " node1",
          icon:'/images/user.png',
          children: [{ text: " child1", icon:'/images/user.png', children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png', children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png', children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png', children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png',children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png',children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png',children: [{text: " child1-2", icon:'/images/user.png',}, {text: " child1-2", icon:'/images/user.png',}]}]}]}]}]}]}]  }, {text: " child2", icon:'/images/user.png'}]
      }
    // {
    //     text: "node2",
    //     children: [{ text: "child3"}]
    // }
    ];


  $('#MatrixTreeView').jstree({
      'core' : {
        'data' : data,
      }
  });

}) // main function close

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
    <h4> <i class="fa fa-university"></i> &nbsp; Distributor Details</h4>
    </div>
    </div>
    </div>
    </div>
    </div>

    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">User ID</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">User Name</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Date Of Joining</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Designation</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Sponsor User ID</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="col-md-4"><br>
    <div style="text-align:left; color:gray">Sponsor User Name</div>
    <input class="InputDefault" type="text" readonly>
    </div>
    <div class="container-fluid"></div>
    </div>

    <div class="container-fluid"></div>
    <br>


  <div>
    <div class="welcome">
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
    <h4> <i class="fa fa-university"></i> &nbsp; Distributor Details</h4>
    </div>
    </div>
    </div>
    </div>
    </div>

    <%-- UserMatrixTree Start --%>

    <div class="UserMatrixTree" align="left">
    <br>
      <div id="MatrixTreeView">
      
      </div>
    </div>

    <%-- UserMatrixTree Close --%>


  </div>

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