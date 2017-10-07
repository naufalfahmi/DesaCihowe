<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('rw'); ?>">RW</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah RW</h3>
    </div>
    <?php
      echo form_open('rw/input','class="form-horizontal"');
      ?>

    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama RW</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="rw" placeholder="Nama RW" value="RW 00">
        </div>
      </div>

      
    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Tambah RW</button>
    </div>
  </form>
</div>
</div>
