<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <ol>
        <li><a href="<?= base_url('home/#hero'); ?>">Home</a></li>
        <li><a href="<?= base_url('home/blog'); ?>">Blog</a></li>
        <li><?= $berita->judul_berita; ?></li>
      </ol>
      <h2><?= $berita->judul_berita; ?></h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Single Section ======= -->
  <section id="blog" class="blog">
    <div class="container" data-aos="fade-up">

      <div class="row">

        <div class="col-lg-8 entries">

          <div class="card entry entry-single">

            <div class="entry-img">
              <img src="<?= base_url('assets/img/berita/') . $berita->gambar_berita; ?>" alt="" class="img-responsive center-block d-block mx-auto">
            </div>

            <h2 class="entry-title">
              <a href=""><?= $berita->judul_berita; ?></a>
            </h2>

            <div class="entry-meta">
              <ul>
                <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a><?= $berita->nama; ?></a></li>
                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a><?= date('d-M-Y H:i', strtotime($berita->date_cretated)); ?></a></li>
                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a>12 Comments</a></li>
              </ul>
            </div>

            <div class="entry-content">
              <p><?= $berita->isi_berita; ?></p>
            </div>

            <div class="entry-footer">
              <i class="bi bi-folder"></i>
              <ul class="cats">
                <li><a href="#">Business</a></li>
              </ul>

              <i class="bi bi-tags"></i>
              <ul class="tags">
                <?= $berita->keywords; ?>
              </ul>
            </div>

          </div><!-- End blog entry -->

          <div class="blog-author d-flex align-items-center">
            <img src="<?= base_url('assets/img/profile/' . $berita->image); ?>" class="rounded-circle float-left" alt="">
            <div>
              <h4><?= $berita->nama; ?></h4>
              <div class="social-links">
                <a href="https://twitters.com/#"><i class="bi bi-twitter"></i></a>
                <a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a>
                <a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
              </div>
              <p>
                Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.
              </p>
            </div>
          </div><!-- End blog author bio -->

          <div class="blog-comments">

            <h4 class="comments-count">8 Comments</h4>

            <div id="comment-1" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-1.jpg" alt=""></div>
                <div>
                  <h5><a href="">Georgia Reader</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                  <time datetime="2020-01-01">01 Jan, 2020</time>
                  <p>
                    Et rerum totam nisi. Molestiae vel quam dolorum vel voluptatem et et. Est ad aut sapiente quis molestiae est qui cum soluta.
                    Vero aut rerum vel. Rerum quos laboriosam placeat ex qui. Sint qui facilis et.
                  </p>
                </div>
              </div>
            </div><!-- End comment #1 -->

            <div id="comment-2" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-2.jpg" alt=""></div>
                <div>
                  <h5><a href="">Aron Alvarado</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                  <time datetime="2020-01-01">01 Jan, 2020</time>
                  <p>
                    Ipsam tempora sequi voluptatem quis sapiente non. Autem itaque eveniet saepe. Officiis illo ut beatae.
                  </p>
                </div>
              </div>

              <div id="comment-reply-1" class="comment comment-reply">
                <div class="d-flex">
                  <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-3.jpg" alt=""></div>
                  <div>
                    <h5><a href="">Lynda Small</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                    <time datetime="2020-01-01">01 Jan, 2020</time>
                    <p>
                      Enim ipsa eum fugiat fuga repellat. Commodi quo quo dicta. Est ullam aspernatur ut vitae quia mollitia id non. Qui ad quas nostrum rerum sed necessitatibus aut est. Eum officiis sed repellat maxime vero nisi natus. Amet nesciunt nesciunt qui illum omnis est et dolor recusandae.

                      Recusandae sit ad aut impedit et. Ipsa labore dolor impedit et natus in porro aut. Magnam qui cum. Illo similique occaecati nihil modi eligendi. Pariatur distinctio labore omnis incidunt et illum. Expedita et dignissimos distinctio laborum minima fugiat.

                      Libero corporis qui. Nam illo odio beatae enim ducimus. Harum reiciendis error dolorum non autem quisquam vero rerum neque.
                    </p>
                  </div>
                </div>

                <div id="comment-reply-2" class="comment comment-reply">
                  <div class="d-flex">
                    <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-4.jpg" alt=""></div>
                    <div>
                      <h5><a href="">Sianna Ramsay</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                      <time datetime="2020-01-01">01 Jan, 2020</time>
                      <p>
                        Et dignissimos impedit nulla et quo distinctio ex nemo. Omnis quia dolores cupiditate et. Ut unde qui eligendi sapiente omnis ullam. Placeat porro est commodi est officiis voluptas repellat quisquam possimus. Perferendis id consectetur necessitatibus.
                      </p>
                    </div>
                  </div>

                </div><!-- End comment reply #2-->

              </div><!-- End comment reply #1-->

            </div><!-- End comment #2-->

            <div id="comment-3" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-5.jpg" alt=""></div>
                <div>
                  <h5><a href="">Nolan Davidson</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                  <time datetime="2020-01-01">01 Jan, 2020</time>
                  <p>
                    Distinctio nesciunt rerum reprehenderit sed. Iste omnis eius repellendus quia nihil ut accusantium tempore. Nesciunt expedita id dolor exercitationem aspernatur aut quam ut. Voluptatem est accusamus iste at.
                    Non aut et et esse qui sit modi neque. Exercitationem et eos aspernatur. Ea est consequuntur officia beatae ea aut eos soluta. Non qui dolorum voluptatibus et optio veniam. Quam officia sit nostrum dolorem.
                  </p>
                </div>
              </div>

            </div><!-- End comment #3 -->

            <div id="comment-4" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-6.jpg" alt=""></div>
                <div>
                  <h5><a href="">Kay Duggan</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                  <time datetime="2020-01-01">01 Jan, 2020</time>
                  <p>
                    Dolorem atque aut. Omnis doloremque blanditiis quia eum porro quis ut velit tempore. Cumque sed quia ut maxime. Est ad aut cum. Ut exercitationem non in fugiat.
                  </p>
                </div>
              </div>

            </div><!-- End comment #4 -->

            <div class="reply-form">
              <h4>Leave a Reply</h4>
              <p>Your email address will not be published. Required fields are marked * </p>
              <form action="">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input name="name" type="text" class="form-control" placeholder="Your Name*">
                  </div>
                  <div class="col-md-6 form-group">
                    <input name="email" type="text" class="form-control" placeholder="Your Email*">
                  </div>
                </div>
                <div class="row">
                  <div class="col form-group">
                    <input name="website" type="text" class="form-control" placeholder="Your Website">
                  </div>
                </div>
                <div class="row">
                  <div class="col form-group">
                    <textarea name="comment" class="form-control" placeholder="Your Comment*"></textarea>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary">Post Comment</button>

              </form>

            </div>

          </div><!-- End blog comments -->

        </div><!-- End blog entries list -->

        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Search</h3>
            <div class="sidebar-item search-form">
              <form action="">
                <input type="text">
                <button type="submit"><i class="bi bi-search"></i></button>
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Categories</h3>
            <div class="sidebar-item categories">
              <ul>
                <?php foreach ($kategori as $key => $values) : ?>
                  <li><a href="#"><?= $values->nama_kategori; ?> <span>(25)</span></a></li>
                <?php endforeach; ?>
              </ul>
            </div><!-- End sidebar categories-->

            <h3 class="sidebar-title">Recent Posts</h3>
            <?php foreach ($lastst_berita as $key => $value) :
              // CEK KONDISI BERITA
              if ($value->status_berita == "Publish") : ?>
                <div class="sidebar-item recent-posts">
                  <div class="post-item clearfix">
                    <img src="<?= base_url('assets/img/berita/') . $value->gambar_berita; ?>" alt="">
                    <h4><a href="<?= base_url('home/detail/' . $value->slug_berita); ?>"><?= $value->judul_berita; ?></a></h4>
                    <time datetime="01-01-2020"><?= date('d-m-Y H:i', strtotime($value->date_cretated)); ?></time>
                  </div>
                </div><!-- End sidebar recent posts-->
              <?php endif; ?>
            <?php endforeach; ?>
            <!-- End sidebar recent posts-->

            <h3 class="sidebar-title">Tags</h3>
            <div class="sidebar-item tags">
              <ul>
                <li><a href="#">App</a></li>
                <li><a href="#">IT</a></li>
                <li><a href="#">Business</a></li>
                <li><a href="#">Mac</a></li>
                <li><a href="#">Design</a></li>
                <li><a href="#">Office</a></li>
                <li><a href="#">Creative</a></li>
                <li><a href="#">Studio</a></li>
                <li><a href="#">Smart</a></li>
                <li><a href="#">Tips</a></li>
                <li><a href="#">Marketing</a></li>
              </ul>
            </div><!-- End sidebar tags-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Single Section -->

</main><!-- End #main -->