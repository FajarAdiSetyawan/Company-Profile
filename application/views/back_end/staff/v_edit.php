<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?= base_url('staff'); ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item active"><a href="<?= base_url('staff'); ?>">Daftar Staff</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat mengedit <strong><?= $staff->nama_staff; ?></strong>
      </p>

      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Edit Staff</h4>
            </div>
            <div class="card-body">
              <form method="POST" action="<?= base_url('staff/edit/' . $staff->id_staff); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nama Staff</label>
                    <input type="text" class="form-control" name="name" autofocus value="<?= $staff->nama_staff; ?>">
                    <small class="text-danger "><?= form_error('name') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Jabatan</label>
                    <select name="jabatan" class="form-control selectric">
                      <option value="<?= $staff->id_kategori; ?>" selected><?= $staff->nama_kategori; ?></option>
                      <?php foreach ($kategori as $key => $values) : ?>
                        <option value="<?= $values->id_kategori; ?>"><?= $values->nama_kategori; ?></option>
                      <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="d-block">Jenis Kelamin</label>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="Laki-Laki" <?php if ($staff->gender == "Laki-Laki") {
                                                                                                                          echo "checked";
                                                                                                                        } ?>>
                      <label class="form-check-label" for="exampleRadios1">
                        Laki-Laki
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="Perempuan" <?php if ($staff->gender == "Perempuan") {
                                                                                                                          echo "checked";
                                                                                                                        } ?>>
                      <label class="form-check-label" for="exampleRadios2">
                        Perempuan
                      </label>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Email</label>
                    <input type="email" class="form-control" name="email" value="<?= $staff->email_staff; ?>">
                    <small class="text-danger "><?= form_error('email') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nomor Telepon</label>
                    <input type="tel" class="form-control" name="no" onkeypress='validate(event)' value="<?= $staff->no_telepon; ?>">
                    <small class="text-danger "><?= form_error('no') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label for="status">Status Publish di Web</label>
                    <select name="status" class="form-control selectric">
                      <option value="<?= $staff->publish; ?>" selected><?= $staff->publish; ?></option>
                      <option value="Publish">Publish</option>
                      <option value="Draft">Draft</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-floatings">
                    <label for="keywords">Alamat</label>
                    <textarea class="form-control" name="alamat" placeholder="Isi Alamat" id="floatingTextarea2" style="height: 60px; resize: none;"><?= $staff->alamat; ?></textarea>
                    <small class="text-danger "><?= form_error('alamat') ?></small>
                  </div>
                </div>

                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" value="<?= $staff->gambar_staff; ?>" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url('assets/img/staff/') . $staff->gambar_staff; ?>" alt="" srcset="" id="image-previews">
                      <small class="text-danger "><?= form_error('image') ?></small>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <button type="submit" class="btn btn-primary ">Edit Staff</button>
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