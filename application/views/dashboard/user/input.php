<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('user'); ?>">User</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah User</h3>
    </div>
    <?php
      echo form_open_multipart('user/input','class="form-horizontal"');
      ?>
    
    <div class="box-body">
      
      <div class="form-group">
        <label class="col-sm-2 control-label">NIP</label>
        <div class="col-sm-4">
          <input type="number" class="form-control" name="nip" placeholder="Nomor Induk Pegawai">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="nama" placeholder="Nama Pegawai">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Lahir</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" name="tgl_lahir">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Jenis Kelamin</label>
        <div class="col-sm-4">
        <select name="jenis_kelamin" class="form-control">
          <option value="0">Pilih Jenis Kelamin</option>
            <option value="Laki-Laki">Laki Laki</option>
            <option value="Perempuan">Perempuan</option>
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">No Telp</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="no_telp" data-inputmask='"mask": "9999-9999-9999"' data-mask>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="email" placeholder="Email Pegawai">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Alamat</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="alamat" placeholder="Alamat Pegawai">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Username</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="username" placeholder="Username">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Password</label>
        <div class="col-sm-4">
          <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" name="userfile">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Role Name</label>
        <div class="col-sm-4">
          <select name="id_role" class="select2 form-control">
          <option value="0">Pilih Role Name</option>
            <?php 
            // for($i=0;$i<count($user_roles);$i++)
            // {

            //     echo '<option value="'.$user_roles['id_role'].'">'.$user_roles['role_name'].'</option>'; 
            // }
            foreach ($user_roles as $ur) {
                echo "
                <option value='$ur->id_role'>$ur->role_name</option>";
            }
            ?>
          </select>
        </div>
      </div>





      

    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Tambah User</button>
    </div>
  </form>
</div>
</div>
