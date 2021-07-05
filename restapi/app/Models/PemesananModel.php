<?php

namespace App\Models;

use CodeIgniter\Model;

class PemesananModel extends Model
{
    protected $table = 'orders';
    protected $allowedFields = [
        'id',
        'tgl_pesan',
        'total_bayar',
        'alamat_kirim',
        'latitude',
        'longitude',
        'id_pelanggan',
        'status',
        'note',
        'payment',
        'ongkir',
    ];

    public function getTotalBayar($id_pelanggan)
    {
        $result = $this->db->table('carts')->where('id_pelanggan', $id_pelanggan)->get();

        if ($result) {
            $totalBayar = 0;
            foreach ($result->getResultArray() as $row) {
                $totalBayar += $row['total'];
            }

            return $totalBayar;
        }

        return false;
    }

    public function kirimPesanan($dataLog)
    {
        $result = $this->insert($dataLog);

        if ($result > 0) {
            $keranjang = $this->db->table('carts')
                ->where('id_pelanggan', $dataLog['id_pelanggan'])
                ->get();

            $dataLog = [];
            foreach ($keranjang->getResultArray() as $row) {
                $dataLog[] = [
                    'nama_produk' => $row['nama_produk'],
                    'harga' => $row['harga'],
                    'qty' => $row['qty'],
                    'total' => $row['total'],
                    'id' => $result,
                    'id_pelanggan' => $row['id_pelanggan'],
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s'),
                ];
            }

            if ($this->db->table('log_order')->insertBatch($dataLog)) {
                $this->db->table('carts')
                    ->where('id_pelanggan', $data['id_pelanggan'])
                    ->delete();
            }

            return true;
        }

        return false;
    }

    public function getTransaksi($id_pelanggan)
    {
        $result = $this->where('id_pelanggan', $id_pelanggan)
            ->orderBy('id', 'desc')
            ->findAll();

        if ($result) {
            $data = [];
            foreach ($result as $row) {
                $data[] = [
                    'id' => $row['id'],
                    'tgl_pesan' => formatTgl($row['tgl_pesan'], 1),
                    'total_bayar' => $row['total_bayar'],
                    'alamat_kirim' => $row['alamat_kirim'],
                    'status' => $row['status'],
                    'noteCancel' => $row['noteCancel'],
                    'note' => $row['note'],
                    'payment' => $row['payment'],
                    'ongkir' => $row['ongkir'],
                    'id_pelanggan' => $row['id_pelanggan'],
                ];
            }

            return $data;
        }

        return false;
    }

    public function getItemTransaksi($id, $id_pelanggan)
    {
        $result = $this->db->table('log_order')->where('id', $id)
            ->where('id_pelanggan', $id_pelanggan)
            ->get();

        if ($result) {
            $data = [];
            foreach ($result->getResultArray() as $row) {
                $data[] = $row;
            }

            return $data;
        }

        return false;
    }
}
