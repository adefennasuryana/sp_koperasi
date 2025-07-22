<?php
session_start();
include '../../setting.php';
include '../../helper.php';
if(!empty($_SESSION['supeno_session'])) {
    $uid =  (int)$_SESSION['supeno_session']['id'];
    $sql_users = "SELECT * FROM users WHERE id = ?";
    $row_users = $connectdb->prepare($sql_users);
    $row_users->execute(array($uid));
    $users = $row_users->fetch(PDO::FETCH_OBJ);
} else {
    redirect($baseURL.'login.php');
}

if(!empty(getGet('excel', true))) {
    header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
    header("Content-Disposition: attachment; filename=data-laporan-penjualan-".date('Y-m-d').".xls");  //File name extension was wrong
    header("Expires: 0");
    header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    header("Cache-Control: private", false);
} else {
    echo '<script>window.print()</script>';
}

$sql_toko =  "SELECT * FROM toko WHERE id = 1";
$row_toko = $connectdb->prepare($sql_toko);
$row_toko->execute();
$toko = $row_toko->fetch(PDO::FETCH_OBJ);
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
<!DOCTYPE html>
<html lang="id" moznomarginboxes mozdisallowselectionprint>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Software Penjualan">
    <meta name="author" content="Fauzan Falah">

    <title>Cetak Nota</title>
    <?php if(!empty(getGet('excel', true))) {  } else {?>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <link rel="stylesheet" href="assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
    <?php }?>
    <style>
        * {
            font-size: 12pt;
            font-family: 'Arial';
        }
        td,
        th,
        tr,
        table {
            border-collapse: collapse;
        }
        td.description,
        th.description {
            text-align: left;
            width: 275px;
            max-width: 200px;
        }
        td.no,
        th.no {
            width: 40px;
            max-width: 40px;
            text-align: center;
            word-break: break-all;
        }
        td.quantity,
        th.quantity {
            width: 50px;
            max-width: 50px;
            text-align: center;
            word-break: break-all;
        }
        td.price,
        th.price {
            width: 150px;
            max-width: 150px;
            word-break: break-all;
        }
        .centered {
            text-align: center;
            align-content: center;
        }
        .ticket {
            max-width: 400px;
        }
        img {
            max-width: inherit;
            width: inherit;
        }
        @media print {
            .hidden-print,
            .hidden-print * {
                display: none !important;
            }
        }
    </style>
