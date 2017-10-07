<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('konten'); ?>">Konten</a></li>
        <li class="active">Edit</li>
</ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit Konten</h3>
    </div>
    <?php
      echo form_open_multipart('konten/edit','class="form-horizontal"');
      ?>
    <input type="hidden" name="id" value="<?php echo $konten['id_konten']; ?>">
    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Judul</label>
        <div class="col-sm-4">
          <input type="text"  class="form-control" name="judul" placeholder="Judul" value="<?php echo $konten['judul'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" name="userfile"><br>
          <img style="height: 150px; width: auto;" src="<?PHP echo base_url().'assets/img/konten/'.$konten['foto'];?>"/>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Deskripsi Singkat</label>
        <div class="col-sm-4">
          <textarea name="isi_deskripsi" class="form-control" rows="5"><?php echo $konten['isi_deskripsi'];?></textarea>
        </div>
      </div>

       <div class="form-group">
        <label class="col-sm-2 control-label">Kategori Konten</label>
        <div class="col-sm-4">
          <select name="id_kat_konten" class="select2 form-control">
            <?php
            foreach ($kat_konten as $ur) {
              echo "<option value='$ur->id_kat_konten'";
              echo $konten['id_kat_konten']==$ur->id_kat_konten?'selected':'';
              echo ">$ur->deskripsi</option>";
            }
            ?>
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Isi</label>
        <div class="col-sm-10">
          <textarea id="editor1" name="isi"><?php echo $konten['isi'];?></textarea>
        </div>
      </div>


    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Simpan Perubahan</button>
    </div>
  </form>
</div>
</div>
