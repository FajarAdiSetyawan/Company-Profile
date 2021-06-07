<?php

//ubah timezone menjadi jakarta
date_default_timezone_set("Asia/Jakarta");

//ambil jam dan menit
$jam = date('H:i');

//atur salam menggunakan IF
if ($jam > '05:30' && $jam < '10:59') {
  $salam = 'Pagi';
} elseif ($jam >= '11:00' && $jam < '15:00') {
  $salam = 'Siang';
} elseif ($jam < '18:00') {
  $salam = 'Sore';
} else {
  $salam = 'Malam';
}

//tampilkan pesan
$pesan = 'Selamat ' . $salam;


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title><?= $title; ?> &rsaquo; <?= $subtitle; ?></title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/bootstrap.min.css">
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/fonts/fontawesome/css/all.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>vendor/back-end/assets/fonts/iconic/css/material-design-iconic-font.min.css">
  <!-- CSS Libraries -->
  <!-- Template CSS -->
  <link rel="shortcut icon" href="<?= base_url('assets/img/company/') . $image; ?>" type="image/x-icon">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/style.css">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/components.css">

  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/plugins/toastr/toastr.min.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="d-flex flex-wrap align-items-stretch">
        <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">
          <div class="p-4 m-3">
            <img src="<?= base_url('assets/img/company/') . $image; ?>" alt="logo" width="80" class="shadow-light rounded-circle mb-5 mt-2">
            <h4 class="text-dark font-weight-normal">Welcome to <span class="font-weight-bold">Company Profile</span></h4>
            <p class="text-muted">Sebelum Anda memulai, Anda harus masuk atau mendaftar jika Anda belum memiliki akun.</p>

            <?= $this->session->flashdata('message'); ?>

            <form method="POST" action="<?= base_url('auth'); ?>">
              <div class="form-group">
                <label for="username">Email</label>
                <input id="email" type="text" class="form-control" name="email" tabindex="1" autofocus value="<?= set_value('email'); ?>">
                <small class="text-danger "><?= form_error('email') ?></small>
              </div>
              <div class="form-group">
                <div class="d-block">
                  <label for="password" class="control-label">Password</label>
                </div>
                <input id="password" type="password" class="form-control" name="password" tabindex="2">
                <small class="text-danger "><?= form_error('password') ?></small>
              </div>

              <div class="form-group">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                  <label class="custom-control-label" for="remember-me">Ingat saya</label>
                </div>
              </div>

              <div class="form-group d-flex justify-content-between">
                <a href="<?= base_url('auth/forgotpassword'); ?>" class="float-left mt-3">
                  Lupa Password?
                </a>
                <button type="submit" class=" btn btn-primary btn-lg btn-icon icon-right " tabindex="4">
                  Masuk
                </button>
              </div>

              <div class="mt-3 text-center">
                Belum punya akun? <a href="<?= base_url('auth/register'); ?>">Buat Akun</a>
              </div>
            </form>

            <div class="text-center mt-5 text-small">
              Copyright &copy; <p><strong><?= date('Y'); ?></strong></p>
              <div class="mt-2">
                <a href="#">Privacy Policy</a>
                <div class="bullet"></div>
                <a href="#">Terms of Service</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-background="<?= base_url() ?>vendor/back-end/assets/img/unsplash/login-bg.jpg">
          <div class="absolute-bottom-left index-2">
            <div class="text-light p-5 pb-2">
              <div class="mb-5 pb-3">
                <h1 class="mb-2 display-4 font-weight-bold"><?= $pesan; ?></h1>
                <h5 class="font-weight-normal text-muted-transparent">Bali, Indonesia</h5>
              </div>
              Photo by <a class="text-light bb" target="_blank" href="https://unsplash.com/photos/a8lTjWJJgLA">Justin Kauffman</a> on <a class="text-light bb" target="_blank" href="https://unsplash.com">Unsplash</a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/jquery-3.3.1.min.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/bootstrap.min.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/jquery.nicescroll.min.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/moment.min.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/stisla.js"></script>
  <!-- JS Libraies -->

  <!-- Template JS File -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/scripts.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
  <!-- toast flashdata -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/plugins/toastr/toastr.min.js" type="text/javascript"></script>
  <?php if ($this->session->flashdata('success')) : ?>
    <div class="success-message"><?= $this->session->flashdata('success') ?></div>
    <script type="text/javascript">
      toastr.success($(".success-message"))
    </script>
  <?php endif; ?>

  <?php if ($this->session->flashdata('info')) : ?>
    <div class="info-message"><?= $this->session->flashdata('info') ?></div>
    <script type="text/javascript">
      toastr.info($(".info-message"))
    </script>
  <?php endif; ?>

  <?php if ($this->session->flashdata('warning')) : ?>
    <div class="warning-message"><?= $this->session->flashdata('warning') ?></div>
    <script type="text/javascript">
      toastr.warning($(".warning-message"))
    </script>
  <?php endif; ?>

  <?php if ($this->session->flashdata('error')) : ?>
    <div class="error-message"><?= $this->session->flashdata('error') ?></div>
    <script type="text/javascript">
      toastr.error($(".error-message"))
    </script>
  <?php endif; ?>
</body>

</html>