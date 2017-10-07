<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('konten'); ?>">Konten</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah Konten</h3>
    </div>
    <?php
      echo form_open_multipart('konten/input','class="form-horizontal"');
      ?>
    <div class="box-body">
      <div class="form-group">
        <label class="col-sm-2 control-label">Judul</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="judul" placeholder="Judul Konten" >
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" name="userfile">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Deskripsi Singkat</label>
        <div class="col-sm-4">
          <textarea name="isi_deskripsi" class="form-control" rows="5"></textarea>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Kategori Konten</label>
        <div class="col-sm-4">
          <select name="id_kat_konten" class="select2 form-control">
          <option value="0">Pilih Kategori Konten</option>
            <?php
            foreach ($kat_konten as $ur) {
                echo "
                <option value='$ur->id_kat_konten'>$ur->deskripsi</option>";
            }
            ?>
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Isi</label>
        <div class="col-sm-10">
          <textarea class="textarea" id="editor1" name="isi"></textarea>
        </div>
      </div>

    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Tambah Konten</button>
    </div>
  </form>
</div>
</div>
