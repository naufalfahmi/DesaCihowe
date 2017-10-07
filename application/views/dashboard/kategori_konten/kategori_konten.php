<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Kategori Konten</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Kategori Konten </h3>
      <small>
        <?php
        echo anchor('Kategori_konten/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="user_roles">
          <thead>
            <tr>
              <th>No</th>
              <th>Deskripsi</th>
              <th>Tanggal Dibuat</th>

              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no=1;
            foreach ($kat_konten->result() as $r) {
              echo "<tr>
                <td>$no</td>
                <td>$r->deskripsi</td>
                <td>$r->tgl_dibuat</td>

                <td>"
                .anchor('kategori_konten/edit/'.$r->id_kat_konten,'<i class="fa fa-pencil"></i>',
                 array('title' => 'Edit','class' => 'btn bg-purple'))."  "
                .anchor('kategori_konten/delete/'.$r->id_kat_konten,'<i class="fa fa-remove"></i>',
                 array('title' => 'Hapus', 'class' => 'btn btn-danger', 'onclick'=>"return confirm('Apakah anda yakin ingin menghapus data ini?')"))."</td>

              </tr>";
              $no++;
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>
