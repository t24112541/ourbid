<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title></title>
  <link rel="shortcut icon" href="./img/logo_web.png" />
  <!-- Custom fonts for this template-->
  <link href="./vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="./css/cv_style.css?v=1001">
  
  <!-- Custom styles for this template-->
  <link href="./css/sb-admin-2.css?v=1001" rel="stylesheet">
  <script src="./js/jquery-3.4.1.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/cv_js.js?v=1001"></script>
  <script src="./js/jquery-image-upload-resizer.js"></script>
</head>

<body id="page-top">

<?php 
  // if(isset($_SESSION['usr']) && $_SESSION['auth']){ 
?>
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    
      <?php
      // if(isset($_SESSION['usr']) && $_SESSION['auth']){
        include("./views/sidebar.html");
      // }
      ?>
      <!-- //////////////////////////////////////////////////////////// -->
    
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <!-- <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"> -->
          <?php 
          // if(isset($_SESSION['usr']) && $_SESSION['auth']){
            include("./views/nav_2.html");
          // }
          ?>
          <!-- ///////////////////////////////////////////////////////// -->
        <!-- </nav> -->
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <?php 
              require_once("./views/o_bid.html");
          ?>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->
  <?php 
  // }else{require_once("./views/login2.html");}
  ?>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">??????????????????????????????????????????????????????????</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">??</span>
          </button>
        </div>
        <div class="modal-body">?????????????????????????????????????????????????????????????????????????????????????????????</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">??????????????????</button>
          <a class="btn btn-primary" href="?logout">?????????</a>
        </div>
      </div>
    </div>
  </div>
  <!-- delete Modal-->
  <div class="modal fade" id="del_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">????????????????????????????????????????????????????</h5>
          <button class="close" type="button" style="color:#fff" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">??</span>
          </button>
        </div>
        <div class="modal-body">???????????????????????????????????????????????????????????????????????????????????????</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">??????????????????</button>
          <a class="btn btn-primary" style="color:#fff" data-dismiss="modal" onclick="del()">?????????</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->

  <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="./vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="./js/sb-admin-2.min.js"></script>
</body>
<script type="text/javascript">
  $("title").text(title());
</script>
</html>
