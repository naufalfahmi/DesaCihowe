<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('menu'); ?>">Menu</a></li>
        <li class="active">Edit</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Edit Menu</h3>
    </div>
    <?php
      echo form_open('menu/edit','class="form-horizontal"');
      foreach ($menu_data as $mdata) {
      ?>
      <div class="box-body">

        <div class="form-group">
          <label class="col-sm-2 control-label">Judul</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="judul" placeholder="judul" value="<?php echo $mdata->judul; ?>"  >
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Halaman Utama</label>
          <div class="col-sm-4">
            <select class="form-control" name="page" id="page">
              <option <?php if($mdata->page=="home") echo 'selected=""'; ?> value="home">Home</option>
              <option <?php if($mdata->page=="dashboard") echo 'selected=""'; ?> value="dashboard">Dashboard</option>
            </select>
          </div>
        </div>

        <div class="form-group" id="parent_dash">
          <label class="col-sm-2 control-label">Parent Menu</label>
          <div class="col-sm-4">
            <select class="form-control select2" name="parent_dashboard">
              <option value="0">This is parent</option>
              <?php if($mdata->parent !=0 || ($mdata->parent ==0 && $much_child <=0) ) {?>
              <?php foreach ($parent_menu as $pmenu)
              {
                $selected="";
                if($mdata->parent==$pmenu['id_menu'])
                {
                  $selected='selected=""';
                }
                echo '<option '.$selected.'value="'.$pmenu['id_menu'].'">DASHBOARD - '.$pmenu['judul'].'</option>';
              }
            } ?>
            </select>
          </div>
        </div>

        <div class="form-group"  id="parent_home">
          <label class="col-sm-2 control-label">Parent Menu</label>
          <div class="col-sm-4">
            <select class="form-control select2" name="parent_home">
              <option value="0">This is parent</option>
              <?php if($mdata->parent !=0 || ($mdata->parent ==0 && $much_child <=0) ) {?>
              <?php foreach ($parent_menu_home as $pmenu)
              {
                $selected="";
                if($mdata->parent==$pmenu['id_menu'])
                {
                  $selected='selected=""';
                }
                echo '<option '.$selected.'value="'.$pmenu['id_menu'].'">HOME- '.$pmenu['judul'].'</option>';
              }} ?>
            </select>
          </div>
        </div>

        <div class="form-group" >
          <label class="col-sm-2 control-label">Jenis</label>
          <div class="col-sm-4">
            <select class="form-control" name="jenis" id="form_jenis">
              <option <?php if($mdata->jenis=="link") echo 'selected=""'; ?> value="link">Link</option>
              <option <?php if($mdata->jenis=="konten") echo 'selected=""'; ?> value="konten">Konten</option>
            </select>
          </div>
        </div>

        <div class="form-group" id="form_konten">
          <label class="col-sm-2 control-label">Konten</label>
          <div class="col-sm-4">
            <select class="form-control select2" name="id_konten" id="id_konten">
              <?php
              foreach($data_konten as $ktn)
              {
                $sel='';
                if($mdata->id_konten==$ktn->id_konten)
                {
                  $sel='selected=""';
                }
                echo '<option '.$sel.'value="'.$ktn->id_konten.'">'.$ktn->judul.' - '.$ktn->deskripsi.' - '.$ktn->tgl_dibuat;
              }
               ?>
            </select>
          </div>
        </div>

        <div class="form-group" id="form_link">
          <label class="col-sm-2 control-label">Link</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="link" placeholder="Link" value="<?php echo $mdata->link; ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Icon</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="icon" placeholder="icon" value="<?php echo $mdata->icon; ?>">
            <a target="blank" href="http://fontawesome.io/icons/">See more icon here...</a>
          </div>
        </div>

      </div>

      <div class="box-footer">
        <input type="text" hidden="" name="id" value="<?php echo $mdata->id_menu; ?>">
        <button type="submit" class="btn btn-info pull-right" name="submit">Edit Menu</button>
      </div>
      <?php } ?>
    </form>
  </div>
  </div>
</section>

<script type="text/javascript">
    window.onload = function()
    {
        var pilihPage= document.getElementById('page');
        var pageDash = document.getElementById('parent_dash');
        var pageHome = document.getElementById('parent_home');

        var pilihJenis = document.getElementById('form_jenis');
        var formlink = document.getElementById('form_link');
        var formkonten = document.getElementById('form_konten');

        var getPage="<?php echo $mdata->page;?>";

        if(getPage=="home")
        {
          pageDash.style.display='none';
        }
        else {
          pageHome.style.display="none";
        }

        var getJenis="<?php echo $mdata->jenis;?>";

        if(getJenis=="link")
        {

          formkonten.style.display='none';
        }
        else {
          formlink.style.display='none';
        }

        pilihJenis.onchange = function()
        {
          if (pilihJenis.selectedIndex==0)
          {
            formlink.style.display='block';
            formkonten.style.display='none';
          }
          else
          {
            formlink.style.display='none';
            formkonten.style.display='block';
          }
        }

        pilihPage.onchange = function()
        {
          if (pilihPage.selectedIndex==0)
          {
            pageHome.style.display='block';
            pageDash.style.display='none';
          }
          else
          {
            pageHome.style.display='none';
            pageDash.style.display='block';
          }
        }

    }
  </script>
