<div class="main-sidebar">
  <aside id="sidebar-wrapper">
    <div class="sidebar-brand">
      <a href="">Company Profile
      </a>
    </div>
    <div class="sidebar-brand sidebar-brand-sm">
      <a href="index.html">C P</a>
    </div>
    <ul class="sidebar-menu">

      <li class="nav-item">
        <a href="<?= base_url('dashboard'); ?>" class="nav-link "><i class="fas fa-home"></i> <span>Dashoard</span></a>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="far fa-user"></i> <span>Pengguna</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link beep beep-sidebar" href="<?= base_url('user/profile'); ?>">Profile</a></li>
          <?php if ($user['role_id'] == 1) : ?>
            <li><a class="nav-link" href="<?= base_url('user/daftar_user'); ?>">Daftar Pengguna</a></li>
          <?php endif; ?>
        </ul>
      </li>

      <li class="menu-header">Data Perusahaan</li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-users"></i> <span>Staff</span></a>
        <ul class="dropdown-menu">
          <?php if ($user['role_id'] == 1) : ?>
            <li><a class="nav-link beep beep-sidebar" href="<?= base_url('staff/tambahstaff'); ?>">Tambah Staff</a></li>
          <?php endif; ?>
          <li><a href="<?= base_url('staff'); ?>">Daftar Staff</a></li>
        </ul>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-user-tie"></i> <span>Client</span></a>
        <ul class="dropdown-menu">
          <?php if ($user['role_id'] == 1) : ?>
            <li><a class="nav-link beep beep-sidebar" href="<?= base_url('client/tambahclient'); ?>">Menambah Client</a></li>
          <?php endif; ?>
          <li><a class="nav-link" href="<?= base_url('client'); ?>">Daftar Client</a></li>
        </ul>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-briefcase"></i> <span>Portfolio</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link beep beep-sidebar" href="<?= base_url('portfolio/tambah'); ?>">Menambah Portfolio</a></li>
          <li><a class="nav-link" href="<?= base_url('portfolio'); ?>">Daftar Portfolio</a></li>
        </ul>
      </li>
      <li class="menu-header">Berita & Layanan</li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-newspaper"></i> <span>Berita</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link beep beep-sidebar" href="<?= base_url('berita/tambah'); ?>">Tulis Berita</a></li>
          <li><a class="nav-link " href="<?= base_url('berita'); ?>">Daftar Berita</a></li>
        </ul>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-holding-usd"></i> <span>Layanan</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link beep beep-sidebar" href="<?= base_url('layanan/tambah'); ?>">Tulis Layanan</a></li>
          <li><a class="nav-link " href="<?= base_url('layanan'); ?>">Daftar Layanan</a></li>
        </ul>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-tags"></i> <span>Kategori</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link " href="<?= base_url('kategori/kategoriberita'); ?>">Kategori Berita</a></li>
          <?php if ($user['role_id'] == 1) : ?>
            <li><a class="nav-link " href="<?= base_url('kategori/kategoristaff'); ?>">Kategori Staff</a></li>
            <li><a class="nav-link " href="<?= base_url('kategori/kategoriclient'); ?>">Kategori Client</a></li>
          <?php endif; ?>
        </ul>
      </li>
      <li class="nav-item">
        <?php if ($user['role_id'] == 1) : ?>
          <hr>
          <a href="<?= base_url('settings'); ?>" class="nav-link"><i class="fas fa-cog"></i> <span>Settings</span></a>
        <?php endif; ?>
      </li>
      <hr>
      <li class="nav-item">
        <a href="<?= base_url('auth/logout'); ?>" class="nav-link bg-danger"><i class="fas fa-sign-out-alt text-white"></i> <span class="text-light">Keluar</span></a>
      </li>
    </ul>
  </aside>
</div>