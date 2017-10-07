<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('rw'); ?>">RW</a></li>
        <li class="active">Edit</li>
</ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit RW</h3>
    </div>
    <?php
      echo form_open('rw/edit','class="form-horizontal"');
      ?>
    <input type="hidden" name="id" value="<?php echo $rw['id_rw']; ?>">
    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama RW</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="rw" placeholder="Nama RW" value="<?php echo $rw['rw'];?>">
        </div>
      </div>

    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Simpan perubahan</button>
    </div>
  </form>
</div>
</div>
