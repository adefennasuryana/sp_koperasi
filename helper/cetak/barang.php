<?php 

session_start();
include '../../setting.php';
include '../../helper.php';
require '../../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;

if(!empty($_SESSION['codekop_session'])) {
    $uid =  (int)$_SESSION['codekop_session']['id'];
    $sql_users = "SELECT * FROM users WHERE id = ?";
    $row_users = $connectdb->prepare($sql_users);
    $row_users->execute(array($uid));
    $users = $row_users->fetch(PDO::FETCH_OBJ);
} else {
    redirect($baseURL.'login.php');
    exit;
}

// Create new Spreadsheet object
$spreadsheet = new Spreadsheet();
$spreadsheet->getProperties()->setCreator("Codekop - Web - Android")
    ->setLastModifiedBy("Codekop - Web - Android")
    ->setTitle("Office 2007 XLSX Test Document")
    ->setSubject("Office 2007 XLSX Test Document")
    ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
    ->setKeywords("office 2007 openxml php")
    ->setCategory("Test result file");

$boldFont = [
    "font" => [
        "bold" => true
        // "color" => ["argb" => "0000FF"],
    ],
];

$totalStyle = [
    "font" => [
        "bold" => true,
        "color" => ["argb" => "0000FF"],
    ],
];

$allBorderStyle = [
    "borders" => [
        "allBorders" => [
            "borderStyle" => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            "color" => ["argb" => "00000000"],
        ],
    ],
];

$outlineBorderStyle = [
    "borders" => [
        "outline" => [
            "borderStyle" => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            "color" => ["argb" => "00000000"],
        ],
    ],
];

$topBorderStyle = [
    "borders" => [
        "top" => [
            "borderStyle" => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            "color" => ["argb" => "00000000"],
        ],
    ],
];

$bottomBorderStyle = [
    "borders" => [
        "bottom" => [
            "borderStyle" => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            "color" => ["argb" => "00000000"],
        ],
    ],
];

$center = array();
$center["alignment"] = array();
$center["alignment"]["horizontal"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER;
$center["alignment"]["vertical"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER;

$right = array();
$right["alignment"] = array();
$right["alignment"]["horizontal"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT;
$right["alignment"]["vertical"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER;

$left = array();
$left["alignment"] = array();
$left["alignment"]["horizontal"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT;
$left["alignment"]["vertical"] = \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER;
$noStartCell = 1;
$lastCell = "K";
// Add some data
$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($noStartCell))
    ->getFill()
    ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
    ->getStartColor()
    ->setRGB("F2BE6B");
$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($noStartCell))->getFont()->setBold(true)->setSize(10);
$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($noStartCell))->applyFromArray($allBorderStyle);
$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($noStartCell))->applyFromArray($center);
$spreadsheet->getActiveSheet()->setCellValue("A" . ($noStartCell), "NO")
    ->setCellValue("B" . ($noStartCell), "ID Produk")
    ->setCellValue("C" . ($noStartCell), "Nama Produk")
    ->setCellValue("D" . ($noStartCell), "Kategori")
    ->setCellValue("E" . ($noStartCell), "Merk")
    ->setCellValue("F" . ($noStartCell), "Stok")
    ->setCellValue("G" . ($noStartCell), "Harga Beli")
    ->setCellValue("H" . ($noStartCell), "Harga Jual")
    ->setCellValue("I" . ($noStartCell), "Total Beli")
    ->setCellValue("J" . ($noStartCell), "Total Jual")
    ->setCellValue("K" . ($noStartCell), "Satuan");

$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($noStartCell))->applyFromArray($allBorderStyle);
$rowsExcel = $noStartCell;
$nomor = 1;
$rowIdx = $rowsExcel + 1;
$sql  = "SELECT barang_kategori.nama_kategori, barang.* 
        FROM barang LEFT JOIN barang_kategori ON barang.id_kategori=barang_kategori.id ORDER BY barang.nama_barang ASC";
