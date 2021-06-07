<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?= base_url('staff'); ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item active"><a href="<?= base_url('staff'); ?>">Daftar Staff</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>
    <div class="section-body">
      <h2 class="section-title"><?= $staff->nama_staff; ?></h2>
      <p class="section-lead">
      </p>

      <div class="row mt-sm-4">
        <div class="col-12 col-md-12 col-lg-12">
          <div class="card profile-widget">
            <div class="profile-widget-header">
              <img alt="image" src="<?= base_url('assets/img/staff/') . $staff->gambar_staff ?>" class="rounded-circle profile-widget-picture">
              <div class="profile-widget-items">
                <div class="profile-widget-item">
                  <div class="profile-widget-item-label">Posts</div>
                  <div class="profile-widget-item-value">187</div>
                </div>
                <div class="profile-widget-item">
                  <div class="profile-widget-item-label">Followers</div>
                  <div class="profile-widget-item-value">6,8K</div>
                </div>
                <div class="profile-widget-item">
                  <div class="profile-widget-item-label">Following</div>
                  <div class="profile-widget-item-value">2,1K</div>
                </div>
              </div>
            </div>
            <div class="profile-widget-description">
              <div class="profile-widget-name text-dark"><?= $staff->nama_staff ?> <div class="text-muted d-inline font-weight-normal">
                  <div class="slash"></div> <?= $staff->nama_kategori ?>
                </div>
              </div>
              <p><strong>Email: </strong><?= $staff->email_staff; ?></p>
              <p><strong>No Telepon: </strong><?= $staff->no_telepon; ?></p>
              <p><strong>Alamat: </strong><?= $staff->alamat; ?></p>
              <p>
                <?php if ($staff->publish == "Publish") : ?>
                  <td class="text-center"><span class="badge badge-primary"><?= $staff->publish; ?></span></td>
                <?php else : ?>
                  <td class="text-center"><span class="badge badge-warning"><?= $staff->publish; ?></span></td>
                <?php endif; ?>
              </p>
            </div>
            <div class="card-footer text-center">
              <?php
              // MENGGUBAH FORMAT TANGGAL
              $source = $staff->date_created;
              $date = new DateTime($source);
              $date_created = $date->format('d-M-Y');
              ?>
              <div class="font-weight-bold mb-2">Tanggal Dibuat: <?= $date_created; ?></div>
              <a href="#" class="mr-5">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="mr-5">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="mr-5">
                <i class="fab fa-github"></i>
              </a>
              <a href="#" class="">
                <i class="fab fa-instagram"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>