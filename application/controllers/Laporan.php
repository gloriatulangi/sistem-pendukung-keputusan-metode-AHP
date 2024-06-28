<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once(APPPATH.'third_party/fpdf/fpdf.php'); // Memuat FPDF

class Laporan extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Perhitungan_model');
    }

    public function cetak_laporan_hasil()
    {
        $hasil = $this->Perhitungan_model->get_hasil(); // Mendapatkan hasil dari model
        
        // Membuat objek FPDF
        $pdf = new FPDF('P', 'mm', 'A4');
        
        // Menambahkan halaman
        $pdf->AddPage();
        
        // Menambahkan judul
        $pdf->SetFont('Arial', 'B', 16);
        $pdf->Cell(0, 10, 'Hasil Akhir Perankingan AHP', 0, 1, 'C');
        $pdf->Ln(10); // Jarak antara judul dan tabel
        
        // Membuat tabel
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(70, 10, 'Alternatif', 1, 0, 'C');
        $pdf->Cell(50, 10, 'Nilai', 1, 0, 'C');
        $pdf->Cell(70, 10, 'Rank', 1, 1, 'C');
        
        // Menambahkan data dari hasil
        $pdf->SetFont('Arial', '', 12);
        $no = 1;
        foreach ($hasil as $keys) {
            $nama_alternatif = $this->Perhitungan_model->get_hasil_alternatif($keys->id_alternatif);
            $pdf->Cell(70, 10, $nama_alternatif['nama'], 1, 0, 'L');
            $pdf->Cell(50, 10, $keys->nilai, 1, 0, 'C');
            $pdf->Cell(70, 10, $no, 1, 1, 'C');
            $no++;
        }
        
        // Menyimpan atau menampilkan PDF
        $pdf->Output('Laporan_Hasil.pdf', 'I'); // Menampilkan PDF dalam browser dengan nama file "Laporan_Hasil.pdf"
        // Atau jika Anda ingin menyimpannya:
        // $pdf->Output('path_ke_file/Laporan_Hasil.pdf', 'F'); // Menyimpan PDF ke server
    } 
}
?>
