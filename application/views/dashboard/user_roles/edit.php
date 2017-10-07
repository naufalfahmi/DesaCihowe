<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('user_roles'); ?>">User Roles</a></li>
        <li class="active">Edit</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit User Roles</h3>
    </div>
    <?php
      echo form_open('user_roles/edit','class="form-horizontal"');
      ?>
    <div class="box-body">
    <input type="hidden" name="id" value="<?php echo $user_roles['id_role']; ?>">

      <div class="box-body">
        <div class="form-group">
          <label class="col-sm-2 control-label">Role Name</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="role_name" placeholder="Role Name" value="<?php echo $user_roles['role_name']; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Role Desc</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="role_desc" placeholder="Role Desc" value="<?php echo $user_roles['role_desc']; ?>">
          </div>
        </div>

      </div>
      <div class="box-footer">
        <button type="submit" class="btn btn-info pull-right" name="submit">Simpan perubahan</button>
      </div>
    </form>
  </div>
  </div>
</section>
