<!DOCTYPE html>
<html lang="en">

<head>

<Title>Admin Announcement</Title>

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
<script src="/script/adminHeader.js"></script>

<!-- For Search Table -->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>


<!-- ***************************************************** Embed Editor ***************************************************** -->

<!-- Main Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<script src="https://cdn.quilljs.com/1.3.6/quill.min.js"></script>

<!-- Theme included stylesheets -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
<link href="https://cdn.quilljs.com/1.3.6/quill.bubble.css" rel="stylesheet">

<!-- For Maths Formula -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.css"
    integrity="sha384-qCEsSYDSH0x5I45nNW4oXemORUZnYFtPy/FqB/OjqxabTMW5HVaaH9USK4fN3goV" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.js"
    integrity="sha384-YFVvRUwgqxkAVN9bmAVLsKilmOKfQLyUx0ZlmDNs0aBUTsvMLnRxE3Km0NrZa0i9"
    crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/webfontloader@1.6.28/webfontloader.js"
    integrity="sha256-4O4pS1SH31ZqrSO2A/2QJTVjTPqVe+jnYgOWUVr7EEc=" crossorigin="anonymous"></script>

<!-- ***************************************************** Embed Editor ***************************************************** -->



<style>
    .ql-toolbar {
        width: 97% !important;
        background: white;
    }

    .dataTables_info {
        color: black !important
    }

    .ql-tooltip {
        z-index: 9 !important;
    }

    .dataTables_filter input {
        display: block !important;
    }

    .dataTables_filter input {
        width: 100% !important;
    }
</style>

<script>

    $(function () {
        $(".TopPageNamePre").html('My')
        $(".TopPageNamePost").html('Announcement')


        // Text Area option

        var toolbarOptions = [
            ['image'],
            ['link'],
            ['bold', 'italic', 'underline'],        // toggled buttons
            [{ 'header': 1 }, { 'header': 2 }],               // custom button values
            [{ 'list': 'ordered' }, { 'list': 'bullet' }],
            [{ 'script': 'sub' }, { 'script': 'super' }],      // superscript/subscript
            [{ 'size': ['small', false, 'large', 'huge'] }],  // custom dropdown
            [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
            [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
            [{ 'font': [] }],
            [{ 'align': [] }],
            ['formula'],
        ];


        var quill = new Quill('#editor', {
            modules: {
                formula: true,
                toolbar: toolbarOptions
            },
            theme: 'snow'
        });


        //**************** Show Element ****************//

        var Showquill = new Quill('#ShowEditor', {
            theme: 'bubble'
        });

        Showquill.enable(false); // disable input




        $(".AddAnnouncement").click(function () {
            var TextData = quill.getContents();
            Showquill.setContents(TextData);
            if (quill.getText().length < 2) {
                $("#editor").addClass("InputFieldError");
                return false;
            }
            else {
                //console.log(TextData)
                $(".InputFieldError").removeClass("InputFieldError");
                alert('Announcement Created');
            }
        })



        $(".TopPageNamePre").html('Our')
        $(".TopPageNamePost").html("Advertisement")

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
            //"bFilter": true, // search bar


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
        $("#example").wrap("<div class='service_provider_details' style='overflow:scroll; color:#333333'></div>");



        $(".DeleteData").click(function () {
            var DataId = $(this).attr("id");
            var resp = confirm("Confirm To Delete")
            if (resp) {
                alert("Deleted", "err")
            }
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
                                                <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                    <h4> <i class="fa fa-pencil-square-o"></i> &nbsp; Add Announcement</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <br>

                                    <!-- Create the editor container -->
                                    <div id="editor" style='height:200px; width:97%; background:white;'></div>


                                    <!-- Create the editor container -->
                                    <div id="ShowEditor"
                                        style='height:200px; width:97%; background:white; display:none'>
                                        <p>Hello World!</p>
                                    </div>



                                    <div class="container-fluid"></div>

                                    <div align="center">
                                        <br><br>
                                        <button class="DefaultButton AddAnnouncement"
                                            style="width:200px">Update</button>
                                    </div>
                                    <br>
                                    <div class="welcome">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="content" style="background-color:#d8d3d3!important; color:gray!important; padding:2px!important">
                                                    <h4> <i class="fa fa-bullhorn"></i> &nbsp; Announcements</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                    <br>

                                    <table id="example" class="table table-hover responsive nowrap"
                                        style="width:100%; border:solid 1px lightgray" cellspacing="10">

                                        <thead>
                                            <tr style="color: white; background-color: #6f6486;">
                                                <th>Message</th>
                                                <th style="text-align:center">Date</th>
                                                <th style="text-align:center">Delete</th>
                                            </tr>
                                        </thead>

                                        <tbody id="GetDetails"
                                            style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
                                            <tr>
                                                <td>Hi Everyone</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Hi Everyone</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Hi Everyone</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Hi Everyone</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Hi Everyone</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Good Morning</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
                                            </tr>
                                            <tr>
                                                <td>Hi</td>
                                                <td style="text-align:center">10/12/2020</td>
                                                <td style="text-align:center"><button style="width:100px; padding:5; outline:none" class="btn btn-danger DeleteData">Delete</button></td>
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

</body>

</html>