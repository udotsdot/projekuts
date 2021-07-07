<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class PemesananModel extends Model
{
    protected $table = 'orders';
    protected $primaryKey = 'id';
    protected $allowedFields = ['status', 'noteCancel'];

    public function ajaxGetData($length, $start)
    {
        $result = $this->join('users', 'users.id = orders.id_pelanggan')
            ->orderBy('orders.id', 'desc')
            ->findAll($length, $start);

        return $result;
    }

    public function ajaxGetDataSearch($search, $length, $start)
    {
        $result = $this->like('id', $search)
            ->orderBy('id', 'desc')
            ->findAll($length, $start);

        return $result;
    }

    public function ajaxGetTotal()
    {
        $result = $this->countAll();

        if (isset($result)) {
            return $result;
        }

        return 0;
    }

    public function ajaxGetTotalSearch($search)
    {
        $result = $this->like('id', $search)
            ->countAllResult();

        return $result;
    }

    public function getDetailPesanan($id)
    {
        $result = $this->db->table('log_order')
            ->where('id', $id)
            ->get();

        return $result;
    }

    public function getDataPesanan($id)
    {
        $result = $this->where('id', $id)
            ->limit(1)
            ->first();

        return $result;
    }
}
