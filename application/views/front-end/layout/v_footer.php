<!-- ======= Footer ======= -->
<footer id="footer" class="footer">

  <div class="footer-newsletter">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12 text-center">
          <h4>Наша рассылка</h4>
          <p>Подпишитесь, чтобы получать новости о наших продуктах и специальных предложениях.</p>
        </div>
        <div class="col-lg-6">
          <form action="#" method="post">
            <input type="email" name="email"><input type="submit" value="Подписаться">
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer-top">
    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info card shadow-none">
          <a href="<?= base_url('home'); ?>" class="logo d-flex align-items-center">
            <img src="<?= base_url('assets/img/company/Miradea.png'); ?>" alt="Логотип Miradea">
            <span><?= $this->config->item('company_name'); ?></span>
          </a>
          <p><?= $setting->profile; ?></p>
          <div class="social-links mt-3">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram bx bxl-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin bx bxl-linkedin"></i></a>
          </div>
        </div>
        <div class="col-lg-2 col-6 footer-links">
          <h4>Полезные ссылки</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="<?= base_url('home/#hero'); ?>">Главная</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="<?= base_url('home/#about'); ?>">О нас</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="<?= base_url('home/#services'); ?>">Услуги</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="#">Условия обслуживания</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="#">Политика конфиденциальности</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Наши продукты</h4> <!-- Changed from "Наши услуги" to "Наши продукты" for better context -->
          <ul>
            <?php foreach ($layanan as $key => $value) : ?>
              <li><i class="bi bi-chevron-right"></i> <a href="<?= base_url('home/detaillayanan/' . $value->slug_layanan); ?>"><?= $value->judul_layanan; ?></a></li>
            <?php endforeach; ?>
          </ul>
        </div>
        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Свяжитесь с нами</h4>
          <p>
            <?= $setting->alamat; ?> <br>
            <strong>Телефон:</strong> <?= $setting->no_telepon; ?><br>
            <strong>Эл. почта:</strong> <?= $setting->email; ?><br>
          </p>

        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span><?= $this->config->item('company_name'); ?> <?= date('Y'); ?></span></strong>. Все права защищены
    </div>
  </div>
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/aos/aos.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/php-email-form/validate.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/purecounter/purecounter.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="<?= base_url(); ?>vendor/front-end/assets/vendor/glightbox/js/glightbox.min.js"></script>

<!-- Template Main JS File -->
<script src="<?= base_url(); ?>vendor/front-end/assets/js/main.js"></script>

</body>

</html>