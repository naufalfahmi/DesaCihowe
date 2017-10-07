
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login Desa Cihowe</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/ionicons/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
  <!-Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/ionicons/css/ionicons.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css" media="screen">
    .login-page {
      background: url(<?=base_url()?>assets/img/template/login_bg.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }
  </style>
</head>
<body class="hold-transition login-page">
  <div class="login-box">
  <!-- <div class="login-logo">

</div> -->
<!-- /.login-logo -->
<div class="login-box-body">
  <a style="font-size:235%;margin-left:21%;"href="#"><b>Desa</b> Cihowe</a>
    <img class="img-responsive" style="height:50%;width:50%;margin-left:25%;margin-bottom:5%;"src="<?php echo base_url().'assets/img/template/logo.png';?>" alt="" />
    <p class="login-box-msg">Silahkan login terlebih dahulu.</p>

  <?php
  echo form_open('login/verification');
  ?>
  <div class="form-group has-feedback">
    <input type="text" name="username" placeholder="username" class="form-control">
    <span class="fa fa-user form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
    <input type="password" name="password" placeholder="password" class="form-control">
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div>

  <div class="row">
    <!-- /.col -->
    <div class="col-xs-12">
     <button type="submit" class="btn btn-primary btn-block btn-flat">Log in</button>
   </div>
    <!-- /.col -->
  </div>
</form>
</div>
<!-- /.login-box-body -->
</div>
<!-- /.login-box -->

  <!-- jQuery 2.2.3 -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <!-- Bootstrap 3.3.6 -->
  <script src="<?php echo base_url(); ?>assets/dashboard_template/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo base_url();?>assets/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
