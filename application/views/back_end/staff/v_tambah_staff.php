<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="features-posts.html" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('home'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat membuat Staff baru
      </p>

      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Tambah Staff</h4>
            </div>
            <div class="card-body">
              <form method="POST" action="<?= base_url('staff/tambahStaff'); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nama Staff</label>
                    <input type="text" class="form-control" name="name" autofocus value="<?= set_value('name'); ?>">
                    <small class="text-danger "><?= form_error('name') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Jabatan</label>
                    <select name="jabatan" class="form-control selectric">
                      <?php foreach ($kategori as $key => $value) : ?>
                        <option value="<?= $value->id_kategori; ?>"><?= $value->nama_kategori; ?></option>
                      <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="d-block">Jenis Kelamin</label>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="Laki-Laki">
                      <label class="form-check-label" for="exampleRadios1">
                        Laki-Laki
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="Perempuan">
                      <label class="form-check-label" for="exampleRadios2">
                        Perempuan
                      </label>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Email</label>
                    <input type="email" class="form-control" name="email" value="<?= set_value('email'); ?>">
                    <small class="text-danger "><?= form_error('email') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nomor Telepon</label>
                    <input type="tel" class="form-control" name="no" onkeypress='validate(event)' value="<?= set_value('no'); ?>">
                    <small class="text-danger "><?= form_error('no') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label for="status">Status Publish di Web</label>
                    <select name="status" class="form-control selectric">
                      <option value="Publish">Publish</option>
                      <option value="Draft">Draft</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-floatings">
                    <label for="keywords">Alamat</label>
                    <textarea class="form-control" name="alamat" placeholder="Isi Alamat" id="floatingTextarea2" style="height: 60px; resize: none;" value="<?= set_value('alamat'); ?>"></textarea>
                    <small class="text-danger "><?= form_error('alamat') ?></small>
                  </div>
                </div>

                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url(); ?>vendor/back-end/assets/img/transparent.png" alt="" srcset="" id="image-previews">
                      <small class="text-danger "><?= form_error('image') ?></small>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <button type="submit" class="btn btn-primary ">Buat Staff</button>
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