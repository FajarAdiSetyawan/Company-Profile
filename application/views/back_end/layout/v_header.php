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

<body>
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-fixed-top navbar-expand-lg main-navbar">
        <div class="container-fluid">
          <form class="form-inline mr-auto">
            <ul class="navbar-nav mr-3">
              <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            </ul>
          </form>
          <ul class="form-inline navbar-nav navbar-right">
            <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                <img alt="image" src="<?= base_url('assets/img/profile/') . $user['image'] ?>" class="rounded-circle mr-1">
                <div class="d-sm-none d-lg-inline-block"><?= $pesan . ", " . $user['nama']; ?></div>
              </a>
              <div class="dropdown-menu dropdown-menu-right">
                <a href="<?= base_url('user/profile'); ?>" class="dropdown-item has-icon">
                  <i class="far fa-user"></i> Profile
                </a>
                <a href="<?= base_url('settings'); ?>" class="dropdown-item has-icon">
                  <i class="fas fa-cog"></i> Settings
                </a>
                <div class="dropdown-divider"></div>
                <a href="<?= base_url('auth/logout'); ?>" class="dropdown-item has-icon text-danger">
                  <i class="fas fa-sign-out-alt"></i> Keluar
                </a>
              </div>
            </li>
          </ul>
        </div>

      </nav>