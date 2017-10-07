<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Desa Cihowe &mdash; Informasi seputar desa cihowe</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />
  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Select 2 -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/select2/select2.min.css">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/ionicons/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
	<!-- Pace style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/pace/pace.min.css">

	<!-- DataTables -->
	<link rel="stylesheet" href="<?php echo base_url();?>assets/dashboard_template/adminLTE/plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
		<!-- jQuery 2.2.3 -->
	  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jQuery/jquery-2.2.3.min.js"></script>

	</head>
	<body class="hold-transition skin-green sidebar-mini">

		<header class="main-header">
		  <!-- Logo -->
		  <a href=" <?php echo base_url('dashboard'); ?>" class="logo">
		    <!-- mini logo for sidebar mini 50x50 pixels -->
		    <span class="logo-mini"><b>CI</b>HO</span>
		    <!-- logo for regular state and mobile devices -->
		    <span class="logo-lg"><b>Desa</b> 	Cihowe</span>
		  </a>

		  <!-- Header Navbar: style can be found in header.less -->
		  <nav class="navbar navbar-static-top">
		    <!-- Sidebar toggle button-->
		    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
		      <span class="sr-only">Toggle navigation</span>
		    </a>
		    <!-- Navbar Right Menu -->
		    <div class="navbar-custom-menu">
		      <ul class="nav navbar-nav">

						<li class="dropdown user user-menu">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		            <img src="
								<?php
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
								}
								?>" class="user-image" alt="User Image">
		            <span class="hidden-xs"><?php echo $nama; ?></span>
		          </a>
		          <ul class="dropdown-menu">
		            <!-- User image -->
		            <li class="user-header">
		              <img style="height:100px;width:100px;" src="<?php
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
									}
									?>" class="img-circle" alt="User Image">

		              <p>
		                <?php echo $nama.' - '.$role_name;  ?>
										<br/>
		                <small><?php echo $role_name.' Sejak '.$tgl_dibuat ?></small>
		              </p>
		            </li>

		            <!-- Menu Footer-->
		            <li class="user-footer">
		              <div class="pull-left">
		                <a href="<?php echo base_url('dashboard'); ?>" class="btn btn-default btn-flat">Profil</a>
		              </div>
		              <div class="pull-right">
		                <a href="<?php echo base_url('login/signout')?>" class="btn btn-default btn-flat">Sign out</a>
		              </div>
		            </li>
		          </ul>
		        </li>
		        <!-- Control Sidebar Toggle Button -->
		        <li>
		          <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
		        </li>
		      </ul>
		    </div>

		  </nav>
		</header>

		<aside class="main-sidebar">
	    <!-- sidebar: style can be found in sidebar.less -->
	    <section class="sidebar">
	      <!-- Sidebar user panel -->
	      <div class="user-panel">
	        <div class="pull-left image">
	          <img style="height:47px;width:50px;"src="
						<?php
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
						}
						?>" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p><?php echo $nama; ?></p>
	          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
	        </div>
	      </div>
	      <!-- search form -->
	      <?php echo form_open('dashboard/search','class="sidebar-form"'); ?>
	        <div class="input-group">
	          <input type="text" name="q" class="form-control" placeholder="Cari Konten">
	              <span class="input-group-btn">
	                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
	                </button>
	              </span>
	        </div>
	      </form>
	      <!-- /.search form -->
	      <!-- sidebar menu: : style can be found in sidebar.less -->

				<ul class="sidebar-menu">
	        <li class="header">MAIN NAVIGATION</li>
					<?php
					foreach ($parent_menu as $pmenu)
					{
						$count_child=$this->model_home->get_count_child($pmenu['id_menu']);
						if($count_child!=0)
						{
							$verify_menu=$this->model_home->verify_dashboard_menu_by_role($id_role,$pmenu['id_menu'])->num_rows();
							if($verify_menu>0)
							{
								echo '
								<li class="treeview">
								<a href="'.base_url($pmenu['link']).'">
			            <i class="fa fa-'.$pmenu['icon'].'"></i>
									<span>'.$pmenu['judul'].'</span>';

								$child_menu=$this->model_home->get_menu_child($pmenu['id_menu'],"dashboard");
								$i=0;
								$has_child_verify=false;
								foreach ($child_menu as $cmenu)
								{

									$verify_menu=$this->model_home->verify_dashboard_menu_by_role($id_role,$cmenu['id_menu'])->num_rows();
									if($verify_menu>0)
									{
										if($i==0 || $has_child_verify==false)
										{
											echo '
										<span class="pull-right-container">
										<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>

									<ul class="treeview-menu">';
										}
										$has_child_verify=true;


										if($pmenu['link']!=NULL)
										{
											echo '
											<li><a href="'.base_url($cmenu['link']).'"><i class="fa fa-'.$cmenu['icon'].'"></i>'.$cmenu['judul'].'</a></li>';
										}
										else
										{
											echo '
											<li><a href="'.base_url($cmenu['link']).'"><i class="fa fa-'.$cmenu['icon'].'"></i>'.$cmenu['judul'].'</a></li>';
										}
										if($i==count($child_menu)-1) echo '</ul></li>';
										$i++;
									}
									else
									{
										if ($i==count($child_menu)-1 && $has_child_verify==false)
										{
											echo '</a></li>';
										}
										if($i==count($child_menu)-1 && $has_child_verify==true) echo '</ul></li>';
										$i++;
									}
								}
							}
						}
						else
						{
							$verify_menu=$this->model_home->verify_dashboard_menu_by_role($id_role,$pmenu['id_menu'])->num_rows();
							if($verify_menu>0)
							{
								if($pmenu['link']!=NULL)
								{
									echo '
									<li><a href="'.base_url($pmenu['link']).'"><i class="fa fa-'.$pmenu['icon'].'"></i>'.$pmenu['judul'].'</a></li>';
								}
								else
								{
									echo '
									<li><a href="'.base_url($pmenu['id_konten']).'"><i class="fa fa-'.$pmenu['icon'].'"></i>'.$pmenu['judul'].'</a></li>';
								}
							}
						}
					}
					?>

				<?php
				if($role_name=="Super Admin")
				{
					echo '
 				<li class="header">Sistem</li>
         <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Backup Database</span></a></li>';
				}
				echo '</ul>';
				 ?>

	    </section>
	    <!-- /.sidebar -->
	  </aside>

  <!-- Contents -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Dashboard
				<small> <?php echo $role_name;?></small>
			</h1>
		<!-- Main content -->
			<?php echo $contents; ?>
		<!-- /.content -->
	</div>
		<!-- /.content-wrapper -->

	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright &copy; <?php echo Date('Y'); ?> <a href="#">PLN Bogor</a></strong> All rights
		reserved.
	</footer>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs"></ul>
		<!-- Tab panes -->
		<div class="tab-content">
		<div class="tab-pane" id="control-sidebar-home-tab">
		</div>
	</aside>
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
			 immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>


  <!-- Bootstrap 3.3.6 -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/bootstrap/js/bootstrap.min.js"></script>
  <!-- FastClick -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/fastclick/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/dist/js/app.min.js"></script>
  <!-- Sparkline -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/sparkline/jquery.sparkline.min.js"></script>
  <!-- jvectormap -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- SlimScroll 1.3.0 -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!-- ChartJS 1.0.1 -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/chartjs/Chart.min.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/dist/js/demo.js"></script>
  <!-- Select2 -->
  <script src="<?php echo base_url();?>assets/dashboard_template/adminLTE/plugins/select2/select2.full.min.js"></script>
	<!-- DataTables -->
	<script src="<?php echo base_url();?>assets/dashboard_template/adminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url();?>assets/dashboard_template/adminLTE/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- PACE -->
  <script src="<?php echo base_url();?>assets/dashboard_template/adminLTE/plugins/pace/pace.min.js"></script>
	<!-- Input Mask -->
	<script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/input-mask/jquery.inputmask.js"></script>
	<script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/input-mask/jquery.inputmask.extensions.js"></script>

	<script src="<?php echo base_url(); ?>assets/dashboard_template/ckeditor/ckeditor.js"></script>

	<script>CKEDITOR.replace('editor1',{
        filebrowserUploadUrl : "<?php echo base_url();?>assets/dashboard_template/ckeditor/upload.php "
    });</script>


    <script>
    $(function () {
      //Initialize Select2 Elements
        $(".select2").select2();
				$("[data-mask]").inputmask();
        $("#kategori_portal").DataTable();
        $("#user_roles").DataTable();
        $("#konten").DataTable();

      //Date picker
      // $('#datepicker').datepicker({
      // format: "yyyy-mm-dd",
      // autoclose: true
      // });
      // $('#datepicker2').datepicker({
      // format: "yyyy-mm-dd",
      // autoclose: true
      // });
      //Timepicker
      // $(".timepicker").timepicker({
      // showInputs: false
      //   });
     });
    </script>
	</body>
</html>
