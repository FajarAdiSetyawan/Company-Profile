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
  <!-- CSS Libraries -->
  <link rel="stylesheet" href="<?= base_url(); ?>vendor/back-end/node_modules/bootstrap-social/bootstrap-social.css">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/iziToast.min.css">
  <!-- Template CSS -->
  <link rel="shortcut icon" href="<?= base_url('assets/img/company/') . $image; ?>" type="image/x-icon">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/style.css">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/components.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-2">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-7 offset-xl-2 mx-auto">
            <div class="login-brand">
              <img src="<?= base_url('assets/img/company/') . $image; ?>" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header">
                <h4 class="">Register</h4>
              </div>

              <div class="card-body">
                <form method="POST" action="<?= base_url('auth/register'); ?>">
                  <div class="form-group">
                    <label for="nama_lengkap">Nama Lengkap</label>
                    <input id="nama_lengkap" type="text" class="form-control" name="nama_lengkap" autofocus value="<?= set_value('nama_lengkap'); ?>">
                    <small class="text-danger "><?= form_error('nama_lengkap') ?></small>
                  </div>

                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control" name="email" value="<?= set_value('email'); ?>">
                    <div class="invalid-feedback">
                    </div>
                    <small class="text-danger "><?= form_error('email') ?></small>
                  </div>

                  <div class="row">
                    <div class="form-group col-6">
                      <label for="password" class="d-block">Password</label>
                      <input id="password" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="password">
                      <small class="text-danger "><?= form_error('password') ?></small>
                    </div>
                    <div class="form-group col-6">
                      <label for="password2" class="d-block">Konfirmasi Password</label>
                      <input id="password2" type="password" class="form-control" name="password-confirm">
                      <small class="text-danger "><?= form_error('password-confirm') ?></small>
                    </div>
                  </div>

                  <!-- <div class="form-divider">
                    Your Home
                  </div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label>Country</label>
                      <select class="form-control selectric">
                        <option>Indonesia</option>
                        <option>Palestine</option>
                        <option>Syria</option>
                        <option>Malaysia</option>
                        <option>Thailand</option>
                      </select>
                    </div>
                    <div class="form-group col-6">
                      <label>Province</label>
                      <select class="form-control selectric">
                        <option>West Java</option>
                        <option>East Java</option>
                      </select>
                    </div>
                  </div> -->


                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                    </div>
                  </div>

                  <div class="form-group d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Register
                    </button>
                  </div>
                  <div class="mt-3 text-center">
                    Sudah punya akun? <strong><a href="<?= base_url('auth'); ?>"> Masuk</a></strong>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; <strong><?= date('Y'); ?></strong>
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
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/iziToast.min.js" type="text/javascript"></script>
  <!-- JS Libraies -->

  <!-- Template JS File -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/scripts.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/page/auth-register.js"></script>
</body>

</html>