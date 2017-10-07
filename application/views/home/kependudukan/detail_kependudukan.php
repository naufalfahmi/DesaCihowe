<!-- START PRIMARY -->
<div id="primary" class="sidebar-right">
    <div class="container group">
        <div class="row">
            <!-- START CONTENT -->
            <div id="content-single" class="span9 content group">
                <div class="post type-post status-publish format-video hentry category-web-design hentry-post group blog-elegant">
                    <!-- post featured & title -->
                        <div class="row">
                            <!-- post meta -->
                            <div class="meta group span3">
                                <div><br>
                                    <h3>
                                        <?php echo $detail_kependudukan['judul']; ?>
                                    </h3>
                                    <p class="date">
                                        <img src="http://localhost/PLNBogor/assets/home_template/celestino/images/icons/date.png" alt="icon-calendar" />
                                        <span>Date:</span><?php echo $detail_kependudukan['tgl_dibuat'];?><hr>
                                    </p>
                                </div>

                            </div>
                            <!-- post title -->
                            <div class="the-content span6">
                                <!-- <div>
                                    <img height="600px" width="auto" src="<?PHP echo base_url().'assets/img/rt/'.$detail_kependudukan['foto'];?>" alt="icon-comment" />
                                </div> -->

                            </div> 
                            <!-- post content -->
                            <div class="the-content single group span9"><br>
                                <h4><?php echo $detail_kependudukan['isi'];?></h4>
                            </div>
                        </div>
                </div>


            </div>
            <!-- END CONTENT -->

            <!-- START SIDEBAR -->
            <div id="sidebar-blog-sidebar" class="span3 sidebar group">
                <div id="text-9" class="widget-first widget widget_text">
                   
                    <!--  <div class="textwidget">
                            <?php echo $kependudukan['isi']; ?>
                            <br><br><br>
                </div>  -->
            </div>
            <!-- END SIDEBAR -->
        </div>
    </div>
</div>
<!-- END PRIMARY -->
