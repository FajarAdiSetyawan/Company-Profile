<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>Dashboard</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item">Dashboard</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 col-sm-6 col-12">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-primary">
                <i class="far fa-user"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>User</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->user()->total; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-warning">
                <i class="fas fa-users"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Staff</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->staff()->total; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-user-tie"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Client</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->client()->total; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-primary">
                <i class="fas fa-hand-holding-usd"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Layanan</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->layanan()->total; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-danger">
                <i class="far fa-newspaper"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Berita</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->berita()->total; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
              <div class="card-icon bg-success">
                <i class="fas fa-briefcase"></i>
              </div>
              <div class="card-wrap">
                <div class="card-header">
                  <h4>Portfolio</h4>
                </div>
                <div class="card-body">
                  <?= $this->M_dashboard->portfolio()->total; ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="card">
          <div class="card-header">
            <h4>Statistik kunjungan terakhir</h4>
          </div>
          <div class="card-body">
            <div id="line"></div>
          </div>
        </div>
      </div>
    </div>



    <div class="section-body">
      <div class="hero text-white hero-bg-image hero-bg-parallax mb-4" data-background="<?= base_url(); ?>vendor/back-end/assets/img/unsplash/andre-benz-1214056-unsplash.jpg">
        <div class="hero-inner">
          <h3>Selamat Datang <?= $user['nama']; ?></h3>
          <p class="lead">You almost arrived, complete the information about your account to complete registration.</p>
          <div class="mt-4">
            <a href="<?= base_url('user/profile'); ?>" class="btn btn-outline-white btn-lg btn-icon icon-left"><i class="far fa-user"></i> Setup Account</a>
          </div>
        </div>
      </div>
      <div class="card card-info">
        <div class="card-header">
          <h3>Petunjuk Penggunaan</h3>
        </div>
        <div class="card-body">
          <p align="justify">
            1. Pilih menu yang ingin dilakukan pengolahan data<br>
            2. Pilih submenu yang ingin dilakukan pengolahan data<br>
            3. Inputkan Data Dengan benar<br>
            4. Tekan Tombol Submit Jika telah selasai melakukan pengisian data<br>
            5. Logout sebelum menutup browser
          </p>
        </div>
      </div>
      <div class="card card-warning">
        <div class="card-header">
          <h3>Kebijakan Pengguna</h3>
        </div>
        <div class="card-body">
          <p align="justify">
            1. Jaga Keamanan Username dan Password <br>
            2. Isi Data dengan kebenaran <br>
            3. Lakukan Logout Sebelum Keluar
          </p>
        </div>
      </div>

    </div>
  </section>
</div>
</div>
<!-- Main Content