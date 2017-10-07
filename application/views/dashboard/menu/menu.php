 <!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Menu</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Menu </h3>
      <small>
        <?php
        echo anchor('menu/input','<i class="glyphicon glyphicon-plus"></i>','class="btn bg-green"');
        ?>
      </small>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="user_roles">
          <thead>
            <tr>
              <th>No</th>
              <th>Judul</th>
              <th>Halaman Utama</th>
              <th>Parent Menu</th>
              <th>Jenis</th>
              <th>Link/Konten</th>
              <th>Icon</th>
              <th>Tgl Dibuat</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no=1;
            foreach ($menu_data as $r) {
              $d="-";
              foreach($this->model_menu->get_menu_parent_data($r->parent) as $data)
              {
                $d=$data->judul;
              }
              $l="-";
              if($r->jenis=="link")
              {
                if($r->link!="#")
                {
                  $l='<a href="'.base_url($r->link).'">'.$r->link.'</a>';    
                }
              }
              else {
                $l='<a href="'.base_url('content/'.$r->id_konten).'">content/'.$r->id_konten.'</a>';
              }
              echo '<tr>
                <td>'.$no.'</td>
                <td>'.$r->judul.'</td>
                <td>'.$r->page.'</td>
                <td>'.$d.'</td>
                <td>'.$r->jenis.'</td>
                <td>'.$l.'</td>
                <td><i class="fa fa-'.$r->icon.'"></i></td>
                <td>'.$r->tgl_dibuat.'</td>
                <td>
                 '.anchor('menu/edit/'.$r->id_menu,'<i class="fa fa-pencil"></i>',
                 array('title' => 'Edit','class' => 'btn bg-purple', 'onclick'=>"return confirm('Jika parent menu di ubah maka menu di bawahnya akan terubah, Apakah anda yakin ingin mengubah data ini ?')")).'  '
                .anchor('menu/delete/'.$r->id_menu,'<i class="fa fa-remove"></i>',
                 array('title' => 'Hapus', 'class' => 'btn btn-danger', 'onclick'=>"return confirm('Jika parent menu di hapus maka menu di bawahnya akan terhapus, Apakah anda yakin ingin menghapus data ini ?')")).'</td>
              </tr>';
              $no++;
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>
