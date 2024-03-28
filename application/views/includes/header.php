<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>
    <?php echo $pageTitle; ?>
  </title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <!-- Bootstrap 3.3.4 -->
  <link href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"
    type="text/css" />
  <!-- FontAwesome 4.3.0 -->
  <link href="<?php echo base_url(); ?>assets/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet"
    type="text/css" />
  <!-- Ionicons 2.0.0 -->
  <link href="<?php echo base_url(); ?>assets/bower_components/Ionicons/css/ionicons.min.css" rel="stylesheet"
    type="text/css" />
  <!-- Theme style -->
  <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
  <link href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
  <style>
    .error {
      color: red;
      font-weight: normal;
    }
  </style>
  <script src="<?php echo base_url(); ?>assets/bower_components/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript">
    var baseURL = "<?php echo base_url(); ?>";
  </script>
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <header class="main-header">
      <!-- Logo -->
      <a href="<?php echo base_url(); ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>Sha</b>fa</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Shafa Khan</b></span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                  <i class="fa fa-history"></i>
                </a>
                <ul class="dropdown-menu">
                  <li class="header"> Last Login : <i class="fa fa-clock-o"></i> <?= empty ($last_login) ? "First Time Login" : $last_login; ?></li>
                </ul>
              </li> -->
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="user-image" alt="User Image" />
                <span class="hidden-xs">
                  <?php echo $name; ?>
                </span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">

                  <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="img-circle" alt="User Image" />
                  <p>
                    <?php echo $name; ?>
                    <small>
                      <?php echo $role_text; ?>
                    </small>
                  </p>

                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="<?php echo base_url(); ?>profile" class="btn btn-warning btn-flat"><i
                        class="fa fa-user-circle"></i> Profile</a>
                  </div>
                  <div class="pull-right">
                    <a href="<?php echo base_url(); ?>logout" class="btn btn-default btn-flat"><i
                        class="fa fa-sign-out"></i> Sign out</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
          <li class="header"></li>
          <li>
            <a href="<?php echo base_url(); ?>dashboard">
              <i class="fa fa-dashboard"></i> <span>Dashboard</span></i>
            </a>
          </li>
      
          <?php
          if ($is_admin == 1) {
            ?>
            <li>
              <a href="<?php echo base_url('auth/user/userListing'); ?>">
                  <i class="fa fa-users"></i>
                  <span>User</span>
              </a>
          </li>

            <li>
              <a href="<?php echo base_url(); ?>auth/roles/roleListing">
                <i class="fa fa-user-circle-o " aria-hidden="true"></i>
                <span>Roles</span>
              </a>
            </li>
            <?php
          }
          ?>
          <?php
          if (
            $is_admin == 1 ||
            (array_key_exists('Booking', $access_info)
              && ($access_info['Booking']['list'] == 1 || $access_info['Booking']['total_access'] == 1))
          ) {
            ?>
            <li>
              <a href="<?php echo base_url(); ?>booking">
                <i class="fa fa-anchor"></i>
                <span>Booking</span>
              </a>
            </li>
            <?php
          }
          ?>
        
        
          <?php
          if (
            $is_admin == 1 ||
            (array_key_exists('Brand', $access_info)
              && ($access_info['Brand']['list'] == 1 || $access_info['Brand']['total_access'] == 1))
          ) {
            ?>
            <li>
              <a href="<?php echo base_url(); ?>brand">
                <i class="fa fa-building"></i>
                <span>Brand</span>
              </a>
            </li>
            <?php
          }
          ?>
            <?php
          if (
            $is_admin == 1 ||
            (array_key_exists('Model', $access_info)
              && ($access_info['Model']['list'] == 1 || $access_info['Model']['total_access'] == 1))
          ) {
            ?>
            <li>
              <a href="<?php echo base_url(); ?>model">
                <i class="fa fa-car"></i>
                <span>Model</span>
              </a>
            </li>
            <?php
          }
          ?>
           
            <?php
          if (
            $is_admin == 1 ||
            (array_key_exists('Post', $access_info)
              && ($access_info['Post']['list'] == 1 || $access_info['Post']['total_access'] == 1))
          ) {
            ?>
            <li>
              <a href="<?php echo base_url(); ?>post">
                <i class="fa fa-bus"></i>
                <span>Post</span>
              </a>
            </li>
            <?php
          }
          ?>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>
