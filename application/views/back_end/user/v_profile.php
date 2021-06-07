<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Profile</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item">Profile</div>
      </div>
    </div>
    <div class="section-body">
      <h2 class="section-title">Hi, <?= $user['nama']; ?></h2>
      <p class="section-lead">
        Change information about yourself on this page.
      </p>

      <div class="row mt-sm-4">
        <div class="col-12 col-md-12 col-lg-5">
          <div class="card profile-widget">
            <div class="profile-widget-header">
              <img alt="image" src="<?= base_url('assets/img/profile/') . $user['image'] ?>" class="rounded-circle profile-widget-picture">
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
              <div class="profile-widget-name"><?= $user['nama']; ?> <div class="text-muted d-inline font-weight-normal">
                  <?php
                  if ($user['role_id'] == 1) {
                    $role = "Administrator";
                  } else {
                    $role = "Staff";
                  }
                  ?>
                  <div class="slash"></div> <?= $role ?>
                </div>
              </div>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Unde illo blanditiis laborum optio neque quae, voluptas voluptates a odit in expedita vero itaque sequi? Ab ratione facilis veniam. Numquam quasi unde tempora possimus, rem mollitia consectetur suscipit, corrupti accusantium, odit quas iusto aut tenetur expedita fuga obcaecati itaque praesentium neque?
            </div>
            <div class="card-footer text-center">
              <div class="font-weight-bold mb-2">Tanggal Dibuat: <?= date('d F Y', $user['date_created']); ?></div>
              <a href="#" class="btn btn-social-icon btn-facebook mr-1">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="btn btn-social-icon btn-twitter mr-1">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="btn btn-social-icon btn-github mr-1">
                <i class="fab fa-github"></i>
              </a>
              <a href="#" class="btn btn-social-icon btn-instagram">
                <i class="fab fa-instagram"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-12 col-lg-7">
          <div class="card">
            <form method="post" action="<?= base_url('user/edit'); ?>" enctype="multipart/form-data" class="needs-validation" novalidate="">
              <div class="card-header">
                <h4>Edit Profile</h4>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="form-group col-md-6 col-12">
                    <label>Nama</label>
                    <input type="text" class="form-control" value="<?= $user['nama']; ?>" required="" name="nama">
                    <div class="invalid-feedback">
                      Isi Kolom Nama
                    </div>
                  </div>
                  <div class="form-group col-md-6 col-12">
                    <label>Email</label>
                    <input type="text" class="form-control" value="<?= $user['email']; ?>" readonly name="email">
                    <div class="invalid-feedback">
                      Please fill in the last name
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6 col-12 d-flex align-items-center justify-content-center">
                    <img alt="image" src="<?= base_url('assets/img/profile/') . $user['image'] ?>" class="rounded-circle profile-widget-picture" style="width: 100px; height: 100px">
                  </div>
                  <div class="form-group col-md-6 col-12">
                    <div class="">Gambar</div>
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" name="image" id="customFile">
                      <label class="custom-file-label" for="customFile">Pilih File Gambar</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer text-center">
                <button class="btn btn-outline-primary " type="submit">Edit Profile</button>
              </div>
              <hr style="width: 90%;">
              <div class="mx-auto d-flex align-items-center justify-content-center">
                <a class="btn btn-danger mb-3" href="<?= base_url('user/changepassword'); ?>">Ubah Password</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>