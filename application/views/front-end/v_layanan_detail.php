<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <ol>
        <li><a href="<?= base_url('home/#hero'); ?>">Главная</a></li>
        <li><a href="<?= base_url('home/blog'); ?>">Блог</a></li>
        <li><?= $detail->judul_layanan; ?></li>
      </ol>
      <h2><?= $detail->judul_layanan; ?></h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Single Section ======= -->
  <section id="blog" class="blog">
    <div class="container" data-aos="fade-up">

      <div class="row">

        <div class="col-lg-8 entries">

          <div class="card entry entry-single">

            <div class="entry-img">
              <img src="<?= base_url('assets/img/layanan/') . $detail->gambar_layanan; ?>" alt="<?= $detail->judul_layanan; ?>" class="img-responsive center-block d-block mx-auto">
            </div>

            <h2 class="entry-title">
              <?= $detail->judul_layanan; ?>
            </h2>
            <div class="entry-content">
              <p><?= $detail->isi_layanan; ?></p>
            </div>

          </div><!-- End blog entry -->

        </div><!-- End blog entries list -->

        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Поиск</h3>
            <div class="sidebar-item search-form">
              <form action="">
                <input type="text">
                <button type="submit"><i class="bi bi-search"></i></button>
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Список услуг</h3>
            <?php foreach ($layanan as $key => $value) :
              // CEK KONDISI BERITA
              if ($value->status_layanan == "Publish") : ?>
                <div class="sidebar-item recent-posts">
                  <div class="post-item clearfix ">
                    <img src="<?= base_url('assets/img/layanan/') . $value->gambar_layanan; ?>" alt="<?= $value->judul_layanan; ?>">
                    <h4 class="">
                      <a href="<?= base_url('home/detaillayanan/' . $value->slug_layanan); ?>"><?= $value->judul_layanan; ?></a>
                    </h4>
                  </div>
                </div><!-- End sidebar recent posts-->
              <?php endif; ?>
            <?php endforeach; ?>
            <!-- End sidebar recent posts-->

            <h3 class="sidebar-title">Теги</h3>
            <div class="sidebar-item tags">
              <ul>
                <li><a href="#">Чистящие средства</a></li>
                <li><a href="#">Уход за телом</a></li>
                <li><a href="#">Эко</a></li>
                <li><a href="#">Для кухни</a></li>
                <li><a href="#">Для ванной</a></li>
                <li><a href="#">Гипоаллергенно</a></li>
                <li><a href="#">Концентраты</a></li>
                <li><a href="#">Скидки</a></li>
                <li><a href="#">Новинки</a></li>
              </ul>
            </div><!-- End sidebar tags-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Single Section -->

</main><!-- End #main -->