<?php

namespace App\Controllers\API;

use App\Models\MobilModel;
use CodeIgniter\RESTful\ResourceController;

class Mobil extends ResourceController
{
    protected $mobil;

    public function __construct()
    {
        $this->mobil = new MobilModel();
    }

    public function index()
    {
        $kategori = $this->request->getVar('kategori');
        $result = $this->mobil->getMobil($kategori);

        if ($result) {
            return $this->respond($result, 200);
        } else {
            return $this->respond([
                'status' => false,
                'message' => 'Data tidak ditemukan!',
            ], 400);
        }
    }
}
