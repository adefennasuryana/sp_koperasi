<?php if(!empty(in_array($_SESSION['supeno_session']['akses'],[1,5]))){ } else{
    redirect($baseURL);
}?>
<?php 
    $bulan_tes =array(
        '01'=>"Januari",
        '02'=>"Februari",
        '03'=>"Maret",
        '04'=>"April",
        '05'=>"Mei",
        '06'=>"Juni",
        '07'=>"Juli",
        '08'=>"Agustus",
        '09'=>"September",
        '10'=>"Oktober",
        '11'=>"November",
        '12'=>"Desember"
    );
?>
<!-- Page content -->
<div class="row">
    <div class="col-sm-12">
        <?php if(!empty(flashdata())){ echo flashdata(); }?>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Cari Laporan Per Bulan</h3>							
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form method="post" action="index.php?page=laporan&cari=ok">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <select class="form-control select2" name="id_pelanggan" style="width: 100%;">
                                    <option selected="selected" value="0">Semua Pelanggan</option>
                                    <?php
                                    $no = 1;
                                    $sql = "SELECT * FROM pelanggan ORDER BY nama_pelanggan ASC";
                                    $row = $connectdb->prepare($sql);
                                    $row->execute();
                                    $hasil = $row->fetchAll(PDO::FETCH_OBJ);
                                    foreach ($hasil as $r) {
                                        ?>
                                        <option value="<?= $r->id; ?>" <?= getPost('id_pelanggan', true) == $r->id ? 'selected' : '';?>><?= $r->nama_pelanggan; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <select class="form-control" name="status_bayar">
                                    <option value="">Semua Status</option>
                                    <option value="Kurang Bayar" <?= getPost('status_bayar') == 'Kurang Bayar' ? 'selected' : '';?>>Kurang Bayar</option>
                                    <option value="Lunas" <?= getPost('status_bayar') == 'Lunas' ? 'selected' : '';?>>Lunas</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <select name="bln" class="form-control mb-2">
                                <option selected="selected">Bulan</option>
                                <?php
                                    $bulan=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
                                    $jlh_bln=count($bulan);
                                    $bln1 = array('01','02','03','04','05','06','07','08','09','10','11','12');
                                    $no=1;
                                    for($c=0; $c<$jlh_bln; $c+=1){

                                        if(!empty(getGet('cari', true))){
                                            if(getPost('bln', true) == $bln1[$c]){
                                                echo"<option value='$bln1[$c]' selected> $bulan[$c] </option>";
                                            }else{
                                                echo"<option value='$bln1[$c]'> $bulan[$c] </option>";
                                            }
                                        }else{
                                            if(date('m') == $bln1[$c]){
                                                echo"<option value='$bln1[$c]' selected> $bulan[$c] </option>";
                                            }else{
                                                echo"<option value='$bln1[$c]'> $bulan[$c] </option>";
                                            }

                                        }
                                    $no++;}
                                ?>
                            </select>
                        </div>
                        <div class="col-sm-3">
                            <?php
                                $now=date('Y');
                                echo "<select name='thn' class='form-control mb-2'>";
                                echo '
                                <option>Tahun</option>';
                                for ($a=2021;$a<=$now;$a++)
                                {
                                    if(!empty(getGet('cari', true))){
                                        if(getPost('thn', true) == $a){
                                            echo "<option value='$a' selected>$a</option>";
                                        }else{
                                            echo "<option value='$a'>$a</option>";
                                        }
                                    }else{
                                        if(date('Y') == $a){
                                            echo "<option value='$a' selected>$a</option>";
                                        }else{
                                            echo "<option value='$a'>$a</option>";
                                        }
                                    }
                                }
                                echo "</select>";
                            ?>
                        </div>
                        <div class="col-sm-3">
                            <input type="hidden" name="periode" value="ya">
                            <div class="btn-group mr-2 mb-2 btn-block" role="group" aria-label="First group">
                                <button class="btn btn-primary btn-flat">
                                    <i class="fas fa-search"></i> Cari
                                </button>
                                <a href="index.php?page=laporan" class="btn btn-success btn-flat">
                                    <i class="fas fa-sync"></i> Refresh</a>
                                    
                                <?php if(!empty(getGet('cari', true))){?>
                                    <a href="<?= $baseURL;?>helper/cetak/excel.php?excel=yes&cari=yes&bln=<?=getPost('bln', true);?>&thn=<?=getPost('thn', true);?>&id_pelanggan=<?= getPost('id_pelanggan', true);?>&status_bayar=<?= getPost('status_bayar', true);?>" class="btn btn-info"><i class="fas fa-file-excel"></i>
                                    Excel</a>
                                    <a href="<?= $baseURL;?>helper/cetak/excel.php?cari=yes&bln=<?=getPost('bln', true);?>&thn=<?=getPost('thn', true);?>&id_pelanggan=<?= getPost('id_pelanggan', true);?>&status_bayar=<?= getPost('status_bayar', true);?>" target="_blank" class="btn btn-primary">
                                    <i class="fas fa-print"></i>
                                    Print</a>
                                    <a href="<?= $baseURL;?>helper/cetak/excel_pelanggan.php?excel=yes&cari=yes&bln=<?=getPost('bln', true);?>&thn=<?=getPost('thn', true);?>&id_pelanggan=<?= getPost('id_pelanggan', true);?>&status_bayar=<?= getPost('status_bayar', true);?>" class="btn btn-info"><i class="fas fa-file-excel"></i>
                                    Rekap Transaksi Pelanggan</a>
                                <?php }else{?>
                                    <a href="<?= $baseURL;?>helper/cetak/excel.php?excel=yes" class="btn btn-info btn-flat"><i class="fas fa-file-excel"></i>
                                    Excel</a>
                                    <a href="<?= $baseURL;?>helper/cetak/excel.php" class="btn btn-primary btn-flat" target="_blank"><i class="fas fa-print"></i>
                                    Print</a>
                                    <a href="<?= $baseURL;?>helper/cetak/excel_pelanggan.php?excel=yes" class="btn btn-info btn-flat"><i class="fas fa-file-excel"></i>
                                    Rekap Transaksi Pelanggan</a>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Cari Laporan Per Hari</h3>							
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form method="get" action="index.php">
                    <?php
                        if(!empty(getGet('hari', true))){
                            $tgla = getGet('tgla', true);
                            $tglb = getGet('tglb', true);
                        }else{
                            $tgla = date('Y-m-01');
                            $tglb = date('Y-m-d');
                        }
                    ?>
                    <input type="hidden" name="hari" value="yes">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Pelanggan</label>
                                <select class="form-control select2" name="id_pelanggan" style="width: 100%;">
                                    <option selected="selected" value="0">Semua Pelanggan</option>
                                    <?php
                                    $no = 1;
                                    $sql = "SELECT * FROM pelanggan ORDER BY nama_pelanggan ASC";
                                    $row = $connectdb->prepare($sql);
                                    $row->execute();
                                    $hasil = $row->fetchAll(PDO::FETCH_OBJ);
                                    foreach ($hasil as $r) {
                                        ?>
                                        <option value="<?= $r->id; ?>" <?= getGet('id_pelanggan', true) == $r->id ? 'selected' : '';?>><?= $r->nama_pelanggan; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Status</label>
                                <select class="form-control" name="status_bayar">
                                    <option value="">Semua Status</option>
                                    <option value="Kurang Bayar" <?= getGet('status_bayar') == 'Kurang Bayar' ? 'selected' : '';?>>Kurang Bayar</option>
                                    <option value="Lunas" <?= getGet('status_bayar') == 'Lunas' ? 'selected' : '';?>>Lunas</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Tanggal Awal</label>
                                <input type="date" value="<?= $tgla;?>" class="form-control w-100" name="tgla">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Tanggal Akhir</label>
                                <input type="date" value="<?= $tglb;?>" class="form-control w-100" name="tglb">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <input type="hidden" name="periode" value="ya">
                            <div class="form-group">
                                <label for="">Aksi</label>
                                <div class="btn-group btn-block" role="group" aria-label="First group">
                                    <button class="btn btn-primary btn-flat">
                                        <i class="fas fa-search"></i> Cari
                                    </button>
                                    <a href="index.php?page=laporan" class="btn btn-success btn-flat">
                                        <i class="fas fa-sync"></i> Refresh</a>
                                        
                                    <?php if(!empty(getGet('hari', true))){?>
                                        <a href="<?= $baseURL;?>helper/cetak/excel.php?excel=yes&hari=cek&tgla=<?= getGet('tgla', true);?>&tglb=<?= getGet('tglb', true);?>&id_pelanggan=<?= getGet('id_pelanggan', true);?>&status_bayar=<?= getGet('status_bayar', true);?>" target="_blank" class="btn btn-info btn-flat">
                                        <i class="fas fa-file-excel"></i>
                                        Excel</a>
                                        <a href="<?= $baseURL;?>helper/cetak/excel.php?hari=cek&tgla=<?= getGet('tgla', true);?>&tglb=<?= getGet('tglb', true);?>&id_pelanggan=<?= getGet('id_pelanggan', true);?>&status_bayar=<?= getGet('status_bayar', true);?>" target="_blank" class="btn btn-primary btn-flat">
                                        <i class="fas fa-print"></i>
                                        Print</a>
                                        <a href="<?= $baseURL;?>helper/cetak/excel_pelanggan.php?excel=yes&hari=cek&tgla=<?= getGet('tgla', true);?>&tglb=<?= getGet('tglb', true);?>&id_pelanggan=<?= getGet('id_pelanggan', true);?>&status_bayar=<?= getGet('status_bayar', true);?>" target="_blank" class="btn btn-info btn-flat">
                                        <i class="fas fa-file-excel"></i>
                                        Rekap Transaksi Pelanggan</a>
                                    <?php }else{?>
                                        <a href="<?= $baseURL;?>helper/cetak/excel.php?excel=yes" class="btn btn-info btn-flat" target="_blank"><i class="fas fa-file-excel"></i>
                                        Excel</a>
                                        <a href="<?= $baseURL;?>helper/cetak/excel.php" class="btn btn-primary btn-flat" target="_blank"><i class="fas fa-print"></i>
                                        Print</a>
                                        <a href="<?= $baseURL;?>helper/cetak/excel_pelanggan.php?excel=yes" class="btn btn-info btn-flat" target="_blank"><i class="fas fa-file-excel"></i>
                                        Rekap Transaksi Pelanggan</a>
                                    <?php }?>
                                </div>	
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        <!-- /.card-body -->
        </div>

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">
                    <?php if(!empty(getGet('cari', true))){ ?>
                        Data Laporan Nota Penjualan <?= $bulan_tes[getPost('bln', true)];?> <?= getPost('thn', true);?>
                    <?php }elseif(!empty(getGet('hari', true))){?>
                        Data Laporan Nota Penjualan 
                    <?php }else{?>
                        Data Laporan Nota Penjualan <?= $bulan_tes[date('m')];?> <?= date('Y');?>
                    <?php }?>
                    <?php if($_SESSION['supeno_session']['akses']== 5) {
                        echo '( Kasir '.$_SESSION['supeno_session']['name'].' )';
                    }?>
                </h3>							
            </div>
            <?php 
            $sqlWhere = '';
            if ($_SESSION['supeno_session']['akses'] != 1) {
                $sqlWhere = ' AND penjualan.id_member='.$_SESSION['supeno_session']['id'];
            }

            if(!empty(getGet('cari', true))){
                $id_pelanggan = getPost('id_pelanggan') ?? '';
                if($id_pelanggan) {
                    $sqlWhere .= ' AND penjualan.id_pelanggan = "'.$id_pelanggan.'" ';
                }
                $status_bayar = getPost('status_bayar') ?? '';
                if($status_bayar) {
                    $sqlWhere .= ' AND penjualan.status_bayar = "'.$status_bayar.'" ';
                }
                $periode = getPost('thn', true).'-'.getPost('bln', true);
                $sql = "SELECT 
                        SUM(jumlah) as qty, 
                        SUM(beli) as beli, 
                        SUM(total) as jual,
                        SUM(CASE WHEN bayar < total THEN total - bayar ELSE 0 END) AS sisa_bayar,
                        SUM(CASE WHEN penjualan.status_bayar = 'Lunas' THEN penjualan.total ELSE penjualan.bayar END) AS total_bayar,
                        SUM(CASE WHEN bayar > total THEN bayar - total ELSE 0 END) AS total_kembalian
                    FROM penjualan 
                    WHERE penjualan.periode = ? $sqlWhere ORDER BY id DESC";
                $row = $connectdb->prepare($sql);
                $row->execute(array($periode));
                $hasil = $row->fetch(PDO::FETCH_OBJ);
            }elseif(!empty(getGet(name: 'tgla'))){
                $id_pelanggan = getGet('id_pelanggan') ?? '';
                if($id_pelanggan) {
                    $sqlWhere .= ' AND penjualan.id_pelanggan = "'.$id_pelanggan.'" ';
                }
                $status_bayar = getGet('status_bayar') ?? '';
                if($status_bayar) {
                    $sqlWhere .= ' AND penjualan.status_bayar = "'.$status_bayar.'" ';
                }
                $tgla = getGet('tgla', true);
                $tglb = getGet('tglb', true);
                $sql = "SELECT 
                        SUM(jumlah) as qty, 
                        SUM(beli) as beli, 
                        SUM(total) as jual,
                        SUM(CASE WHEN bayar < total THEN total - bayar ELSE 0 END) AS sisa_bayar,
                        SUM(CASE WHEN penjualan.status_bayar = 'Lunas' THEN penjualan.total ELSE penjualan.bayar END) AS total_bayar,
                        SUM(CASE WHEN bayar > total THEN bayar - total ELSE 0 END) AS total_kembalian
                    FROM penjualan
                    WHERE penjualan.tanggal_input BETWEEN '$tgla' and '$tglb' $sqlWhere ORDER BY id DESC";
                $row = $connectdb->prepare($sql);
                $row->execute();
                $hasil = $row->fetch(PDO::FETCH_OBJ);
            }else{
                $sql = "SELECT 
                        SUM(jumlah) as qty, 
                        SUM(beli) as beli, 
                        SUM(total) as jual,
                        SUM(CASE WHEN bayar < total THEN total - bayar ELSE 0 END) AS sisa_bayar,
                        SUM(CASE WHEN penjualan.status_bayar = 'Lunas' THEN penjualan.total ELSE penjualan.bayar END) AS total_bayar,
                        SUM(CASE WHEN bayar > total THEN bayar - total ELSE 0 END) AS total_kembalian
                    FROM penjualan
                    WHERE penjualan.periode = ? $sqlWhere ORDER BY id DESC";
                $row = $connectdb->prepare($sql);
                $row->execute(array(date('Y-m')));
                $hasil = $row->fetch(PDO::FETCH_OBJ);
            }

            $qty = $hasil->qty;
            $beli = $hasil->beli;
            $jual = $hasil->jual;
            $sisaBayar = $hasil->sisa_bayar;
            $totalBayar = $hasil->total_bayar;
            ?>
            <div class="card-body">
                <div class="table-responsive-1">
                    <table class="table table-striped table-sm w-100" id="table-artikel-query">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>No Trx</th>
                                <th>Kasir</th>
                                <th>Nama Pelanggan</th>
                                <th>Jumlah</th>
                                <?php if(!empty(in_array($_SESSION['supeno_session']['akses'],[1]))){?>
                                <th>Total Modal</th>
                                <?php }?>
                                <th>Total Jual</th>
                                <th>Dibayar</th>
                                <th>Kembalian</th>
                                <th>Kurang</th>
                                <th>Status</th>
                                <th>Created At</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-sm-3 ml-auto">
                        <div class="row">
                            <div class="col-sm-6">Total Terjual</div>
                            <div class="col-sm-6"><b><?= $qty;?></b></div>
                        </div>
                        <?php if(!empty(in_array($_SESSION['supeno_session']['akses'],[1]))){?>
                        <div class="row">
                            <div class="col-sm-6">Total Modal</div>
                            <div class="col-sm-6"><b><?= getRupiah($beli ?? 0,'Rp');?></b></div>
                        </div>
                        <?php }?>
                        <div class="row">
                            <div class="col-sm-6">Total Jual</div>
                            <div class="col-sm-6"><b><?= getRupiah($jual ?? 0,'Rp');?></b></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">Total Terbayar</div>
                            <div class="col-sm-6"><b><?= getRupiah($totalBayar ?? 0,'Rp');?></b></div>
                        </div>
                        <?php if(!empty(in_array($_SESSION['supeno_session']['akses'],[1]))){?>
                        <div class="row">
                            <div class="col-sm-6">Keuntungan</div>
                            <div class="col-sm-6"><b><?= getRupiah(($jual-$beli) ?? 0,'Rp');?></b></div>
                        </div>
                        <?php }?>
                        <div class="row">
                            <div class="col-sm-6">Kurang Bayar</div>
                            <div class="col-sm-6"><b><?= getRupiah($sisaBayar ?? 0,'Rp');?></b></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="modelIdDetail" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detail Transaksi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div id="detail_html"></div>
        </div>
    </div>
</div>
<script>
    var tabel = null;
    $(document).ready(function() {
        tabel = $('#table-artikel-query').DataTable({
            processing: true,
            responsive: true,
            serverSide: true,
            ordering: true, // aktifkan sorting
            order: [[0, 'desc']], // sorting default kolom pertama descending
            ajax: {
                <?php if(!empty(getPost('thn', true))){ ?>
                    url: "<?= $baseURL.'/helper/data.php?aksi=nota-jual&thn='.getPost('thn', true).'&bln='.getPost('bln', true).'&id_pelanggan='.getPost('id_pelanggan', true).'&status_bayar='.getPost('status_bayar', true); ?>",
                <?php } else if(!empty(getGet('tgla', true))) { ?>
                    url: "<?= $baseURL.'/helper/data.php?aksi=nota-jual&hari=yes&tgla='.getGet('tgla', true).'&tglb='.getGet('tglb', true).'&id_pelanggan='.getGet('id_pelanggan', true).'&status_bayar='.getGet('status_bayar', true); ?>",
                <?php } else { ?>
                    url: "<?= $baseURL.'/helper/data.php?aksi=nota-jual'; ?>",
                <?php } ?> 
                type: "POST"
            },
            deferRender: true,
            aLengthMenu: [[10, 25, 50], [10, 25, 50]],
            columns: [
                {
                    data: 'id',
                    sortable: false,
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1; // nomor urut
                    }
                },
                { data: "no_trx" },
                { data: "name" },
                {
                    data: "nama_pelanggan",
                    render: function(data, type, row) {
                        return row.nama_pelanggan ? row.nama_pelanggan : '-';
                    }
                },
                { data: "jumlah" },
                <?php if(!empty(in_array($_SESSION['supeno_session']['akses'], [1]))) { ?>
                {
                    data: 'beli',
                    render: $.fn.dataTable.render.number('.', ',', 0, 'Rp')
                },
                <?php } ?>
                {
                    data: 'total',
                    render: $.fn.dataTable.render.number('.', ',', 0, 'Rp')
                },
                {
                    data: 'bayar',
                    render: $.fn.dataTable.render.number('.', ',', 0, 'Rp')
                },
                {
                    data: 'kembalian',
                    render: function (data, type, row) {
                        let nilai = parseFloat(data);
                        if (isNaN(nilai) || nilai < 0) {
                            nilai = 0;
                        }
                        return $.fn.dataTable.render.number('.', ',', 0, 'Rp').display(nilai);
                    }
                },
                {
                    data: 'kurang',
                    render: function(data, type, row) {
                        let val = data;
                        // Jika val positif (lebih dari 0), ubah jadi 0
                        if (val > 0) val = 0;

                        if (type === 'display' || type === 'filter') {
                            return $.fn.dataTable.render.number('.', ',', 0, 'Rp').display(val);
                        }
                        return val;
                    },
                    type: 'num'
                },
                // Kolom status bayar dengan badge
                {
                    data: 'status_bayar',
                    render: function(data, type, row) {
                        if (type === 'display') {
                            const badgeClass = data === 'Kurang Bayar' ? 'badge-danger' : 'badge-success';
                            return `<span class="badge ${badgeClass}">${data}</span>`;
                        }
                        return data;
                    }
                },
                { data: "created_at" },
                // Kolom aksi (edit, detail, hapus)
                {
                    data: "id",
                    render: function(data, type, row, meta) {
                        return `
                            <a href="edit.php?id=${row.no_trx}" class="btn btn-success btn-sm" title="Edit">
                                <i class="fa fa-edit"></i> Edit
                            </a> 
                            <a href="javascript:void(0)" class="btn btn-secondary btn-sm EditTransakti" data-id="${row.no_trx}" title="Detail">
                                <i class="fa fa-list"></i> Detail
                            </a> 
                            <?php if(!empty(in_array($_SESSION['supeno_session']['akses'], [1]))) { ?>
                            <a href="<?= "proses.php?aksi=del&no="; ?>${row.no_trx}" class="btn btn-danger btn-sm" onclick="return confirm('Data yang anda hapus tidak dapat pulih kembali ?');">
                                <i class="fa fa-trash"></i>
                            </a>
                            <?php } ?>
                        `;
                    }
                }
            ]
        });
    });
</script>
<script>
    $('#table-artikel-query tbody').on('click', '.EditTransakti', function(){
        var id = $(this).attr('data-id');
        $('#modelIdDetail').modal('show');
        $.ajax({
            type: "GET",
            url: "<?= $baseURL."helper/cetak/detail_jual.php"?>",
            data: {no:id},
            success:function(html){
                if(html == '404') {
                    alert('Data Tidak Ditemukan !');
                } else {
                    $('#detail_html').html(html);
                }
            }
        });
    });
</script>