</head>
<body class="hold-transition sidebar-collapse" <?php if(!empty(getGet('excel', true))) { echo 'style="border: 0.1pt solid #ccc"'; } else {?> style="-webkit-print-color-adjust: exact !important;" onload="window.print()" <?php }?>>
    <div class="wrapper">
    <section class="content">
        <div class="container">
            <div id="laporan">
                <div class="mt-4">
                    <?php if(empty(getGet('excel', true))) {?>
                    <h4 class="text-center font-weight-bold">
                        <?= $toko->nama_toko;?>
                    </h4>
                    <p class="text-center"><?= $toko->alamat_toko;?> <br><?= $toko->tlp;?></p>
                    <?php }?>
                    <h5 class="font-weight-bold">
                        <?php if(!empty(getGet('cari', true))) { ?>
                            Data Laporan Penjualan <?= $bulan_tes[getGet('bln', true)];?> <?= getGet('thn', true);?>
                        <?php } elseif(!empty(getGet('hari', true))) {?>
                            Data Laporan Penjualan <?= getGet('tgla', true);?> s.d. <?= getGet('tglb', true);?>
                        <?php } else {?>
                            Data Laporan Penjualan <?= $bulan_tes[date('m')];?> <?= date('Y');?>
                        <?php }?>
                        <?php if(!empty($_SESSION['supeno_session']['akses']) == 5) {
                            echo '( Kasir '.$_SESSION['supeno_session']['name'].' )';
                        }?>
                    </h5>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover" width="100%" cellpadding="3" cellspacing="4" id="example1">
                            <thead>
                                <tr bgcolor="yellow">
                                    <th>No</th>
                                    <th>Kode Pelanggan</th>
                                    <th>Nama Pelanggan</th>
                                    <th>Total Terjual</th>
                                    <?php if(!empty(in_array($_SESSION['supeno_session']['akses'],[1]))){?>
                                    <th>Total Modal</th>
                                    <?php }?>
                                    <th>Total Jual</th>
                                    <th>Keuntungan</th>
                                    <th>Dibayar</th>
                                    <th>Kurang</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1; 
                                $sqlWhere = '';
                                if (!empty($_SESSION['supeno_session']) && $_SESSION['supeno_session']['akses'] != 1) {
                                    $sqlWhere = ' AND penjualan.id_member = ' . $_SESSION['supeno_session']['id'];
                                }
                                $id_pelanggan = getGet('id_pelanggan') ?? '';
                                if ($id_pelanggan) {
                                    $sqlWhere .= ' AND penjualan.id_pelanggan = "' . $id_pelanggan . '" ';
                                }
                                $status_bayar = getGet('status_bayar') ?? '';
                                if ($status_bayar) {
                                    $sqlWhere .= ' AND penjualan.status_bayar = "' . $status_bayar . '" ';
                                }

                                $select = "SELECT 
                                                pelanggan.kode_pelanggan, 
                                                pelanggan.nama_pelanggan, 
                                                SUM(penjualan.jumlah) AS total_jumlah,
                                                SUM(penjualan.beli) AS total_modal,
                                                SUM(penjualan.total) AS total_jual,
                                                SUM(penjualan.bayar) AS total_bayar,
                                                MAX(penjualan.status_bayar) AS status_bayar,
                                                MAX(penjualan.created_at) AS created_at
                                        FROM penjualan 
                                        LEFT JOIN pelanggan ON penjualan.id_pelanggan = pelanggan.id
                                        LEFT JOIN users ON penjualan.id_member = users.id";

                                if (!empty(getGet('cari', true))) {
                                    $periode = getGet('thn', true) . '-' . getGet('bln', true);
                                    $sql = "$select WHERE penjualan.periode = ? $sqlWhere GROUP BY penjualan.id_pelanggan ORDER BY pelanggan.nama_pelanggan ASC";
                                    $row = $connectdb->prepare($sql);
                                    $row->execute([$periode]);
                                    $hasil = $row->fetchAll(PDO::FETCH_OBJ);
                                } elseif (!empty(getGet('tgla', true))) {
                                    $tgla = getGet('tgla', true);
                                    $tglb = getGet('tglb', true);
                                    $sql = "$select WHERE penjualan.tanggal_input BETWEEN ? AND ? $sqlWhere GROUP BY penjualan.id_pelanggan ORDER BY pelanggan.nama_pelanggan ASC";
                                    $row = $connectdb->prepare($sql);
                                    $row->execute([$tgla, $tglb]);
                                    $hasil = $row->fetchAll(PDO::FETCH_OBJ);
                                } else {
                                    $periodeNow = date('Y-m');
                                    $sql = "$select WHERE penjualan.periode = ? $sqlWhere GROUP BY penjualan.id_pelanggan ORDER BY pelanggan.nama_pelanggan ASC";
                                    $row = $connectdb->prepare($sql);
                                    $row->execute([$periodeNow]);
                                    $hasil = $row->fetchAll(PDO::FETCH_OBJ);
                                }

                                $grand_jumlah = 0;
                                $grand_modal = 0;
                                $grand_jual = 0;
                                $grand_bayar = 0;
                                $grand_kurang = 0;

                                foreach ($hasil as $r) {
                                    $kurang = $r->total_jual - $r->total_bayar;
                                    $grand_jumlah += $r->total_jumlah;
                                    $grand_modal += $r->total_modal;
                                    $grand_jual += $r->total_jual;
                                    $grand_bayar += $r->total_bayar;
                                    $grand_kurang += $kurang;
                                ?>
                                <tr>
                                    <td><?= $no++; ?></td>
                                    <td><?= $r->kode_pelanggan ?? '-'; ?></td>
                                    <td><?= $r->nama_pelanggan ?? '-'; ?></td>
                                    <td><?= $r->total_jumlah; ?></td>
                                    <?php if (!empty($_SESSION['supeno_session']) && $_SESSION['supeno_session']['akses'] == 1) { ?>   
                                    <td><?= getRupiah($r->total_modal,'Rp'); ?></td>    
                                    <?php } ?>  
                                    <td><?= getRupiah($r->total_jual,'Rp'); ?></td>  
                                    <td><?= getRupiah($r->total_jual - $r->total_modal,'Rp'); ?></td>
                                    <td><?= getRupiah($r->total_bayar,'Rp'); ?></td>   
                                    <td><?= getRupiah($kurang,'Rp'); ?></td>      
                                    <td><?= ($kurang > 0) ? 'Kurang Bayar' : 'Lunas'; ?></td>      
                                </tr>
                                <?php } ?>
                                <tr>
                                    <th colspan="3">Total</th>
                                    <th><?= $grand_jumlah; ?></th>
                                    <?php if ($_SESSION['supeno_session']['akses'] == 1) { ?>
                                    <th><?= getRupiah($grand_modal, 'Rp'); ?></th>
                                    <?php } ?>
                                    <th><?= getRupiah($grand_jual, 'Rp'); ?></th>
                                    <th><?= getRupiah($grand_jual - $grand_modal, 'Rp'); ?></th>
                                    <th><?= getRupiah($grand_bayar, 'Rp'); ?></th>
                                    <th><?= getRupiah($grand_kurang, 'Rp'); ?></th>
                                    <th>-</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>