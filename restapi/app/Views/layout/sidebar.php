<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?=base_url();?>/images/user.png" class="img-circle" alt="Foto Profil" />
            </div>
            <div class="pull-left info">
                <p>TES</p>
                <a href="<?=site_url('#');?>">
                    <i class="fa fa-circle text-success"></i>
                    Online
                </a>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li class="header">NAVIGASI UTAMA</li>

            <li class="<?=($halaman == 'dashboard') ? 'active' : '';?>">
                <a href="<?=site_url('dashboard');?>">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <li class="<?=($halaman == 'kategori') ? 'active' : '';?>">
                <a href="<?=site_url('kategori');?>">
                    <i class="fa fa-cube"></i> <span>Kategori</span>
                </a>
            </li>
            <li class="<?=($halaman == 'mobil') ? 'active' : '';?>">
                <a href="<?=site_url('mobil');?>">
                    <i class="fa fa-car"></i> <span>Mobil</span>
                </a>
            </li>
            <li class="<?=($halaman == 'pelanggan') ? 'active' : '';?>">
                <a href="<?=site_url('pelanggan');?>">
                    <i class="fa fa-user"></i> <span>Pelanggan</span>
                </a>
            </li>
            <li class="<?=($halaman == 'pemesanan') ? 'active' : '';?>">
                <a href="<?=site_url('pemesanan');?>">
                    <i class="fa fa-exchange"></i> <span>Pemesanan</span>
                </a>
            </li>
            <li class="<?=($halaman == 'laporan') ? 'active' : '';?>">
                <a href="<?=site_url('laporan');?>">
                    <i class="fa fa-file"></i> <span>Laporan</span>
                </a>
            </li>
        </ul>
    </section>
</aside>