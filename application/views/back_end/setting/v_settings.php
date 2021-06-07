<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('home'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat Mengubah Pengaturan
      </p>
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4><?= $subtitle; ?></h4>
            </div>
            <div class="card-body">
              <form method="POST" action="<?= base_url('settings/update'); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Nama Perusahaan</label>
                    <input type="text" class="form-control" name="nama" autofocus value="<?= $setting->nama_perusahaan ?>">
                    <small class="text-danger "><?= form_error('nama') ?></small>
                  </div>
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Email Perusahaan</label>
                    <input type="email" class="form-control" name="email" autofocus value="<?= $setting->email ?>">
                    <small class="text-danger "><?= form_error('email') ?></small>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Alamat Perusahaan</label>
                    <input type="text" class="form-control" name="alamat" autofocus value="<?= $setting->alamat ?>">
                    <small class="text-danger "><?= form_error('alamat') ?></small>
                  </div>
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Nomor Telepon</label>
                    <input type="tel" class="form-control" name="no" onkeypress='validate(event)' autofocus value="<?= $setting->no_telepon ?>">
                    <small class="text-danger "><?= form_error('no') ?></small>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-floatings">
                    <label for="keywords">Profile</label>
                    <textarea name="profile" id="profile"><?= $setting->profile; ?></textarea>
                    <small class="text-danger "><?= form_error('profile') ?></small>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-floatings">
                    <label for="keywords">Sejarah</label>
                    <textarea name="sejarah" id="sejarah"><?= $setting->sejarah; ?></textarea>
                    <small class="text-danger "><?= form_error('sejarah') ?></small>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label ">Visi</label>
                  <div class="">
                    <textarea name="visi" id="berita"><?= $setting->visi ?></textarea>
                    <small class="text-danger "><?= form_error('visi') ?></small>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label ">Misi</label>
                  <div class="">
                    <textarea name="misi" id="misi"><?= $setting->misi ?></textarea>
                    <small class="text-danger "><?= form_error('misi') ?></small>
                  </div>
                </div>
                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url('assets/img/company/') . $setting->image; ?>" alt="" srcset="" id="image-previews">
                      <small class="text-danger "><?= form_error('image') ?></small>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <button type="submit" class="btn btn-primary ">Update</button>
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