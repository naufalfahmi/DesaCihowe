<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">

  <div class="row">
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3><?php echo $banyak_user['much_user']; ?></h3>

            <p>Banyak User</p>
          </div>
          <div class="icon">
            <i class="ion ion-ios-people"></i>
          </div>
        <a href="<?php echo base_url('user'); ?>" class="small-box-footer">Info Detail <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>

    <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $banyak_konten['much_konten']; ?></h3>

              <p>Banyak Konten</p>
            </div>
            <div class="icon">
              <i class="ion ion-social-buffer"></i>
            </div>
            <a href="<?php echo base_url('konten'); ?>" class="small-box-footer">Info Detail <i class="fa fa-arrow-circle-right"></i></a>
          </div>
    </div>

    <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
             <!--  <h3><?php echo $banyak_dok['much_dok']; ?></h3> -->
              <p>Banyak Dokumen</p>
            </div>
            <div class="icon">
              <i class="ion ion-folder"></i>
            </div>
            <a href="<?php echo base_url('dokumen'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
    </div>

    <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <!-- <h3><?php echo $banyak_portal['much_portal']; ?></h3> -->

              <p>Banyak Portal App</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="<?php echo base_url('portal_app'); ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
    </div>
  </div>

  <div class="row">
      <div class="col-md-4">
        <div class="box box-primary">
        <div class="box-body box-profile">
                      <img style="height:100px;width:100px;"
                      class="profile-user-img img-responsive img-circle" src="<?php
      								if($foto=="" || $foto=="NULL")
      								{
      									if($jenis_kelamin=="laki-laki")
      									{
      										echo base_url()."assets/img/template/default_boy.png";
      									}else
      									{
      										echo base_url()."assets/img/template/default_girl.png";
      									}
      								}
      								else
      								{
      									echo base_url('assets/img/user/'.$foto);
      								}?>
                      " alt="User profile picture">

                      <h3 class="profile-username text-center"><?php echo $nama; ?></h3>

                      <p class="text-muted text-center"><?php echo $role_name; ?></p>

                      <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                          <b>NIP</b> <a class="pull-right"><?php echo $usr['nip']; ?></a>
                        </li>
                        <li class="list-group-item">
                          <b>No.Telp</b> <a class="pull-right"><?php echo $usr['no_telp']; ?></a>
                        </li>
                        <li class="list-group-item">
                          <b>Email</b> <a class="pull-right"><?php echo $usr['email']; ?></a>
                        </li>
                        <li class="list-group-item">
                          <b>Alamat</b> <a class="pull-right"><?php echo $usr['alamat']; ?></a>
                        </li>

                      </ul>

                      <a href="<?php echo base_url('user/edit/'.$usr['id_user'].''); ?>" class="btn btn-primary btn-block"><b>Profil</b></a>
                    </div>
                    <!-- /.box-body -->
                  </div>
      </div>
      <div class="col-md-8">
        <!-- BAR CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Statistik Konten Dan Dokumen Tahun <?php echo Date('Y'); ?></h3>

            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height:230px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      </div>
    </div>

  </div>

  <!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/plugins/chartjs/Chart.min.js"></script>

<?php echo "<script>
$(function () {";?>
<?php
$bulan=array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli","Agustus","September","Oktober",
"November","Desember");
$bln_saat_ini=(INT) Date('m');
 ?>
 <?php echo
 'var areaChartData =
   {
     labels: ['?>
   <?php
   for($i=0;$i<$bln_saat_ini;$i++)
   {
     echo '"'.$bulan[$i].'"';
     if($i!=$bln_saat_ini-1)
     {
       echo ',';
     }
   }
   echo "],";
   ?>

   <?php

   echo 'datasets:
        [';

  echo '
  {
    label: "Konten",
    fillColor: "rgba(210, 214, 222, 1)",
    strokeColor: "rgba(210, 214, 222, 1)",
    pointColor: "rgba(210, 214, 222, 1)",
    pointStrokeColor: "#c1c7d1",
    pointHighlightFill: "#fff",
    pointHighlightStroke: "rgba(220,220,220,1)",
    data: [';
    for($j=0;$j<$bln_saat_ini;$j++)
    {
      $p=$this->model_dashboard->count_konten_date(Date('Y'),$j+1)->row_array();
      echo $p['mkonten'];
      if($j!=$bln_saat_ini-1)
      {
        echo ",";
      }
    }
  echo ']
    },';

   ?>

   <?php

   echo '{
     label: "Dokumen",
     fillColor: "rgba(60,141,188,0.9)",
     strokeColor: "rgba(60,141,188,0.8)",
     pointColor: "#3b8bba",
     pointStrokeColor: "rgba(60,141,188,1)",
     pointHighlightFill: "#fff",
     pointHighlightStroke: "rgba(60,141,188,1)",
     data: [';

     // for($j=0;$j<$bln_saat_ini;$j++)
     // {
     //   $p=$this->model_dashboard->count_dok_date(Date('Y'),$j+1)->row_array();
     //   echo $p['mdok'];
     //   if($j!=$bln_saat_ini-1)
     //   {
     //     echo ",";
     //   }
     // }

     echo ']
         }
        ]';

    ?>
<?php echo '};' ?>



<?php echo '

  //-------------
  //- BAR CHART -
  //-------------
  var barChartCanvas = $("#barChart").get(0).getContext("2d");
  var barChart = new Chart(barChartCanvas);
  var barChartData = areaChartData;
  barChartData.datasets[1].fillColor = "#00a65a";
  barChartData.datasets[1].strokeColor = "#00a65a";
  barChartData.datasets[1].pointColor = "#00a65a";
  var barChartOptions = {
    //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
    scaleBeginAtZero: true,
    //Boolean - Whether grid lines are shown across the chart
    scaleShowGridLines: true,
    //String - Colour of the grid lines
    scaleGridLineColor: "rgba(0,0,0,.05)",
    //Number - Width of the grid lines
    scaleGridLineWidth: 1,
    //Boolean - Whether to show horizontal lines (except X axis)
    scaleShowHorizontalLines: true,
    //Boolean - Whether to show vertical lines (except Y axis)
    scaleShowVerticalLines: true,
    //Boolean - If there is a stroke on each bar
    barShowStroke: true,
    //Number - Pixel width of the bar stroke
    barStrokeWidth: 2,
    //Number - Spacing between each of the X value sets
    barValueSpacing: 5,
    //Number - Spacing between data sets within X values
    barDatasetSpacing: 1,
    //String - A legend template
    legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
    //Boolean - whether to make the chart responsive
    responsive: true,
    maintainAspectRatio: true
  };
      barChartOptions.datasetFill = false;
      barChart.Bar(barChartData, barChartOptions);

  });
  </script>'; ?>

</section>