$row = $connectdb->prepare($sql);
$row->execute();
$hasil = $row->fetchAll();
$qty = 0;
$totalBeli = 0;
$totalJual = 0;
foreach ($hasil as $row) {
    $spreadsheet->getActiveSheet()
        ->getStyle('G' . $rowIdx)
        ->getNumberFormat()
        ->setFormatCode(\PhpOffice\PhpSpreadsheet\Style\NumberFormat::FORMAT_TEXT);
    $spreadsheet->getActiveSheet()
        ->setCellValue("A" . ($rowIdx), $nomor)
        ->setCellValueExplicit('B' . $rowIdx, $row["id_barang"], \PhpOffice\PhpSpreadsheet\Cell\DataType::TYPE_STRING)
        ->setCellValue("C" . ($rowIdx), $row["nama_barang"])
        ->setCellValue("D" . ($rowIdx), $row["nama_kategori"])
        ->setCellValue("E" . ($rowIdx), $row["merk"])
        ->setCellValue("F" . ($rowIdx), $row["stok"])
        ->setCellValue("G" . ($rowIdx), $row["harga_beli"])
        ->setCellValue("H" . ($rowIdx), $row["harga_jual"])
        ->setCellValue("I" . ($rowIdx), '=F'.($rowIdx).'*G'.($rowIdx).'')
        ->setCellValue("J" . ($rowIdx), '=F'.($rowIdx).'*H'.($rowIdx).'')
        ->setCellValue("K" . ($rowIdx), $row["satuan_barang"]);
    $nomor++;
    $rowIdx++;
}
$spreadsheet->getActiveSheet()
    ->setCellValue('A' . ($rowIdx + 1), 'TOTAL')
    ->setCellValue('F' . ($rowIdx + 1), '=SUM(F'.($noStartCell).':F'.($rowIdx).')')
    ->setCellValue('G' . ($rowIdx + 1), '=SUM(G'.($noStartCell).':G'.($rowIdx).')')
    ->setCellValue('H' . ($rowIdx + 1), '=SUM(H'.($noStartCell).':H'.($rowIdx).')')
    ->setCellValue('I' . ($rowIdx + 1), '=SUM(I'.($noStartCell).':I'.($rowIdx).')')
    ->setCellValue('J' . ($rowIdx + 1), '=SUM(J'.($noStartCell).':J'.($rowIdx).')')
    ->setCellValue('K' . ($rowIdx + 1), '');
    
$spreadsheet->getActiveSheet()->mergeCells("A" . ($rowIdx + 1) . ":E" . ($rowIdx + 1));
$spreadsheet->getActiveSheet()->getStyle("A" . ($noStartCell) . ":" . $lastCell . ($rowIdx))->applyFromArray($allBorderStyle);
$spreadsheet->getActiveSheet()->getStyle("A2:" . $lastCell . "" . ($rowIdx + 1))->applyFromArray($allBorderStyle);
$spreadsheet->getActiveSheet()->getStyle("F2:" . $lastCell . ($rowIdx + 1))->getNumberFormat()->setFormatCode('#,##0.00');
$spreadsheet->getActiveSheet()->getStyle('A' . ($rowIdx + 1) . ':' . $lastCell . ($rowIdx + 1))->getFont()->setBold(true)->setSize(10);
$spreadsheet->getActiveSheet()->getStyle('A' . ($rowIdx + 1) . ':' . $lastCell . ($rowIdx + 1))->applyFromArray($right);
$spreadsheet->getActiveSheet()->getStyle('A' . ($rowIdx + 1) . ':' . $lastCell . ($rowIdx + 1))
    ->getFill()
    ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
    ->getStartColor()
    ->setRGB('F2BE6B');

$str = 'Data_Produk_' . date('Ymd');
$fileName = preg_replace("/\s+/", "", $str);
// Rename worksheet
$spreadsheet->getActiveSheet()->setTitle($fileName);
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$spreadsheet->setActiveSheetIndex(0);
// Redirect output to a client’s web browser (Xlsx)
header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
header("Content-Disposition: attachment;filename=" . $fileName . ".Xlsx");
header("Cache-Control: max-age=0");
// If you"re serving to IE 9, then the following may be needed
header("Cache-Control: max-age=1");

// If you"re serving to IE over SSL, then the following may be needed
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); // Date in the past
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // always modified
header("Cache-Control: cache, must-revalidate"); // HTTP/1.1
header("Pragma: public"); // HTTP/1.0
/* BY COMPOSER */
// $writer = new Xlsx($spreadsheet);
/* OFFLINE/ BY COPY EXCEL FOLDER  */
$writer = IOFactory::createWriter($spreadsheet, "Xlsx");
$writer->save("php://output");
exit(0);