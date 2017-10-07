<div id="fh5co-course-categories">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
                    <h2>Kependudukan</h2>
                    <p>Collection data RT/RW form Cihowe village Ciseeng.</p>
                </div>
            </div>
            <div class="row">

            <?php
foreach ($rw->result() as $d)
    {
    echo '
    <div class="row"><br>
    <h2>'.$d->rw.'</h2>';
    $rt=$this->model_rt->get_rw($d->id_rw);
    
    foreach ($rt->result() as $r)
    {
    echo ' 
                <div class="col-md-3 col-sm-6 text-center animate-box">
                    <div class="services">
                        <span class="icon">
                            <i class="icon-shop"></i>
                        </span>
                        <div class="desc">
                            <h3>'.anchor('home/detail_kependudukan/'.$r->id_rt.'/'.$r->judul,$r->judul).'</h3>
                            <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
                        </div>
                    </div>
                </div>';
                }
                echo '</div>';
                }
                ?>

            </div>
        </div>
    </div>