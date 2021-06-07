<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        <?= $subtitle; ?>
      </p>

      <div class="row">
        <div class="col-12">
          <div class="card card-info">
            <div class="card-header">
              <h4><?= $subtitle; ?></h4>
              <div class="float-right">
                <button class="btn btn-primary" data-toggle="modal" data-target="#modal-tambah"><i class="fas fa-fw fa-plus"></i> Tambah Kategori</button>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-striped" id="example1">
                  <thead>
                    <tr>
                      <th class="text-center">
                        No
                      </th>
                      <th class="text-center">Nama Kategori</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $no = 1;
                    foreach ($kategori as $key => $value) : ?>
                      <tr>
                        <td class="text-center"><?= $no++; ?></td>
                        <td class="text-center"><?= $value->nama_kategori; ?></td>
                        <td class="text-center">
                          <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit<?= $value->id_kategori; ?>">
                            <i class="fas fa-fw fa-edit"></i> Edit
                          </button>
                          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#hapus<?= $value->id_kategori; ?>"><i class="fas fa-trash"></i> Hapus</button>
                        </td>
                      </tr>
                    <?php endforeach; ?>
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
<!-- edit Modal -->
<?php
foreach ($kategori as $key => $value) : ?>
  <div class="modal fade" id="edit<?= $value->id_kategori; ?>">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Edit Kategori </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <form method="POST" action="<?= base_url('kategori/editkategoriclient/' . $value->id_kategori); ?>" class="needs-validation" novalidate>
            <div class="form-group">
              <label for="name">Nama Kategori</label>
              <input id="name" type="text" class="form-control" name="name" tabindex="1" autofocus value="<?= $value->nama_kategori; ?>" required>
              <small class="text-danger "><?= form_error('name') ?></small>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-primary">Edit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>

<!-- HAPUS Modal -->
<?php
foreach ($kategori as $key => $value) : ?>
  <div class="modal fade" id="hapus<?= $value->id_kategori; ?>">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h6 class="modal-title mr-1">Menghapus Kategori <h6 class="text-center badge badge-danger"><?= $value->nama_kategori; ?></h6>
          </h6>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <form method="POST" action="<?= base_url('kategori/hapuskategoriclient/' . $value->id_kategori); ?>">
            <h5>Apakah Anda Yakin?</h5>
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-danger">Hapus</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>


<!-- Tambah Data Modal -->
<div class="modal fade" id="modal-tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Kategori</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="POST" action="<?= base_url('kategori/tambahKategoriclient'); ?>" class="needs-validation" novalidate>
        <div class="modal-body">
          <div class="form-group">
            <label for="name">Nama Kategori</label>
            <input id="name" type="text" class="form-control" name="name" tabindex="1" autofocus required value="<?= set_value('name'); ?>">
            <small class="text-danger "><?= form_error('name') ?></small>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-primary ">Simpan</button>
      </form>
    </div>
  </div>
</div>
</div>