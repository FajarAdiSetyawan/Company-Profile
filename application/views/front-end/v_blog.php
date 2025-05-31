<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <ol>
        <li><a href="<?= base_url('home/#hero'); ?>">Главная</a></li>
        <li>Блог</li>
      </ol>
      <h2>Блог</h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Section ======= -->
  <section id="blog" class="blog">
    <div class="container" data-aos="fade-up">
      <div class="row">

        <div class="col-lg-8 entries">
          <?php foreach ($berita as $key => $value) :
            // strip tags to avoid breaking any html
            $isi = strip_tags($value->isi_berita);
            if (strlen($isi) > 200) {

              // truncate isi
              $isiCut = substr($isi, 0, 200);
              $endPoint = strrpos($isiCut, ' ');

              //if the isi doesn't contain any space then it will cut without word basis.
              $isi = $endPoint ? substr($isiCut, 0, $endPoint) : substr($isiCut, 0);
            }
            if ($value->status_berita == "Publish") : ?>
              <div class="card mb-4 entry">
                <div class="entry-img">
                  <img src="<?= base_url('assets/img/berita/') . $value->gambar_berita; ?>" alt="<?= $value->judul_berita; ?>" class="img-responsive center-block d-block mx-auto">
                </div>

                <h2 class="entry-title">
                  <a href="<?= base_url('home/detail/' . $value->slug_berita); ?>"><?= $value->judul_berita; ?></a>
                </h2>
                <div class="entry-meta">
                  <ul>
                    <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a><?= $value->nama; ?></a></li>
                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a><?= date('d-M-Y H:i', strtotime($value->date_cretated)); ?></a></li>
                    <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a>12 комментариев</a></li>
                  </ul>
                </div>
                <div class="entry-content">
                  <p>
                    <?= $isi; ?>
                  </p>
                  <div class="read-more">
                    <a href="<?= base_url('home/detail/' . $value->slug_berita); ?>">Читать далее</a>
                  </div>
                </div>
              </div>

            <?php endif; ?>
          <?php endforeach; ?>

          <div class="blog-pagination">
            <ul class="justify-content-center">
              <li><a href="#">1</a></li>
              <li class="active"><a href="#">2</a></li>
              <li><a href="#">3</a></li>
            </ul>
          </div>

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

            <h3 class="sidebar-title">Категории</h3>
            <div class="sidebar-item categories">
              <ul>
                <?php foreach ($kategori as $key => $values) : ?>
                  <li><a href="#"><?= $values->nama_kategori; ?> <span>(25)</span></a></li>
                <?php endforeach; ?>
              </ul>
            </div><!-- End sidebar categories-->
            <!-- PRINT DATA BERITA -->
            <h3 class="sidebar-title">Последние записи</h3>
            <?php foreach ($lastst_berita as $key => $value) :
              // CEK KONDISI BERITA

              if ($value->status_berita == "Publish") : ?>
                <div class="sidebar-item recent-posts">
                  <div class="post-item clearfix">
                    <img src="<?= base_url('assets/img/berita/') . $value->gambar_berita; ?>" alt="<?= $value->judul_berita; ?>">
                    <h4><a href="<?= base_url('home/detail/' . $value->slug_berita); ?>"><?= $value->judul_berita; ?></a></h4>
                    <time datetime="01-01-2020"><?= date('d-m-Y H:i', strtotime($value->date_cretated)); ?></time>
                  </div>
                </div><!-- End sidebar recent posts-->
              <?php endif; ?>
            <?php endforeach; ?>
            <h3 class="sidebar-title">Теги</h3>
            <div class="sidebar-item tags">
              <ul>
                <li><a href="#">Уборка</a></li>
                <li><a href="#">Советы</a></li>
                <li><a href="#">DIY</a></li>
                <li><a href="#">Эко-средства</a></li>
                <li><a href="#">Уход за кожей</a></li>
                <li><a href="#">Дети</a></li>
                <li><a href="#">Дом</a></li>
                <li><a href="#">Гигиена</a></li>
                <li><a href="#">Новинки</a></li>
                <li><a href="#">Обзоры</a></li>
                <li><a href="#">Акции</a></li>
              </ul>
            </div><!-- End sidebar tags-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Section -->

</main><!-- End #main -->