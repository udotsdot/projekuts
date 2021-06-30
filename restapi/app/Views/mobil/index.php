<script>
    var urlList = "<?= site_url('mobil/ajaxList'); ?>";
    var urlSave = "<?= site_url('mobil/ajaxSave'); ?>";
    var urlEdit = "<?= site_url('mobil/ajaxEdit/'); ?>";
    var urlUpdate = "<?= site_url('mobil/ajaxUpdate'); ?>";
    var urlDelete = "<?= site_url('mobil/ajaxDelete/'); ?>";
    var urlStatus = "<?= site_url('mobil/ajaxStatus/'); ?>";
    var urlImg = "<?= base_url('/uploads/img/'); ?>/";
    var urlImgDefault = "<?= base_url('/images/default.png'); ?>";
</script>
<script src="<?= base_url(); ?>/ajax/ajaxMobil.js"></script>

<section class="content-header">
    <h1> <?= $title; ?> </h1>
    <ol class="breadcrumb">
        <li class="active">
            <a href="<?=site_url('dashboard');?>">
                <i class="fa fa-dashboard"></i>
                Dashboard
            </a>
        </li>
        <li class="active">
            <a href="#">
                <i class="fa fa-cubes"></i>
                <?= $title; ?>
            </a>
        </li>
    </ol>
</section>

<section class="content">
    <div class="box box-primary">
        <div class="box-header">
            <div class="row">
                <div class="col-md-12">
                    <a href="javascript:void(0)" class="btn btn-primary btn-sm" data-toggle="tooltip" title="Tambah Data" onclick="show()">
                        <i class="fa fa-plus"></i>
                    </a>
                    <a href="javascript:void(0)" class="btn btn-default btn-sm" data-toggle="tooltip" title="Refresh Data" onclick="reload_table()">
                        <i class="fa fa-refresh"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="box-body">
            <table class="table table-striped table-hover" id="mytable">
                <thead>
                    <tr>
                        <th style="text-align: center; width: 5%;">No</th>
                        <th style="text-align: center;">Gambar Mobil</th>
                        <th style="text-align: center;">Nama Mobil</th>
                        <th style="text-align: center;">Harga Sewa Per Jam</th>
                        <th style="text-align: center;">Konsumsi BBM(km/l)</th>
                        <th style="text-align: center;">Transmisi</th>
                        <th style="text-align: center;">Jumlah Kursi</th>
                        <th style="text-align: center;">Kecepatan(km/h)</th>
                        <th style="text-align: center;">Kategori</th>
                        <th style="text-align: center;">Status</th>
                        <th style="text-align: center; width: 15%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</section>

<?= $this->include('mobil/form'); ?>