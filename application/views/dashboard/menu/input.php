<!-- Breadcrumb -->
<ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="<?php echo base_url('menu'); ?>">Menu</a></li>
        <li class="active">Input</li>
      </ol>
</section>

<!-- Main Content -->
<section class="content">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Tambah Menu</h3>
    </div>
    <?php
      echo form_open('menu/input','class="form-horizontal"');
      ?>
      <div class="box-body">

        <div class="form-group">
          <label class="col-sm-2 control-label">Judul</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="judul" placeholder="judul" >
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Halaman Utama</label>
          <div class="col-sm-4">
            <select class="form-control" name="page" id="page">
              <option selected="" value="home">Home</option>
              <option value="dashboard">Dashboard</option>
            </select>
          </div>
        </div>

        <div class="form-group" id="parent_dash">
          <label class="col-sm-2 control-label">Parent Menu</label>
          <div class="col-sm-4">
            <select class="form-control select2" name="parent_dashboard">
              <option value="0">This is parent</option>
              <?php foreach ($parent_menu as $pmenu)
              {
                echo '<option value="'.$pmenu['id_menu'].'">DASHBOARD - '.$pmenu['judul'].'</option>';
              } ?>
            </select>
          </div>
        </div>

        <div class="form-group"  id="parent_home">
          <label class="col-sm-2 control-label">Parent Menu</label>
          <div class="col-sm-4">
            <select class="form-control select2" name="parent_home">
              <option value="0">This is parent</option>
              <?php foreach ($parent_menu_home as $pmenu)
              {
                echo '<option value="'.$pmenu['id_menu'].'">HOME - '.$pmenu['judul'].'</option>';
              } ?>
            </select>
          </div>
        </div>

        <div class="form-group" >
          <label class="col-sm-2 control-label">Jenis</label>
          <div class="col-sm-4">
            <select class="form-control" name="jenis" id="form_jenis">
              <option selected="" value="link">Link</option>
              <option value="konten">Konten</option>
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
                echo '<option value="'.$ktn->id_konten.'">'.$ktn->judul.' - '.$ktn->deskripsi.' - '.$ktn->tgl_dibuat;
              }
               ?>
            </select>
          </div>
        </div>

        <div class="form-group" id="form_link">
          <label class="col-sm-2 control-label">Link</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="link" placeholder="Link" >
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-2 control-label">Icon</label>
          <div class="col-sm-4">
            <input type="text" maxlength="20" class="form-control" name="icon" placeholder="icon" >
            <a target="blank" href="http://fontawesome.io/icons/">See more icon here...</a>
          </div>
        </div>

      </div>

      <div class="box-footer">
        <button type="submit" class="btn btn-info pull-right" name="submit">Tambah Menu</button>
      </div>
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

        formkonten.style.display='none';
        pageDash.style.display='none';

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
