<html lang="en">

<head>

<Title>User Sponsors</Title>

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
.ql-toolbar{
    width:97%!important;
    background:white;
}
.dataTables_info{
    color:black!important
}
.dataTables_filter input {
    display: block!important; 
}

.dataTables_filter input {
    width: 100%!important;
}
table>tbody>tr>td{
  padding:5px!important;
}    
</style>

<script>

$(function () {
  $(".TopPageNamePre").html('User')
  $(".TopPageNamePost").html("Sponsors")


  $(".AddAdvertisement").click(function(){
    alert('Updated');
  })



$('#example thead tr').clone(true).appendTo( '#example thead' );
    $('#example thead tr:eq(1) th').each(  function (i) {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );

        $( 'input', this ).on( 'keyup change', function () {
            if ( table.column(i).search() !== this.value ) {
                table
                    .column(i)
                    .search( this.value )
                    .draw();
            }
        } );

        $('#fini, #ffin').change( function() {
            table.draw();
        } );
} );

var table = $("#example").DataTable({
    aaSorting: [],
    responsive: true,
    orderCellsTop: true,
    fixedHeader: true,
    "pageLength": 10,
    "bLengthChange": false, // page length
    "bFilter": true, // search bar


    columnDefs: [
        {
            responsivePriority: 1,
            targets: 0
        },
        {
            responsivePriority: 2,
            targets: -1
        }
    ]
});

$(".dataTables_filter input")
    .attr("placeholder", "Search here...")
    .css({
        width: "300px",
        display: "inline-block"
    });
$("#example").wrap("<div class='service_provider_details' style='overflow:scroll'></div>");


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
<h4> <i class="fa fa-user"></i> &nbsp; Member Details</h4>
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

<br> 

<div class="welcome">
<div class="container-fluid">
<div class="row">
<div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
<h4> <i class="fa fa-users"></i> &nbsp; Sponsors List</h4>
</div>
</div>
</div>
</div>





<br>

<table id="example" class="table table-hover responsive nowrap" style="width:100%; border:solid 1px lightgray" cellspacing="10">

<thead>
  <tr style="color: white; background-color: #6f6486;">
      <th>ID</th>
      <th>Name</th>
      <th>Package (Rs)</th>
      <th style="text-align:center">Total Member</th>
      <th style="text-align:center">Contact</th>
      <th style="text-align:center">Registered</th>
      <th style="text-align:center">Status</th>
  </tr>
</thead>

<tbody id="GetDetails"
  style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
  <tr>
      <td>987</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Active" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i> 
      </td>
  </tr>
    <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Deactive" class="fa fa-times ActionFontAwesomeDelete ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Active" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Deactive" class="fa fa-times ActionFontAwesomeDelete ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Active" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Active" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Active" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Deactive" class="fa fa-times ActionFontAwesomeDelete ActionFontAwesome"></i> 
      </td>
  </tr>

  <tr>
      <td>123</td>
      <td>karan</td>
      <td style="min-width: 140px;">Package 01 - 98000</td>
      <td style="text-align:center;">4</td>
      <td style="text-align:center;">9883838383</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center; min-width: 102px;">
        <i data-toggle="tooltip" title="Deactive" class="fa fa-times ActionFontAwesomeDelete ActionFontAwesome"></i> 
      </td>
  </tr>


</tbody>

</table>


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