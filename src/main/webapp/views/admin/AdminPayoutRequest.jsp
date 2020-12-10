<html lang="en">

<head>

<Title>Payout Request</Title>

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

.StatusSearch{
    width:200px;
    background:white;
    color:black;
    padding:7px;
    position:absolute;
    border-radius:5px;
    border:solid 1px lightgray;
    z-index:1!important;
}

@media(max-width:975px){
    .StatusSearch{
        position:unset;
        width:215px;
    }   
}
.NoHover:hover{
  box-shadow:0px 0px 0px;
}    
</style>

<script>

$(function () {
  $(".TopPageNamePre").html('Payout')
  $(".TopPageNamePost").html("Request")


  $(".AddAnnouncement").click(function(){
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


$(".StatusSearch").on("change", function(){
    table.columns(5).search(this.value).draw();   
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


<select class="StatusSearch" data-toggle="tooltip" title="Payout Status">
    <option disabled selected>SELECT STATUS</option>
    <option value='panding'>PANDING</option>
    <option value='approved'>APPROVED</option>
    <option value='rejected'>REJECTED</option>
    <option value=''>VIEW ALL</option>
</select>
<table id="example" class="table table-hover responsive nowrap" style="width:100%; border:solid 1px lightgray" cellspacing="10">

<thead>
  <tr style="color: white; background-color: #6f6486;">
      <th>ID</th>
      <th>User Name</th>
      <th>Contact</th>
      <th>Amount</th>
      <th style="text-align:center;">Date</th>
      <th style="text-align:center;">Stauts</th>
      <th style="text-align:center">Option</th>
  </tr>
</thead>

<tbody id="GetDetails"
  style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">rejected</span>
        <i data-toggle="tooltip" title="Rejected" class="fa fa-times ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">panding</span>
        <i data-toggle="tooltip" title="Panding" class="fa fa-spinner fa-pulse NoHover ActionFontAwesomeView ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">approved</span>
        <i data-toggle="tooltip" title="Approved" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">panding</span>
        <i data-toggle="tooltip" title="Panding" class="fa fa-spinner fa-pulse NoHover ActionFontAwesomeView ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">approved</span>
        <i data-toggle="tooltip" title="Approved" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">approved</span>
        <i data-toggle="tooltip" title="Approved" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">approved</span>
        <i data-toggle="tooltip" title="Approved" class="fa fa-check ActionFontAwesomeCheck ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">panding</span>
        <i data-toggle="tooltip" title="Panding" class="fa fa-spinner fa-pulse NoHover ActionFontAwesomeView ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
      </td>
  </tr>
  <tr>
      <td>123</td>
      <td>Karan</td>
      <td>1234567897</td>
      <td>25000</td>
      <td style="text-align:center;">10/12/2020</td>
      <td style="text-align:center;">
        <span class="PayoutStatus" style="display:none">panding</span>
        <i data-toggle="tooltip" title="Panding" class="fa fa-spinner fa-pulse NoHover ActionFontAwesomeView ActionFontAwesome"></i>
      </td>
      <td style="text-align:center; min-width: 100px;">
        <i data-toggle="tooltip" title="Approved" class="fa fa-thumbs-o-up ActionFontAwesomeCheck ActionFontAwesome"></i>        
          &nbsp;
        <i data-toggle="tooltip" title="Reject" class="fa fa-thumbs-o-down ActionFontAwesomeDelete ActionFontAwesome"></i>
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