<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('navigation_roles'); ?>">Navigation Roles</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah Navigation Roles</h3>
    </div>
    <?php
      echo form_open('navigation_roles/input','class="form-horizontal"');
      ?>
      <div class="box-body">
        <div class="form-group">
          <label class="col-sm-2 control-label">Role Name</label>
          <div class="col-sm-4">
            <select class="form-control select2" id="id_role" name="id_role">
              <option value="0">Pilih</option>
              <?php
              foreach($data_roles as $d)
              {
                echo '<option value="'.$d->id_role.'">'.$d->role_name.'</option>';
              } ?>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Menu</label>
          <div class="col-sm-4">
            <select class="form-control select2" id="id_menu" name="id_menu">
            </select>
          </div>
        </div>

      </div>
      <div class="box-footer">
        <button type="submit" class="btn btn-info pull-right" name="submit">Tambah Navigation Role</button>
      </div>
    </form>
  </div>
  </div>
</section>
<script type="text/javascript">

$(document).ready(function()
{
  var Role= document.getElementById('id_role');
  var Menu = document.getElementById('id_menu');

  Role.onchange = function()
  {
    var id_role=Role.selectedIndex;
    $.ajax
    (
      {
        type:"POST",
        url: "<?php echo base_url('navigation_roles/getDataMenu');?>",
        data: "id_role="+id_role,
        success:function(data)
        {
          Menu.innerHTML=data;
        }
      }
    );
  }
});
</script>
