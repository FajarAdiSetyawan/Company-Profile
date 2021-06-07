<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?= base_url('client'); ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><a href="<?= base_url('client'); ?>">Daftar Cient</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat mengedit <strong><?= $client->nama_client; ?></strong>
      </p>

      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Edit Client</h4>
            </div>
            <div class="card-body">
              <form method="POST" action="<?= base_url('client/edit/' . $client->id_client); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nama Client</label>
                    <input type="text" class="form-control" name="name" autofocus value="<?= $client->nama_client; ?>">
                    <small class="text-danger "><?= form_error('name') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Jenis Perusahaan</label>
                    <select name="jenis" class="form-control selectric">
                      <option value="<?= $client->id_kategori; ?>" selected><?= $client->nama_kategori; ?></option>
                      <?php foreach ($kategori as $key => $values) : ?>
                        <option value="<?= $values->id_kategori; ?>"><?= $values->nama_kategori; ?></option>
                      <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Website</label>
                    <input type="text" class="form-control" name="website" value="<?= $client->website; ?>">
                    <small class="text-danger "><?= form_error('website') ?></small>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Email</label>
                    <input type="email" class="form-control" name="email" value="<?= $client->email_client; ?>">
                    <small class="text-danger "><?= form_error('email') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label class="">Nomor Telepon</label>
                    <input type="tel" class="form-control" name="no" onkeypress='validate(event)' value="<?= $client->no_telepon; ?>">
                    <small class="text-danger "><?= form_error('no') ?></small>
                  </div>
                  <div class="form-group col-lg-4 col-sm-12 col-md-12">
                    <label for="status">Status Publish di Web</label>
                    <select name="status" class="form-control selectric">
                      <option value="<?= $client->publish; ?>" selected><?= $client->publish; ?></option>
                      <option value="Publish">Publish</option>
                      <option value="Draft">Draft</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-floatings">
                    <label for="keywords">Alamat</label>
                    <textarea class="form-control" name="alamat" placeholder="Isi Alamat" id="floatingTextarea2" style="height: 60px; resize: none;"><?= $client->alamat; ?></textarea>
                    <small class="text-danger "><?= form_error('alamat') ?></small>
                  </div>
                </div>

                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" value="<?= $client->gambar_client; ?>" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url('assets/img/client/') . $client->gambar_client; ?>" alt="" srcset="" id="image-previews">
                      <small class="text-danger "><?= form_error('image') ?></small>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <button type="submit" class="btn btn-primary ">Edit client</button>
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