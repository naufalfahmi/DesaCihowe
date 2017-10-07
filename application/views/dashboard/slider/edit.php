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
      echo form_open_multipart('slider/edit','class="form-horizontal"');
      ?>

    <div class="box-body">

      <input type="text" hidden="" name="id_slider" value="<?php echo $data_slider['id_slider']; ?>">
      <input type="text" hidden="" name="foto" value="<?php echo $data_slider['foto']; ?>">

      <div class="form-group">
        <label class="col-sm-2 control-label">Judul Slider</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="judul" placeholder="Judul Slider" value="<?php echo $data_slider['judul']; ?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Deskripsi Slider</label>
          <div class="col-sm-4">
            <textarea rows="13" class="form-control" name="slider_desc" placeholder="Deskripsi Slider"><?php echo $data_slider['slider_desc'];?></textarea>
          </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Status</label>
          <div class="col-sm-4">
            <select name="status" class="select2 form-control" >
            <?php foreach ($status as $st) {
              ?>
              <option <?php if($st->status=="active") echo 'selected=""'; ?> value="active">Active</option>
              <option <?php if($st->status=="hide") echo 'selected=""'; ?> value="hide">Hide</option>
              <?php }
              ?>
          </select>
          </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-4">
          <input type="file" class="form-control" name="userfile">
          <br/>
          <img height="100px" width=auto src="<?php echo base_url('assets/img/slider/'.$data_slider['foto']); ?>" alt="" />
        </div>
      </div>


      <div class="form-group">
        <label class="col-sm-2 control-label">Isi</label>
        <div class="col-sm-10">
          <textarea type="text" id="editor1" class="form-control" name="isi" placeholder="Isi"><?php echo $data_slider['isi']; ?></textarea>
        </div>
      </div>




    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Edit Slider</button>
    </div>
  </form>
</div>
</div>
