<html lang="en">

<head>

    <Title>Dashboard</Title>

    <!-- Bootstrap -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Embed Header CSS -->
    <link rel="stylesheet" href="/style/adminHeader.css">

    <!-- Embed DataTable CSS -->
    <link rel="stylesheet" href="/style/dataTable.css">

    <!-- Embed Button CSS -->
    <link rel="stylesheet" href="/style/buttonStyle.css">
    
    <!-- Embed Header Script -->
    <script src="/script/adminHeader.js"></script>
    
    <!-- For Search Table -->
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    
    <!-- For Chart -->
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-ui.min.js"></script>
    <script src="https://cdn.anychart.com/releases/v8/js/anychart-exports.min.js"></script>
    <link href="https://cdn.anychart.com/releases/v8/css/anychart-ui.min.css" type="text/css" rel="stylesheet">
    <link href="https://cdn.anychart.com/releases/v8/fonts/css/anychart-font.min.css" type="text/css" rel="stylesheet">


    <style>
        #chartContainer {
            width: 100%;
            margin: 0;
            padding: 0;
            height: 400px;
        }

        .anychart-credits-text,
        .anychart-credits-logo {
            display: none !important;
        }

        .announcementText{
            width:97%;
            color:black;
            padding:10;
            resize: none;
            height:200px;
            border-radius:10px;
            border:solid 5px gray;
            font-size:12px;
            text-transform:capitalize;
            line-height: 2;

        }

    </style>


    <script>

        $(function(){
            $(".TopPageNamePre").html('My')
            $(".TopPageNamePost").html('Dashboard')
        })

        $(function () {


            //************************* Search For Each Column  ************************* 

            // $('#example thead tr').clone(true).appendTo( '#example thead' );
            // 		    $('#example thead tr:eq(1) th').each(  function (i) {
            // 		        var title = $(this).text();
            // 		        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );

            // 		        $( 'input', this ).on( 'keyup change', function () {
            // 		            if ( table.column(i).search() !== this.value ) {
            // 		                table
            // 		                    .column(i)
            // 		                    .search( this.value )
            // 		                    .draw();
            // 		            }
            // 		        } );

            // 		        $('#fini, #ffin').change( function() {
            // 			        table.draw();
            // 			    } );
            //         } );



            //************************* Search For Each Column  //************************* 



            //         $('#example2 thead tr').clone(true).appendTo( '#example2 thead' );
            // 		    $('#example2 thead tr:eq(1) th').each(  function (i) {
            // 		        var title = $(this).text();
            // 		        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );

            // 		        $( 'input', this ).on( 'keyup change', function () {
            // 		            if ( table.column(i).search() !== this.value ) {
            // 		                table
            // 		                    .column(i)
            // 		                    .search( this.value )
            // 		                    .draw();
            // 		            }
            // 		        } );

            // 		        $('#fini, #ffin').change( function() {
            // 			        table.draw();
            // 			    } );
            //         } );



            var table = $("#example, #example2").DataTable({
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
            $("#example, #example2").wrap("<div class='service_provider_details' style='overflow:scroll'></div>");

        })

    </script>

    <script>

        anychart.onDocumentReady(function () {
            // create line chart
            var chart = anychart.line();

            // set chart padding
            chart.padding([10, 20, 5, 20]);

            // turn on chart animation
            chart.animation(true);

            // turn on the crosshair
            chart.crosshair(true);

            // set chart title text settings
            chart.title('Member Analysis Chart');

            // set y axis title
            chart.yAxis().title('Member Analysis Chart');

            // create logarithmic scale
            var logScale = anychart.scales.log();
            logScale.minimum(1).maximum(500);

            // set scale for the chart, this scale will be used in all scale dependent entries such axes, grids, etc
            chart.yScale(logScale);

            // create data set on our data,also we can pud data directly to series
            var dataSet = anychart.data.set([
                ['1 Dec 2020', '9'],
                ['2 Dec 2020', '26'],
                ['3 Dec 2020', '45'],
                ['4 Dec 2020', '66'],
                ['5 Dec 2020', '80'],
                ['6 Dec 2020', '90'],
                ['7 Dec 2020', '100']
            ]);

            // map data for the first series,take value from first column of data set
            var firstSeriesData = dataSet.mapAs({ x: 0, value: 1 });

            // map data for the second series,take value from second column of data set
            var secondSeriesData = dataSet.mapAs({ x: 0, value: 2 });

            // map data for the third series, take x from the zero column and value from the third column of data set
            var thirdSeriesData = dataSet.mapAs({ x: 0, value: 3 });

            // temp variable to store series instance
            var series;

            // setup first series
            series = chart.line(firstSeriesData);
            series.name('Join Member');
            // enable series data labels
            series.labels().enabled(true).anchor('left-bottom').padding(5);
            // enable series markers
            series.markers(true);

            // setup second series
            // series = chart.line(secondSeriesData);
            // series.name('Comment blog posts');
            // // enable series data labels
            // series.labels().enabled(true).anchor('left-bottom').padding(5);
            // // enable series markers
            // series.markers(true);

            // setup third series
            // series = chart.line(thirdSeriesData);
            // series.name('Email delivery support');
            // // enable series data labels
            // series.labels().enabled(true).anchor('left-bottom').padding(5);
            // // enable series markers
            // series.markers(true);

            // turn the legend on
            chart.legend().enabled(true).fontSize(13).padding([0, 0, 20, 0]);

            // set container for the chart and define padding
            chart.container('chartContainer');
            // initiate chart drawing
            chart.draw();
        });

    </script>


</head>

<body>

    <jsp:include page="AdminLeftMenu.jsp" />

    <section id="contents">

        <jsp:include page="AdminTopMenu.jsp" />


        <div class="Admin_Dashboard">

            <div class="welcome">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h4> <i class="fa fa-user"></i> &nbsp; Joining Summery</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section class='statis text-center'>
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-2">
                            <div class="box boxStyle bg-primary">
                                <i class="fa fa-users"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Today's Members</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle danger">
                                <i class="fa fa-check"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Today's Active Member</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle warning">
                                <i class="fa fa-user-circle"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Total Active Members</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle success">
                                <i class="fa fa-user"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Overall Members</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle bg-primary">
                                <i class="fa fa-credit-card"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>KYC Pending</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle danger">
                                <i class="fa fa-thumbs-up"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>KYC Completed</span>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <div class="welcome">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h4> <i class="fa fa-suitcase"></i> &nbsp; Financial Summery</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section class='statis text-center'>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="box boxStyle warning">
                                <i class="fa fa-google-wallet"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Amount Collect</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle success">
                                <i class="fa fa-money"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>E-Wallet Collected</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle bg-primary">
                                <i class="fa fa-money"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Total withdrawal</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle danger">
                                <i class="fa fa-file"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>TDS Charge</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="box boxStyle warning">
                                <i class="fa fa-user-secret"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Admin Charge</span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div style='height:100px' class="box boxStyle success">
                                <i class="fa fa-inr"></i>
                                <h5>5,154</h5>
                                <hr style='padding:2px; margin:0px'>
                                <span>Net Income</span>
                            </div>
                        </div>

                    </div>
                </div>
            </section>




            <div class="welcome">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h4> <i class="fa fa-bar-chart"></i> &nbsp; Member Analysis</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div style="width:98%">
                <div style="margin-left:2%;">
                    <br>
                    <div id="chartContainer"></div>
                </div>
            </div>


            <div class="col-md-6">

                <div class="welcome">
                    <div class="col-md-12">
                        <div class="content">
                            <h4> <i class="fa fa-users"></i> &nbsp; Reacent Member</h4>
                        </div>
                    </div>
                </div>

                <table id="example" class="table table-hover responsive nowrap" style="width:100%" cellspacing="10">

                    <thead>
                        <tr style="color: white; background-color: #6f6486;">
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Date</th>
                        </tr>
                    </thead>

                    <tbody id="get_users_details"
                        style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
                        <tr>
                            <td>01</td>
                            <td>Kunal</td>
                            <td>2011/04/25</td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Ramesh</td>
                            <td>2011/07/25</td>
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Nitin</td>
                            <td>2011/04/25</td>
                        </tr>
                        <tr>
                            <td>04</td>
                            <td>Nitin</td>
                            <td>2011/04/25</td>
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>Nitin</td>
                            <td>2011/04/25</td>
                        </tr>
                    </tbody>

                </table>
            </div>

            <div class="col-md-6">
                <div class="welcome">
                    <div class="col-md-12">
                        <div class="content">
                            <h4> <i class="fa fa-line-chart"></i> &nbsp; Top Earner</h4>
                        </div>
                    </div>
                </div>


                <table id="example2" class="table table-hover responsive nowrap" style="width:100%" cellspacing="10">

                    <thead>
                        <tr style="color: white; background-color: #6f6486;">
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Earnings</th>
                        </tr>
                    </thead>

                    <tbody id="get_users_details"
                        style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
                        <tr>
                            <td>01</td>
                            <td>Vikas</td>
                            <td>10900.00</td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Kamlesh kumar jha</td>
                            <td>990000.00</td>
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Rajesh</td>
                            <td>10489.00</td>
                        </tr>
                        <tr>
                            <td>04</td>
                            <td>Ramesh</td>
                            <td>92398.00</td>
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>Ramesh</td>
                            <td>92398.00</td>
                        </tr>

                    </tbody>

                </table>

            </div>


            <div class="welcome">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h4> <i class="fa fa-globe"></i> &nbsp; Announcement</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <section class='statis text-center'>
                 <div class="container-fluid">
                      <div class="row">
                        <textarea class="announcementText">
Rohan
welcome to pay put India
Hello dear leader good morning all of you
Hello dear leader good morning all of you
Welcome To  Click Trade
                        </textarea>
                    </div>
                </div>
            </section>    
          
        </div>

        <div class="container-fluid"></div>
        <br><br><br><br>
    </section>

</body>

</html>