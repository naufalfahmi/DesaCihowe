<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">RT</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">RT </h3>
      <small>
        <?php
        echo anchor('rt/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
  <div class="box-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="rt">
        <thead>
          <tr>
            <th>No</th>
            <th>RT</th>
            <th>RW</th>
            <th>Icon</th>
            <th>Tanggal Dibuat</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no=1;
          foreach ($rt->result() as $r) {
            echo '<tr>
              <td>'.$no.'</td>
              <td>'.$r->judul.'</td>
              <td>'.$r->rw.'</td>
              <td><i class="'.$r->icon.'"></i></td>
              <td>'.$r->tgl_dibuat.'</td>

              <td>'.anchor('rt/edit/'.$r->id_rt,'<i class="fa fa-pencil"></i>', array('title' => 'Edit','class' => 'btn bg-purple')).' '.anchor('rt/delete/'.$r->id_rt,'<i class="fa fa-remove"></i>', array('title' => 'Hapus', 'class' => 'btn btn-danger', 'onclick'=>"return confirm('Apakah anda yakin ingin menghapus data ini?')")).'</td>

            </tr>';
            $no++;
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
