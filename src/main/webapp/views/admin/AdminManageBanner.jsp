<html lang="en">

<head>

<Title>Manage Banners</Title>

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
<link rel="stylesheet" href="/style/dataTable.css">
<link rel="stylesheet" href="/style/buttonStyle.css">
<link rel="stylesheet" href="/style/inputStyle.css">
<link rel="stylesheet" href="/style/layoutStyle.css">

<!-- Embed Header Script -->
<script src="/script/ValidationScript.js"></script>
<script src="/script/adminHeader.js"></script>

<!-- For Search Table -->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>



<style>
    .ql-toolbar {
        width: 97% !important;
        background: white;
    }

    .dataTables_info {
        color: black !important
    }

    .dataTables_filter input {
        display: block !important;
    }

    .dataTables_filter input {
        width: 100% !important;
    }

    .ShowAddImage {
        width: 100%;
        border: solid 1px gray;
        padding: 3px;
        border-radius: 10px;
    }
</style>

<script>

    $(function () {
        $(".TopPageNamePre").html('Our')
        $(".TopPageNamePost").html("Banners")


        $(".AddAnnouncement").click(function () {
            alert('Updated');
        })



        $('#example thead tr').clone(true).appendTo('#example thead');
        $('#example thead tr:eq(1) th').each(function (i) {
            var title = $(this).text();
            $(this).html('<input type="text" placeholder="Search ' + title + '" />');

            $('input', this).on('keyup change', function () {
                if (table.column(i).search() !== this.value) {
                    table
                        .column(i)
                        .search(this.value)
                        .draw();
                }
            });

            $('#fini, #ffin').change(function () {
                table.draw();
            });
        });

        var table = $("#example").DataTable({
            aaSorting: [],
            responsive: true,
            orderCellsTop: true,
            fixedHeader: true,
            "pageLength": 5,
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


        $(".UploadFile").click(function () {
            $(".SelectFile").click();
        })

        $(".SelectFile").on("change", function () {
            var file = $(this).val().split("fakepath\\")[1];
            $(".ShowFileName").val(file);
        })


        $(".DeleteData").click(function () {
            var DataId = $(this).attr("id");
            var resp = confirm("Confirm To Delete")
            if (resp) {
                alert("Deleted", "err")
            }
        })

    })


    function SubmitFunction() {
        var UserEmail = $(".SelectPage").val();
        var UserProfile = $(".SelectFile")[0].files;

        //************* Add Multiple image Data To Ajax ********//

        // for(var i =0; i<img.length; i++){
        // 	data.append("file",$(".image_button")[0].files[i]);
        // }

        var returns = ValidateInputField();
        if (returns) {
            $(".InputFieldError").removeClass("InputFieldError");
            alert("Updated", 'suc')
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

                                    <div class="welcome">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important"> 
                                                    <h4> <i class="fa fa-pencil-square-o"></i> &nbsp; Add Banners </h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <br>


                                    <div style="margin-top:25px">

                                        <div class="col-md-2"></div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Upload File</div>
                                            <i class="fa fa-upload iconStyle UploadFile" style="cursor:pointer"></i>
                                            <input class="InputDefault UploadFile ShowFileName ValidInputField"
                                                type="text" placeholder="Select File" readonly
                                                style="cursor:pointer">
                                            <input class="InputDefault SelectFile hidden" type="file">
                                        </div>

                                        <div class="col-md-4"><br>
                                            <div style="text-align:left; color:gray">Page</div>
                                            <select class="InputDefault SelectPage ValidInputField">
                                                <Option>Homepage</option>
                                                <Option>Profile</option>
                                                <Option>Advertisement</option>
                                            </select>
                                        </div>

                                    </div>




                                    <div class="container-fluid"></div>

                                    <div align="center">
                                        <br><br>
                                        <button class="DefaultButton" onclick="SubmitFunction()"
                                            style="width:200px">Update</button>
                                    </div>

                                    <br>

                                    <div class="welcome">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important"> 
                                                    <h4> <i class="fa fa-street-view"></i> &nbsp; Our Banners</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <br>

                                    <table id="example" class="table table-hover responsive nowrap" style="width:100%; border:solid 1px lightgray" cellspacing="10">

                                        <thead>
                                            <tr style="color: white; background-color: #6f6486;">
                                                <th>Page</th>
                                                <th style="text-align:center">Date</th>
                                                <th style="text-align:center">Option</th>
                                            </tr>
                                        </thead>

                                        <tbody id="GetDetails"
                                            style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
                                            <tr>
                                                <td>New Delhi</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>New India</td>
                                                <td style="text-align:center;">10/12/2020</td>
                                                <td style="text-align:center; min-width: 102px;"> 
                                                    <i title="View" data-toggle="modal" data-target="#myBannerModal" class="fa fa-eye ActionFontAwesomeView ActionFontAwesome"></i> &nbsp; 
                                                    <i title="Delete" class="fa fa-times ActionFontAwesomeDelete DeleteData ActionFontAwesome"></i>
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





    <div class="container-fluid"></div>
    <br><br><br><br>
</section>



<div class="ViewAdvertisementSection">

    <%-- <!-- Trigger the modal with a button -->
        <button type="button" data-target="#myBannerModal">Open Modal</button> --%>

        <!-- Modal -->
        <div id="myBannerModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Banner</h4>
                    </div>
                    <div class="modal-body">
                        <img class="ShowAddImage" src="/images/mlm_banner.jpg">
                    </div>
                    <%-- <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div> --%>
            </div>

        </div>
</div>

</div>


</body>

</html>