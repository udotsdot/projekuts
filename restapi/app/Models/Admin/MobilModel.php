<?php

namespace App\Models\Admin;

use CodeIgniter\Model;

class MobilModel extends Model
{
    protected $table = 'cars';
    protected $useTimestamps = true;
    protected $allowedFields = [
        'nama_produk', 
        'harga', 
        'gambar', 
        'bbm', 
        'transmisi', 
        'kursi', 
        'kecepatan', 
        'status',
        'kategori',
    ];

    public function getRulesValidation($method)
    {
        if ($method == 'update') {
            $imgRules = 'max_size[gambar,1024]|is_image[gambar]|ext_in[gambar,png,jpg,jpeg]';
        } else {
            $imgRules = 'uploaded[gambar]|max_size[gambar,1024]|is_image[gambar]|ext_in[gambar,png,jpg,jpeg]';
        }

        $rulesValidation = [
            'nama_produk' => [
                'label'  => 'nama produk',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'harga' => [
                'label'  => 'harga',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'bbm' => [
                'label'  => 'bbm',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'transmisi' => [
                'label'  => 'transmisi',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'kursi' => [
                'label'  => 'kursi',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'kecepatan' => [
                'label'  => 'kecepatan',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'kategori' => [
                'label'  => 'kategori',
                'rules'  => 'required',
                'errors' => [
                    'required' => '{field} harus diisi.'
                ]
            ],
            'gambar' => [
                'label'  => 'gambar',
                'rules'  => $imgRules,
                'errors' => [
                    'uploaded' => '{field} harus dipilih.',
                    'max_size' => '{field} melebihi ukuran yang ditentukan (max. 1MB).',
                    'is_image' => 'format {field} tidak sesuai.',
                    'ext_in'   => 'format {field} tidak sesuai.'
                ]
            ],
        ];

        return $rulesValidation;
    }

    public function ajaxGetData($length, $start)
    {
        $result = $this->orderBy('id', 'desc')
            ->findAll($length, $start);

        return $result;
    }

    public function ajaxGetDataSearch($search, $length, $start)
    {
        $result = $this->like('nama_produk', $search)
            ->orLike('harga', $search)
            ->orLike('bbm', $search)
            ->orLike('transmisi', $search)
            ->orLike('kursi', $search)
            ->orLike('kecepatan', $search)
            ->orLike('kategori', $search)
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
        $result = $this->like('nama_produk', $search)
            ->orLike('harga', $search)
            ->orLike('bbm', $search)
            ->orLike('transmisi', $search)
            ->orLike('kursi', $search)
            ->orLike('kecepatan', $search)
            ->orLike('kategori', $search)
            ->countAllResult();

        return $result;
    }

}