<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">User Access</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">User Access </h3>
      <small>
        <?php
        echo anchor('user/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
  <div class="box-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="user">
        <thead>
          <tr>
            <th>No</th>
            <th>NIP</th>
            <th>Nama</th>
            <th>Username</th>
            <th>Tanggal lahir</th>
            <th>Jenis Kelamin</th>
            <th>No Telp</th>
            <th>Email</th>
            <th>Role Name</th>
            <th>Tanggal Dibuat</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no=1;
          foreach ($user->result() as $r) {
            echo "<tr>
              <td>$no</td>
              <td>$r->nip</td>
              <td>$r->nama</td>
              <td>$r->username</td>
              <td>$r->tgl_lahir</td>
              <td>$r->jenis_kelamin</td>
              <td>$r->no_telp</td>
              <td>$r->email</td>
              <td>$r->role_name</td>
              <td>$r->tgl_dibuat</td>

              <td>".anchor('user/edit/'.$r->id_user,'<i class="fa fa-pencil"></i>', array('title' => 'Edit','class' => 'btn bg-purple'))."  ".anchor('user/delete/'.$r->id_user,'<i class="fa fa-remove"></i>', array('title' => 'Hapus', 'class' => 'btn btn-danger', 'onclick'=>"return confirm('Apakah anda yakin ingin menghapus data ini?')"))."</td>

            </tr>";
            $no++;
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
