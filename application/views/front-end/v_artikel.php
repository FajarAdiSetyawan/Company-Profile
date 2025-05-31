<?php if (isset($_GET['entri'])) { ?>
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <div class="section-header-back">
          <a href="features-posts.html" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
        </div>
        <h1>Написать статью</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Статьи</a></div>
          <div class="breadcrumb-item">Написать статью</div>
        </div>
      </div>

      <div class="section-body">
        <h2 class="section-title">Написать статью</h2>
        <p class="section-lead">
          На этой странице вы можете создать новую запись и заполнить все поля.
        </p>

        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h4>Написать пост</h4>
              </div>
              <div class="card-body">
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Заголовок</label>
                    <div class="col-sm-12 col-md-9">
                      <input type="text" class="form-control">
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Категория</label>
                    <div class="col-sm-12 col-md-9">
                      <select class="form-control selectric">
                        <option>Технологии</option>
                        <option>Новости</option>
                        <option>Политика</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Содержание</label>
                    <div class="col-sm-12 col-md-9">
                      <textarea name="isi" id="isi" required>Содержание статьи</textarea>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Миниатюра</label>
                    <div class="col-sm-12 col-md-9">
                      <div id="image-preview" class="image-preview">
                        <label for="image-upload" id="image-label">Выберите файл</label>
                        <input type="file" name="image" id="image-upload" />
                      </div>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Статус</label>
                    <div class="col-sm-12 col-md-9">
                      <select class="form-control selectric">
                        <option>Опубликовать</option>
                        <option>Черновик</option>
                        <option>В ожидании</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3"></label>
                    <div class="col-sm-12 col-md-9">
                      <button class="btn btn-primary">Создать пост</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
<?php } ?>

<?php if (isset($_GET['data'])) { ?>
  <!-- Main Content -->
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <h1>Список статей</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Статьи</a></div>
          <div class="breadcrumb-item">Список статей</div>
        </div>
      </div>

      <div class="section-body">
        <h2 class="section-title">Список статей</h2>
        <p class="section-lead">
          Мы используем 'DataTables' от @SpryMedia. Полную документацию вы можете найти <a href="https://datatables.net/">здесь</a>.
        </p>

        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h4>Список статей</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-striped" id="table">
                    <thead>
                      <tr>
                        <th class="text-center" style="width: 15%;">
                          №
                        </th>
                        <th class="text-center">Заголовок статьи</th>
                        <th class="text-center">Опции</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-center">
                          1
                        </td>
                        <td>Создать мобильное приложение</td>
                        <td class="text-center"><a href="#" class="btn btn-secondary">Подробнее</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          2
                        </td>
                        <td>Редизайн главной страницы</td>
                        <td class="text-center"><a href="#" class="btn btn-secondary">Подробнее</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          3
                        </td>
                        <td>Резервное копирование базы данных</td>

                        <td class="text-center"><a href="#" class="btn btn-secondary">Подробнее</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          4
                        </td>
                        <td>Ввод данных</td>

                        <td class="text-center"><a href="#" class="btn btn-secondary">Подробнее</a></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
<?php } ?>