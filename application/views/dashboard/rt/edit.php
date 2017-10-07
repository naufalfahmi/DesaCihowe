<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('rt'); ?>">RT</a></li>
        <li class="active">Edit</li>
</ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit RT</h3>
    </div>
    <?php
      echo form_open('rt/edit','class="form-horizontal"');
      ?>
    <input type="hidden" name="id" value="<?php echo $rt['id_rt']; ?>">
    <div class="box-body">

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama RT</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="judul" placeholder="Nama RT" value="<?php echo $rt['judul'];?>">
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Nama RW</label>
        <div class="col-sm-4">
          <select name="id_rw" class="select2 form-control">
            <?php
            foreach ($rw as $kp) {
              echo "<option value='$kp->id_rw'";
              echo $rt['id_rw']==$kp->id_rw?'selected':'';
              echo ">$kp->rw</option>";
            }
            ?>
          </select>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Icon</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" name="icon" value="<?php echo $rt['icon'];?>"><br>
          <i class="<?php echo $rt['icon'];?>"></i>
        </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Form RT</label>
        <div class="col-sm-10">
          <textarea id="editor1" class="form-control" name="isi" placeholder="Form RT"><?php echo $rt['isi'];?></textarea>
        </div>
      </div>

    </div>
    <div class="box-footer">
      <button type="submit" class="btn btn-info pull-right" name="submit">Simpan perubahan</button>
    </div>
  </form>
</div>
</div>
