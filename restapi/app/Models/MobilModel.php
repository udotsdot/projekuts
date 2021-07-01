<?php

namespace App\Models;

use CodeIgniter\Model;

class MobilModel extends Model
{
    protected $table = 'cars';

    public function getMobil($kategori)
    {
        if ($kategori == 'all') {
            return $this->findAll();
        } else {
            return $this->where('kategori', $kategori)->findAll();
        }
    }
}