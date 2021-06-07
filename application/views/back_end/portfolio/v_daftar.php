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
                      <th class="text-center">Judul</th>
                      <th class="text-center">Kategori</th>
                      <th class="text-center">Client</th>
                      <th class="text-center">Tanggal Project</th>
                      <th class="text-center">Website</th>
                      <th class="text-center">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $no = 1;
                    foreach ($portfolio as $key => $value) : ?>
                      <tr>
                        <td class="text-center"><?= $no++; ?></td>
                        <td class="text-center"><?= $value->judul_portfolio; ?>
                          <div class="table-links">
                            <div class="bullet"></div>
                            <a href="<?= base_url('portfolio/edit/' . $value->id_portfolio); ?>">Edit</a>
                            <div class="bullet"></div>
                            <a data-toggle="modal" data-target="#hapus<?= $value->id_portfolio; ?>" class="text-danger">Hapus</a>
                          </div>
                        </td>
                        <td class="text-center"><?= $value->judul_layanan; ?></td>
                        <td class="text-center"><?= $value->nama_client; ?></td>
                        <?php
                        // MENGGUBAH FORMAT TANGGAL
                        $source = $value->date_project;
                        $date = new DateTime($source);
                        $date_project = $date->format('d-M-Y');
                        ?>
                        <td class="text-center"><?= $date_project; ?></td>
                        <td class="text-center"><?= $value->website_portfolio; ?></td>
                        <?php if ($value->status_portfolio == "Publish") : ?>
                          <td class="text-center"><span class="badge badge-primary"><?= $value->status_portfolio; ?></span></td>
                        <?php elseif ($value->status_portfolio == "Pending") : ?>
                          <td class="text-center"><span class="badge badge-waring"><?= $value->status_portfolio; ?></span></td>
                        <?php else : ?>
                          <td class="text-center"><span class="badge badge-danger"><?= $value->status_portfolio; ?></span></td>
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
foreach ($portfolio as $key => $value) : ?>
  <div class="modal fade" id="hapus<?= $value->id_portfolio; ?>">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h6 class="modal-title mr-1">Menghapus portfolio <h6 class="text-center badge badge-danger"><?= $value->judul_portfolio; ?></h6>
          </h6>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <form method="POST" action="<?= base_url('portfolio/hapus/' . $value->id_portfolio); ?>">
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