    <div id="fh5co-blog">
        <div class="container">
        <div class="row animate-box">
                <div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
                    <h2>Berita</h2>
                    <p>Good News in Cihowe village Kecamatan Ciseeng.</p>
                </div>
            </div>
            
<!--             <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <h2>Blog &amp; Events</h2>
                    <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
                </div>
            </div>

            <div class="row row-padded-mb">
            
                <div class="col-md-4 animate-box"> 
                    <div class="fh5co-event">
                        <div class="date text-center"><span>15<br>Mar.</span></div>
                        <h3><a href="#">USA, International Triathlon Event</a></h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <p><a href="#">Read More</a></p>
                    </div>
                </div>
                <div class="col-md-4 animate-box">
                    <div class="fh5co-event">
                        <div class="date text-center"><span>15<br>Mar.</span></div>
                        <h3><a href="#">USA, International Triathlon Event</a></h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <p><a href="#">Read More</a></p>
                    </div>
                </div>
                <div class="col-md-4 animate-box">
                    <div class="fh5co-event">
                        <div class="date text-center"><span>15<br>Mar.</span></div>
                        <h3><a href="#">New Device Develope by Microsoft</a></h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <p><a href="#">Read More</a></p>
                    </div>
                </div>
            </div>
 -->
            <div class="row">
            <?php foreach ($konten->result() as $k)
            {
                echo '
                <div class="col-lg-4 col-md-4">
                    <div class="fh5co-blog animate-box">
                        <center><a href="#" class="blog-img-holder"><img height=200px width=auto src="'.base_url('assets/img/konten/'.$k->foto).'"></a><center>
                        <div class="blog-text">
                            <h3>'.anchor('home/detail_konten/'.$k->id_konten.'/'.$k->judul,$k->judul).'</h3>
                            <center><span class="posted_on">'.$k->tgl_dibuat.'</span></center>
                            <p>'.$k->isi_deskripsi.'</p>
                        </div> 
                    </div>
                </div>';
            }
            ?>
            </div>
        </div>
    </div>