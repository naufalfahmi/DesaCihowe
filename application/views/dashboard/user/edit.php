<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('user'); ?>">User Access</a></li>
        <li class="active">Edit</li>
</ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit User Access</h3>
    </div>
    <?php
      echo form_open_multipart('user/edit','class="form-horizontal"');
      ?>
      <input type="hidden" name="id" value="<?php echo $user['id_user']; ?>">
    <input type="hidden" name="foto" value="<?php echo $user['foto']; ?>">
    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">NIP</label>
        <div class="col-sm-4">
          <input type="number" class="form-control" name="nip" placeholder="Nomor Induk Pegawai" value="<?php echo $user['nip'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="nama" placeholder="Nama Pegawai" value="<?php echo $user['nama'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Lahir</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" name="tgl_lahir" value="<?php echo $user['tgl_lahir'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Jenis Kelamin</label>
        <div class="col-sm-4">
        <select class="form-control" name="jenis_kelamin">
        <option value="laki-laki" <?php if ($user['jenis_kelamin']=="laki-laki") echo 'selected=""'; ?> >Laki-laki</option>
        <option value="perempuan" <?php if ($user['jenis_kelamin']=="perempuan") echo 'selected=""'; ?> >Perempuan</option>
        </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">No Telp</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="no_telp" placeholder="Nomor Telp Pegawai" value="<?php echo $user['no_telp'];?>" data-inputmask='"mask": "9999-9999-9999"' data-mask>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="email" placeholder="Email Pegawai" value="<?php echo $user['email'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Alamat</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="alamat" placeholder="Alamat Pegawai" value="<?php echo $user['alamat'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Username</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="username" placeholder="Username" value="<?php echo $user['username'];?>">
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
          <input type="file" class="form-control" name="userfile"><br>
          <img style="height: 150px; width: auto;" src="<?PHP echo base_url().'assets/img/user/'.$user['foto'];?>"/>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Role Name</label>
        <div class="col-sm-4">
          <select name="id_role" class="select2 form-control">
            <?php
            foreach ($user_roles as $ur) {
              echo "<option value='$ur->id_role'";
              echo $user['id_role']==$ur->id_role?'selected':'';
              echo ">$ur->role_name</option>";
            }
            ?>
          </select>
        </div>
      </div>







    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Simpan perubahan</button>
    </div>
  </form>
</div>
</div>
