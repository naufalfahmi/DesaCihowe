<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('rt'); ?>">RT</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah RT</h3>
    </div>
    <?php
      echo form_open('rt/input','class="form-horizontal"');
      ?>

    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama RT</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="judul" placeholder="Nama RT" value="RT 00">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">RW</label>
        <div class="col-sm-4">
         <select name="id_rw" class="select2 form-control">
          <option value="0">Pilih RW</option>
            <?php
            foreach ($rw as $kp)
            {
                echo "
                <option value='$kp->id_rw'>$kp->rw</option>";
            }
            ?>
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Icon</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="icon" placeholder="exs: fa fa-folder" value="icon-shop">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Form RT</label>
        <div class="col-sm-10">
          <textarea class="textarea" id="editor1" name="isi" placeholder="Form RT"></textarea>
        </div>
      </div>



    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Tambah RT</button>
    </div>
  </form>
</div>
</div>
