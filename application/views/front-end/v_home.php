<!-- ======= Hero Section ======= -->
<section id="hero" class="hero d-flex align-items-center">

  <div class="container">
    <div class="row">
      <div class="col-lg-6 d-flex flex-column justify-content-center">
        <h1 data-aos="fade-up">Чистота и забота о каждом доме</h1>
        <h2 data-aos="fade-up" data-aos-delay="400">Высококачественные продукты для безупречной чистоты и ежедневного ухода.</h2>
        <div data-aos="fade-up" data-aos-delay="600">
          <div class="text-center text-lg-start">
            <a href="#about" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
              <span>Начать</span>
              <i class="bi bi-arrow-right"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
        <img src="<?= base_url(); ?>vendor/front-end/assets/img/hero-img.png" class="img-fluid" alt="Современные решения для бизнеса">
      </div>
    </div>
  </div>

</section><!-- End Hero -->

<main id="main">
  <!-- ======= About Section ======= -->
  <section id="about" class="about">

    <div class="container" data-aos="fade-up">
      <div class="row gx-0">

        <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <div class="content card">
            <h3>Кто мы</h3>
            <p>
              <?= $setting->profile; ?>
            </p>
            <div class="text-center text-lg-start">
              <a href="#" class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center">
                <span>Читать далее</span>
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>

        <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200">
          <img src="<?= base_url(); ?>vendor/front-end/assets/img/miradea-about-us.jpg" class="img-fluid" alt="О компании Miradea - бытовая химия и гигиена">
        </div>

      </div>
    </div>

  </section><!-- End About Section -->

  <!-- ======= Values Section ======= -->
  <section id="values" class="values">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Наши ценности</h2>
        <hr>
        <p>В основе нашей работы лежат принципы, которые помогают нам создавать лучшие продукты для вас.</p>
      </header>

      <div class="row">

        <div class="col-lg-4">
          <div class="box" data-aos="fade-up" data-aos-delay="200">
            <img src="<?= base_url(); ?>vendor/front-end/assets/img/value-safety.png" class="img-fluid" alt="Качество и безопасность">
            <h3>Качество и безопасность</h3>
            <p>Мы используем только проверенные компоненты и строго контролируем все этапы производства.</p>
          </div>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0">
          <div class="box" data-aos="fade-up" data-aos-delay="400">
            <img src="<?= base_url(); ?>vendor/front-end/assets/img/value-eco.png" class="img-fluid" alt="Инновации и экологичность">
            <h3>Инновации и экологичность</h3>
            <p>Постоянно ищем новые решения для повышения эффективности и снижения воздействия на окружающую среду.</p>
          </div>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0">
          <div class="box" data-aos="fade-up" data-aos-delay="600">
            <img src="<?= base_url(); ?>vendor/front-end/assets/img/value-care.png" class="img-fluid" alt="Забота о клиентах">
            <h3>Забота о клиентах</h3>
            <p>Ваше доверие и комфорт – наш главный приоритет. Мы всегда готовы помочь и предложить лучшее.</p>
          </div>
        </div>

      </div>

    </div>

  </section><!-- End Values Section -->

  <!-- ======= Counts Section ======= -->
  <section id="counts" class="counts">
    <div class="container" data-aos="fade-up">

      <div class="row gy-4">

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-emoji-smile"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="<?= $this->M_dashboard->client()->total; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Счастливых клиентов</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-journal-richtext" style="color: #ee6c20;"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
              <p>Проектов</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-headset" style="color: #15be56;"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
              <p>Часов поддержки</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-people" style="color: #bb0852;"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="<?= $this->M_dashboard->staff()->total; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Трудолюбивых сотрудников</p>
            </div>
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Counts Section -->

  <!-- ======= Features Section ======= -->
  <section id="features" class="features">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Особенности</h2>
        <hr>
        <p>Ключевые аспекты нашей продукции, обеспечивающие превосходный результат.</p>
      </header>

      <div class="row">

        <div class="col-lg-6">
          <img src="<?= base_url(); ?>vendor/front-end/assets/img/household-chemicals-features.jpg" class="img-fluid" alt="Преимущества продукции Miradea">
        </div>

        <div class="col-lg-6 mt-5 mt-lg-0 d-flex">
          <div class="row align-self-center gy-4">

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="200">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Эффективные формулы</h3>
              </div>
            </div>

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="300">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Безопасно для семьи и природы</h3>
              </div>
            </div>

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="400">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Широкий ассортимент</h3>
              </div>
            </div>

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="500">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Дерматологически протестировано</h3>
              </div>
            </div>

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="600">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Удобная упаковка</h3>
              </div>
            </div>

            <div class="col-md-6" data-aos="zoom-out" data-aos-delay="700">
              <div class="feature-box d-flex align-items-center">
                <i class="bi bi-check"></i>
                <h3>Приятные ароматы</h3>
              </div>
            </div>

          </div>
        </div>

      </div> <!-- / row -->

      <!-- Feature Tabs -->
      <div class="row feture-tabs" data-aos="fade-up">
        <div class="col-lg-6">
          <h3>Видение, Миссия и История компании</h3>

          <!-- Tabs -->
          <ul class="nav nav-pills mb-3">
            <li>
              <a class="nav-link active" data-bs-toggle="pill" href="#tab1">Видение</a>
            </li>
            <li>
              <a class="nav-link" data-bs-toggle="pill" href="#tab2">Миссия</a>
            </li>
            <li>
              <a class="nav-link" data-bs-toggle="pill" href="#tab3">История</a>
            </li>
          </ul><!-- End Tabs -->

          <!-- Tab Content -->
          <div class="tab-content">

            <div class="card card-info tab-pane fade show active" id="tab1">
              <p class=""><?= $setting->visi; ?></p>
            </div><!-- End Tab 1 Content -->

            <div class="card card-success tab-pane fade show" id="tab2">
              <p class=""><?= $setting->misi; ?></p>
            </div><!-- End Tab 2 Content -->

            <div class="card card-warning tab-pane fade show" id="tab3">
              <p class=""><?= $setting->sejarah; ?></p>
            </div><!-- End Tab 3 Content -->

          </div>

        </div>

        <div class="col-lg-6">
          <img src="<?= base_url(); ?>vendor/front-end/assets/img/features-2.png" class="img-fluid" alt="Видение, Миссия, История">
        </div>

      </div><!-- End Feature Tabs -->

      <!-- Feature Icons -->
      <!-- <div class="row feature-icons" data-aos="fade-up">
        <h3>Ratione mollitia eos ab laudantium rerum beatae quo</h3>

        <div class="row">

          <div class="col-xl-4 text-center" data-aos="fade-right" data-aos-delay="100">
            <img src="<?= base_url(); ?>vendor/front-end/assets/img/features-3.png" class="img-fluid p-4" alt="">
          </div>

          <div class="col-xl-8 d-flex content">
            <div class="row align-self-center gy-4">

              <div class="col-md-6 icon-box" data-aos="fade-up">
                <i class="ri-line-chart-line"></i>
                <div>
                  <h4>Corporis voluptates sit</h4>
                  <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                </div>
              </div>

              <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                <i class="ri-stack-line"></i>
                <div>
                  <h4>Ullamco laboris nisi</h4>
                  <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                </div>
              </div>

              <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                <i class="ri-brush-4-line"></i>
                <div>
                  <h4>Labore consequatur</h4>
                  <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                </div>
              </div>

              <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                <i class="ri-magic-line"></i>
                <div>
                  <h4>Beatae veritatis</h4>
                  <p>Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta</p>
                </div>
              </div>

              <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                <i class="ri-command-line"></i>
                <div>
                  <h4>Molestiae dolor</h4>
                  <p>Et fuga et deserunt et enim. Dolorem architecto ratione tensa raptor marte</p>
                </div>
              </div>

              <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
                <i class="ri-radar-line"></i>
                <div>
                  <h4>Explicabo consectetur</h4>
                  <p>Est autem dicta beatae suscipit. Sint veritatis et sit quasi ab aut inventore</p>
                </div>
              </div>

            </div>
          </div>

        </div>

      </div> -->
      <!-- End Feature Icons -->

    </div>

  </section>
  <!-- End Features Section -->

  <!-- ======= Services Section ======= -->
  <section id="services" class="services">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Услуги</h2>
        <p>Откройте для себя наш ассортимент качественной бытовой химии и средств личной гигиены.</p>
      </header>

      <div class="row gy-4">
        <?php foreach ($layanan as $key => $value) :

          if ($value->status_layanan == "Publish") : ?>
            <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
              <div class="service-box blue">
                <div class="post-img"> <img src="<?= base_url('assets/img/layanan/') . $value->gambar_layanan; ?>" alt="<?= $value->judul_layanan; ?>" class="img-fluid rounded " style="height: 100px; width:100px;">
                </div>
                <h3><?= $value->judul_layanan; ?></h3>
                <a href="<?= base_url('home/detaillayanan/' . $value->slug_layanan); ?>" class="read-more"><span>Читать далее</span> <i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>

      </div>

    </div>

  </section><!-- End Services Section -->

  <!-- ======= F.A.Q Section ======= -->
  <section id="faq" class="faq">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>ЧаВо</h2>
        <p>Часто задаваемые вопросы</p>
      </header>

      <div class="row">
        <div class="col-lg-6">
          <!-- F.A.Q List 1-->
          <div class="accordion accordion-flush" id="faqlist1">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                  Безопасна ли ваша продукция для детей и домашних животных?
                </button>
              </h2>
              <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                <div class="accordion-body">
                  Большинство наших продуктов безопасно при соблюдении инструкций. Для семей с маленькими детьми и животными мы рекомендуем нашу специальную эко-линейку. Всегда читайте этикетку перед использованием.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                  Где я могу купить вашу продукцию?
                </button>
              </h2>
              <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                <div class="accordion-body">
                  Нашу продукцию можно найти в ведущих супермаркетах, хозяйственных магазинах, а также заказать онлайн на нашем сайте и у партнеров.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                  Используете ли вы натуральные компоненты?
                </button>
              </h2>
              <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                <div class="accordion-body">
                  Да, мы активно используем натуральные экстракты и масла во многих наших продуктах, особенно в линейках средств личной гигиены и эко-средств для дома.
                </div>
              </div>
            </div>

          </div>
        </div>

        <div class="col-lg-6">

          <!-- F.A.Q List 2-->
          <div class="accordion accordion-flush" id="faqlist2">

            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-1">
                  Как правильно утилизировать упаковку от ваших средств?
                </button>
              </h2>
              <div id="faq2-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                <div class="accordion-body">
                  Мы стремимся использовать перерабатываемые материалы. Информация о типе упаковки и способах утилизации указана на каждом продукте. Пожалуйста, следуйте местным правилам переработки.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-2">
                  Предлагаете ли вы продукцию для чувствительной кожи?
                </button>
              </h2>
              <div id="faq2-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                <div class="accordion-body">
                  Да, у нас есть специальная линейка гипоаллергенных средств личной гигиены, разработанная для чувствительной кожи и протестированная дерматологами.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-3">
                  Можно ли получить оптовый прайс-лист?
                </button>
              </h2>
              <div id="faq2-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                <div class="accordion-body">
                  Да, для оптовых закупок, пожалуйста, свяжитесь с нашим отделом продаж через форму на сайте или по указанному телефону.
                </div>
              </div>
            </div>

          </div>
        </div>

      </div>

    </div>

  </section><!-- End F.A.Q Section -->

  <!-- ======= Portfolio Section ======= -->
  <section id="portfolio" class="portfolio">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Портфолио</h2>
        <p>Примеры нашей продукции и решения для вашего дома и гигиены.</p>
      </header>

      <div class="row" data-aos="fade-up" data-aos-delay="100">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul id="portfolio-flters">
            <li data-filter="*" class="filter-active">Все</li>
            <li data-filter=".filter-household">Бытовая химия</li>
            <li data-filter=".filter-hygiene">Личная гигиена</li>
            <li data-filter=".filter-babycare">Уход за детьми</li>
            <li data-filter=".filter-eco">Эко-средства</li>
          </ul>
        </div>
      </div>

      <div class="row gy-4 portfolio-container" data-aos="fade-up" data-aos-delay="200">

        <?php foreach ($portfolio as $key => $value) :
          // strip tags to avoid breaking any html
          // TODO: The filtering logic below needs to be updated based on new categories.
          // For example, instead of " App Development", it might be "Бытовая химия"
          // and filter-app should become filter-household etc.
          // This is a placeholder for demonstration.
          if ($value->nama_layanan == "Бытовая химия" && $value->status_portfolio == "Publish") : ?>
            <div class="col-lg-4 col-md-6 portfolio-item filter-household">
              <div class="portfolio-wrap">
                <img src="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" class="img-fluid" alt="<?= $value->judul_portfolio; ?>">
                <div class="portfolio-info">
                  <h4><?= $value->judul_portfolio; ?></h4>
                  <p><?= $value->nama_layanan; ?></p>
                  <div class="portfolio-links">
                    <a href="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" data-gallery="portfolioGallery" class="portfokio-lightbox" title="<?= $value->judul_portfolio; ?>"><i class="bi bi-plus"></i></a>
                    <a href="<?= base_url('home/portfoliodetail/' . $value->slug_portfolio); ?>" title="Подробнее"><i class="bi bi-link"></i></a>
                  </div>
                </div>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>

        <?php foreach ($portfolio as $key => $value) :
          // strip tags to avoid breaking any html
          // TODO: The filtering logic below needs to be updated based on new categories.
          if ($value->nama_layanan == "Личная гигиена" && $value->status_portfolio == "Publish") : ?>
            <div class="col-lg-4 col-md-6 portfolio-item filter-hygiene">
              <div class="portfolio-wrap">
                <img src="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" class="img-fluid" alt="<?= $value->judul_portfolio; ?>">
                <div class="portfolio-info">
                  <h4><?= $value->judul_portfolio; ?></h4>
                  <p><?= $value->nama_layanan; ?></p>
                  <div class="portfolio-links">
                    <a href="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" data-gallery="portfolioGallery" class="portfokio-lightbox" title="<?= $value->judul_portfolio; ?>"><i class="bi bi-plus"></i></a>
                    <a href="<?= base_url('home/portfoliodetail/' . $value->slug_portfolio); ?>" title="Подробнее"><i class="bi bi-link"></i></a>
                  </div>
                </div>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>

        <?php foreach ($portfolio as $key => $value) :
          // strip tags to avoid breaking any html
          // TODO: The filtering logic below needs to be updated based on new categories.
          if ($value->nama_layanan == "Уход за детьми" && $value->status_portfolio == "Publish") : ?>
            <div class="col-lg-4 col-md-6 portfolio-item filter-babycare">
              <div class="portfolio-wrap">
                <img src="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" class="img-fluid" alt="<?= $value->judul_portfolio; ?>">
                <div class="portfolio-info">
                  <h4><?= $value->judul_portfolio; ?></h4>
                  <p><?= $value->nama_layanan; ?></p>
                  <div class="portfolio-links">
                    <a href="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" data-gallery="portfolioGallery" class="portfokio-lightbox" title="<?= $value->judul_portfolio; ?>"><i class="bi bi-plus"></i></a>
                    <a href="<?= base_url('home/portfoliodetail/' . $value->slug_portfolio); ?>" title="Подробнее"><i class="bi bi-link"></i></a>
                  </div>
                </div>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>

      </div>

    </div>

  </section><!-- End Portfolio Section -->

  <!-- ======= Testimonials Section ======= -->
  <section id="testimonials" class="testimonials">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Отзывы</h2>
        <p>Что о нас говорят</p>
      </header>

      <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="200">
        <div class="swiper-wrapper ">
          <?php foreach ($portfolio as $key => $value) :
            // strip tags to avoid breaking any html
            $isi = strip_tags($value->testimoni);
            if (strlen($isi) > 200) {

              // truncate isi
              $isiCut = substr($isi, 0, 200);
              $endPoint = strrpos($isiCut, ' ');

              //if the isi doesn't contain any space then it will cut without word basis.
              $isi = $endPoint ? substr($isiCut, 0, $endPoint) : substr($isiCut, 0);
            }
            if ($value->status_portfolio == "Publish") : ?>
              <div class="swiper-slide">
                <div class="card testimonial-item ">
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <?= $isi; ?>
                  </p>
                  <div class="profile mt-auto">
                    <img src="<?= base_url('assets/img/portfolio/') . $value->gambar_portfolio; ?>" class="testimonial-img" alt="Фото клиента">
                    <h3><?= $value->judul_portfolio; ?></h3>
                    <h4><?= $value->nama_layanan; ?></h4>
                  </div>
                </div>
              </div>
            <?php endif; ?>
          <?php endforeach; ?>
          <!-- End testimonial item -->

        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>

  </section><!-- End Testimonials Section -->

  <!-- ======= Team Section ======= -->
  <section id="team" class="team">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Команда</h2>
        <p>Наша трудолюбивая команда</p>
      </header>
      <div class="row gy-4 d-flex justify-content-center">
        <?php foreach ($staff as $key => $value) :
          if ($value->publish == "Publish") : ?>

            <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
              <div class="member">
                <div class="member-img">
                  <img src="<?= base_url('assets/img/staff/') . $value->gambar_staff; ?>" class="img-fluid" alt="<?= $value->nama_staff; ?> - <?= $value->nama_kategori; ?>">
                  <div class="social">
                    <a href=""><i class="bi bi-twitter"></i></a>
                    <a href=""><i class="bi bi-facebook"></i></a>
                    <a href=""><i class="bi bi-instagram"></i></a>
                    <a href=""><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
                <div class="member-info">
                  <h4><?= $value->nama_staff; ?></h4>
                  <span><?= $value->nama_kategori; ?></span>
                  <p><?= $value->no_telepon; ?></p>
                </div>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>
      </div>

    </div>

  </section><!-- End Team Section -->

  <!-- ======= Clients Section ======= -->
  <section id="clients" class="clients">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Наши клиенты</h2>
        <p>Нам доверяют ведущие ритейлеры и дистрибьюторы.</p>
      </header>

      <div class="clients-slider swiper-container">
        <div class="swiper-wrapper align-items-center">
          <?php foreach ($client as $key => $value) :
            if ($value->publish == "Publish") : ?>
              <div class="swiper-slide">
                <img src="<?= base_url('assets/img/client/') . $value->gambar_client; ?>" class="img-fluid" alt="Логотип клиента">
              </div>
            <?php endif; ?>
          <?php endforeach; ?>
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </div>

  </section><!-- End Clients Section -->

  <!-- ======= Recent Blog Posts Section ======= -->
  <section id="recent-blog-posts" class="recent-blog-posts">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Блог</h2>
        <p>Последние записи из нашего блога</p>
      </header>

      <div class="row">
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
            <div class="col-lg-4 mb-2">
              <div class="post-box">
                <div class="post-img"><img src="<?= base_url('assets/img/berita/') . $value->gambar_berita; ?>" class="img-fluid" alt="<?= $value->judul_berita; ?>"></div>
                <span class="post-date"><?= date('d-M-Y', strtotime($value->date_cretated)); ?></span>
                <h3 class="post-title"><?= $value->judul_berita; ?></h3>
                <a href="<?= base_url('home/detail/' . $value->slug_berita); ?>" class="readmore stretched-link mt-auto"><span>Читать далее</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          <?php endif; ?>
        <?php endforeach; ?>

      </div>

    </div>

  </section><!-- End Recent Blog Posts Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Контакты</h2>
        <p>Свяжитесь с нами</p>
      </header>

      <div class="row gy-4">

        <div class="col-lg-6">

          <div class="row gy-4">
            <div class="col-md-6">
              <div class="info-box">
                <i class="bi bi-geo-alt"></i>
                <h3>Адрес</h3>
                <p><?= $setting->alamat; ?></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="info-box">
                <i class="bi bi-telephone"></i>
                <h3>Позвоните нам</h3>
                <p><?= $setting->no_telepon; ?><br><?= $setting->no_telepon; ?></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="info-box">
                <i class="bi bi-envelope"></i>
                <h3>Напишите нам</h3>
                <p><?= $setting->email; ?><br><?= $setting->email; ?></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="info-box">
                <i class="bi bi-clock"></i>
                <h3>Часы работы</h3>
                <p>Понедельник - Пятница<br>09:00 - 17:00</p>
              </div>
            </div>
          </div>

        </div>

        <div class="col-lg-6">
          <form action="forms/contact.php" method="post" class="php-email-form">
            <div class="row gy-4">

              <div class="col-md-6">
                <input type="text" name="name" class="form-control" placeholder="Ваше имя" required>
              </div>

              <div class="col-md-6 ">
                <input type="email" class="form-control" name="email" placeholder="Ваш Email" required>
              </div>

              <div class="col-md-12">
                <input type="text" class="form-control" name="subject" placeholder="Тема" required>
              </div>

              <div class="col-md-12">
                <textarea class="form-control" name="message" rows="6" placeholder="Сообщение" required></textarea>
              </div>

              <div class="col-md-12 text-center">
                <div class="loading">Загрузка</div>
                <div class="error-message"></div>
                <div class="sent-message">Ваше сообщение было отправлено. Спасибо!</div>

                <button type="submit">Отправить сообщение</button>
              </div>

            </div>
          </form>

        </div>

      </div>

    </div>

  </section><!-- End Contact Section -->

</main><!-- End #main -->