<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title><?= $title; ?> &mdash; <?= $subtitle; ?></title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/bootstrap.min.css">
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/bootstrap.bundle.min.js"></script>

  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/fonts/fontawesome/css/all.css" rel="stylesheet">
  <!-- CSS Libraries -->
  <link rel="shortcut icon" href="<?= base_url('assets/img/company/') . $image; ?>" type="image/x-icon">
  <!-- Template CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/style.css">
  <link rel="stylesheet" href="<?= base_url() ?>vendor/back-end/assets/css/components.css">

</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="d-flex align-items-center justify-content-center">
          <lottie-player src="<?= base_url() ?>vendor/back-end/assets/plugins/lottie/403error.json" background="transparent" speed="1" style="width: 200px; height: 200px;" loop autoplay class="dashboard-img"></lottie-player>
        </div>
        <div class="page-error">
          <div class="page-inner">

            <div class="page-description text-danger">
              <?= $subtitle; ?>
              <p class="mt-2 text-dark">Silahkan Kembali Ke Dashboard !!!</p>
            </div>
            <div class="page-search">
              <form>
                <div class="form-group floating-addon floating-addon-not-append">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <i class="fas fa-search"></i>
                      </div>
                    </div>
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-append">
                      <button class="btn btn-primary btn-lg">
                        Search
                      </button>
                    </div>
                  </div>
                </div>
              </form>
              <div class="mt-2">
                <a href="<?= base_url('dashboard'); ?>">Kembali Ke Dashboard</a>
              </div>
            </div>
          </div>
        </div>
        <div class="simple-footer mt-1">
          Copyright &copy; <?= date('Y'); ?>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/jquery-3.3.1.min.js"></script>
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/bootstrap.min.js"></script>
  <!-- lottie -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/plugins/lottie/lottie-player.js"></script>
  <!-- MAIN JS -->
  <script src="<?= base_url(); ?>vendor/back-end/assets/js/main.js"></script>
  <!-- Page Specific JS File -->
</body>

</html>