<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('user_roles'); ?>">User Roles</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah User Roles</h3>
    </div>
    <?php
      echo form_open('user_roles/input','class="form-horizontal"');
      ?>
    <div class="box-body">

      <div class="box-body">
        <div class="form-group">
          <label class="col-sm-2 control-label">Role Name</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="role_name" placeholder="Role Name" >
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Role Desc</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="role_desc" placeholder="Role Desc">
          </div>
        </div>

      </div>
      <div class="box-footer">
        <button type="submit" class="btn btn-info pull-right" name="submit">Tambah User Roles</button>
      </div>
    </form>
  </div>
  </div>
</section>
