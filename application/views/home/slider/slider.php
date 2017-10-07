<aside id="fh5co-hero">
        <div class="flexslider">
            <ul class="slides">
            <?php 
            $i=4;
            foreach ($slider as $d)
            {
                if ($d->status == "active")
                {
                
            $src_img=base_url('assets/img/slider/'.$d->foto);
            echo '
            <li style="background-image: url('.$src_img.');">
                <div class="overlay-gradient"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center slider-text">
                            <div class="slider-text-inner">
                                <h1>'.anchor('home/detail_slider/'.$d->id_slider.'/'.$d->judul,$d->judul).'</h1>
                                    <h2>'.$d->slider_desc.'</h2>
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </li>';
            }
            }
            ?>
            </ul>
        </div>
    </aside>




