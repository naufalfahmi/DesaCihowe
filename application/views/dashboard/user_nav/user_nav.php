<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Navigation Roles</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Navigation Roles </h3>
      <small>
        <?php
        echo anchor('navigation_roles/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="user_roles">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Role</th>
              <th>Judul Menu</th>
              <th>Parent</th>
              <th>Tgl Dibuat</th>

              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no=1;
            foreach ($data_nav as $r) {
              $p=$r->parent;
              if($r->parent ==NULL)
              {
                $p="-";
              }
              echo "<tr>
                <td>$no</td>
                <td>$r->role_name</td>
                <td>$r->judul</td>
                <td>$p</td>
                <td>$r->tgl_dibuat</td>

                <td>"
                .anchor('navigation_roles/delete/'.$r->id_role_nav,'<i class="fa fa-remove"></i>',
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
