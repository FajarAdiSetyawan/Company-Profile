<?php if (isset($_GET['entri'])) { ?>
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <div class="section-header-back">
          <a href="features-posts.html" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
        </div>
        <h1>Tulis Artikel</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Artikel</a></div>
          <div class="breadcrumb-item">Tulis Artikel</div>
        </div>
      </div>

      <div class="section-body">
        <h2 class="section-title">Tulis Artikel</h2>
        <p class="section-lead">
          Di halaman ini Anda dapat membuat posting baru dan mengisi semua kolom.
        </p>

        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h4>Tulis Postingan</h4>
              </div>
              <div class="card-body">
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Judul</label>
                    <div class="col-sm-12 col-md-9">
                      <input type="text" class="form-control">
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Kategory</label>
                    <div class="col-sm-12 col-md-9">
                      <select class="form-control selectric">
                        <option>Tech</option>
                        <option>News</option>
                        <option>Political</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Isi</label>
                    <div class="col-sm-12 col-md-9">
                      <textarea name="isi" id="isi" required>Isi Artikel</textarea>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Thumbnail</label>
                    <div class="col-sm-12 col-md-9">
                      <div id="image-preview" class="image-preview">
                        <label for="image-upload" id="image-label">Choose File</label>
                        <input type="file" name="image" id="image-upload" />
                      </div>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3">Status</label>
                    <div class="col-sm-12 col-md-9">
                      <select class="form-control selectric">
                        <option>Publish</option>
                        <option>Draft</option>
                        <option>Pending</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row mb-4">
                    <label class="col-form-label col-12 col-md-3 col-lg-3"></label>
                    <div class="col-sm-12 col-md-9">
                      <button class="btn btn-primary">Create Post</button>
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
        <h1>Daftar Artikel</h1>
        <div class="section-header-breadcrumb">
          <div class="breadcrumb-item active"><a href="#">Artikel</a></div>
          <div class="breadcrumb-item">Daftar Artikel</div>
        </div>
      </div>

      <div class="section-body">
        <h2 class="section-title">Daftar Artikel</h2>
        <p class="section-lead">
          We use 'DataTables' made by @SpryMedia. You can check the full documentation <a href="https://datatables.net/">here</a>.
        </p>

        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h4>Daftar Artikel</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-striped" id="table">
                    <thead>
                      <tr>
                        <th class="text-center" style="width: 15%;">
                          No
                        </th>
                        <th class="text-center">Judul Artikel</th>
                        <th class="text-center">Opsi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-center">
                          1
                        </td>
                        <td>Create a mobile app</td>
                        <td class="text-center"><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          2
                        </td>
                        <td>Redesign homepage</td>
                        <td class="text-center"><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          3
                        </td>
                        <td>Backup database</td>

                        <td class="text-center"><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr>
                      <tr>
                        <td class="text-center">
                          4
                        </td>
                        <td>Input data</td>

                        <td class="text-center"><a href="#" class="btn btn-secondary">Detail</a></td>
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