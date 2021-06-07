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

  <!-- Template CSS -->
  <link rel="shortcut icon" href="<?= base_url('assets/img/company/') . $image; ?>" type="image/x-icon">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/style.css">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/components.css">

  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/plugins/toastr/toastr.min.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
              <img src="<?= base_url('assets/img/company/') . $image; ?>" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header">
                <h4>Ubah Password</h4>
              </div>

              <div class="card-body">
                <p class="text-muted text-center">Masukkan Password Baru, <?= $this->session->userdata('reset_email'); ?> </p>
                <form method="POST" action="<?= base_url('auth/changePassword'); ?>">
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" type="password" class="form-control" name="password" tabindex="1" autofocus>
                    <small class="text-danger"><?= form_error('password') ?></small>
                  </div>
                  <div class="form-group">
                    <label for="password">Konfirmasi Password</label>
                    <input id="password" type="password" class="form-control" name="conf-password" tabindex="1" autofocus>
                    <small class="text-danger"><?= form_error('conf-password') ?></small>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Ubah Password
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; <?= date('Y'); ?>
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