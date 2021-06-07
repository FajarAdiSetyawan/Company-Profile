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
                      <th class="text-center">Nama client</th>
                      <th class="text-center">Jenis Client</th>
                      <th class="text-center">Alamat</th>
                      <th class="text-center">Email</th>
                      <th class="text-center">No Telepon</th>
                      <th class="text-center">Website</th>
                      <th class="text-center">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $no = 1;
                    foreach ($client as $key => $value) : ?>
                      <tr>
                        <td class="text-center"><?= $no++; ?></td>
                        <td class="text-center"><?= $value->nama_client; ?>
                          <div class="table-links">
                            <div class="bullet"></div>
                            <a href="<?= base_url('client/edit/' . $value->id_client); ?>">Edit</a>
                            <div class="bullet"></div>
                            <a data-toggle="modal" data-target="#hapus<?= $value->id_client; ?>" class="text-danger">Hapus</a>
                          </div>
                        </td>
                        <td class="text-center"><?= $value->nama_kategori; ?></td>
                        <td class="text-center"><?= $value->alamat; ?></td>
                        <td class="text-center"><?= $value->email_client; ?></td>
                        <td class="text-center"><?= $value->no_telepon; ?></td>
                        <td class="text-center"><a href="<?= base_url($value->website) ?>"></a><?= $value->website; ?></td>
                        <?php if ($value->publish == "Publish") : ?>
                          <td class="text-center"><span class="badge badge-primary"><?= $value->publish; ?></span></td>
                        <?php else : ?>
                          <td class="text-center"><span class="badge badge-warning"><?= $value->publish; ?></span></td>
                        <?php endif; ?>
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

<!-- hapus Modal -->
<?php
foreach ($client as $key => $value) : ?>
  <div class="modal fade" id="hapus<?= $value->id_client; ?>">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h6 class="modal-title mr-1">Menghapus client <h6 class="text-center badge badge-danger"><?= $value->nama_client; ?></h6>
          </h6>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <form method="POST" action="<?= base_url('client/hapus/' . $value->id_client); ?>">
            <h5>Apakah Anda Yakin?</h5>
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-info" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-danger">Hapus</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>