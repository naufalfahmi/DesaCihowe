<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">User Roles</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">User Role</h3>
      <small>
        <?php
        echo anchor('user_roles/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="user_roles">
          <thead>
            <tr>
              <th>No</th>
              <th>Role Name</th>
              <th>Role Desc</th>
              <th>Tanggal Dibuat</th>

              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no=1;
            foreach ($user_roles->result() as $r) {
              echo "<tr>
                <td>$no</td>
                <td>$r->role_name</td>
                <td>$r->role_desc</td>
                <td>$r->tgl_dibuat</td>

                <td>"
                .anchor('user_roles/edit/'.$r->id_role,'<i class="fa fa-pencil"></i>',
                 array('title' => 'Edit','class' => 'btn bg-purple'))."  "
                .anchor('user_roles/delete/'.$r->id_role,'<i class="fa fa-remove"></i>',
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
