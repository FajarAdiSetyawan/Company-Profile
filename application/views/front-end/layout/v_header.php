<!-- ======= Header ======= -->
<header id="header" class="header fixed-top">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <a href="<?= base_url('home/#hero'); ?>" class="logo d-flex align-items-center">
      <img src="<?= base_url('assets/img/company/Miradea.png'); ?>" alt="Логотип Miradea">
      <span style="font-size: 18px;"><?= $this->config->item('company_name'); ?></span>
    </a>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a class="nav-link scrollto active" href="<?= base_url('home/#hero'); ?>">Главная</a></li>
        <li><a class="nav-link scrollto" href="<?= base_url('home/#about'); ?>">О нас</a></li>
        <li><a class="nav-link scrollto" href="<?= base_url('home/#services'); ?>">Услуги</a></li>
        <li><a class="nav-link scrollto" href="<?= base_url('home/#portfolio'); ?>">Продукция</a></li>
        <li><a class="nav-link" href="<?= base_url('blog'); ?>">Блог</a></li>
        <li><a class="nav-link scrollto" href="<?= base_url('home/#contact'); ?>">Контакты</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->
