<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('portal_app'); ?>">Slider</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah Slider</h3>
    </div>
    <?php
      echo form_open_multipart('slider/input','class="form-horizontal"');
      ?>

    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Judul Slider</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="judul" placeholder="Judul Slider">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Deskripsi Slider</label>
        <div class="col-sm-4">
          <textarea rows="13" class="form-control" name="slider_desc" placeholder="Deskripsi Slider"></textarea>
        </div>
      </div>

     <div class="form-group">
        <label class="col-sm-2 control-label">Status</label>
        <div class="col-sm-4">
          <select class="form-control" name="status">
              <option selected="" value="active">Active</option>
              <option value="hide">Hide</option>
            </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" name="userfile">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Isi</label>
        <div class="col-sm-10">
          <textarea id="editor1" class="form-control" name="isi"></textarea>
        </div>
      </div>


    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Tambah Slider</button>
    </div>
  </form>
</div>
</div>
