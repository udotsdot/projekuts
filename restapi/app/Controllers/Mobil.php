<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Admin\MobilModel;

class Mobil extends BaseController
{
    protected $halaman;
    protected $title;
    protected $mobil;

    public function __construct()
    {
        $this->halaman = 'mobil';
        $this->title = 'Mobil';

        $this->mobil = new MobilModel();
    }

    public function index()
    {
        $data = [
            'halaman'   => $this->halaman,
            'title'     => $this->title,
            'main'      => 'mobil/index'
        ];

        return view('layout/template', $data);
    }

    public function ajaxList()
    {
        $draw = $_REQUEST['draw'];
        $length = $_REQUEST['length'];
        $start = $_REQUEST['start'];
        $search = $_REQUEST['search']['value'];

        $total = $this->mobil->ajaxGetTotal();
        $output = [
            'length' => $length,
            'draw' => $draw,
            'recordsTotal' => $total,
            'recordsFiltered' => $total,
        ];

        if ($search !== '') {
            $list = $this->mobil->ajaxGetDataSearch($search, $length, $start);
        } else {
            $list = $this->mobil->ajaxGetData($length, $start);
        }

        if ($search !== '') {
            $total_search = $this->mobil->ajaxGetTotalSearch($search);
            $output = [
                'recordsTotal' => $total_search,
                'recordsFiltered' => $total_search,
            ];
        }

        $data = [];
        $no = $start + 1;
        foreach ($list as $temp) {
            $aksi = '
                <div class="text-center">
                    <a href="javascript:void(0)" class="btn btn-warning btn-sm" data-toggle="tooltip" title="Edit Data" onclick="ajaxEdit(' . $temp['id'] . ')">
                        <i class="fa fa-pencil"></i>
                    </a>
                    <a href="javascript:void(0)" class="btn btn-danger btn-sm" data-toggle="tooltip" title="Hapus Data" onclick="ajaxDelete(' . $temp['id'] . ')">
                        <i class="fa fa-trash"></i>
                    </a>
                </div>
            ';

            $status = '
                <div class="text-center">
                    <a href="javascript:void(0)" data-toggle="tooltip" title="' . ($temp['status'] == '0' ? 'Aktifkan' : 'Non-aktifkan') . '" onclick="ajaxStatus(' . $temp['id'] . ')">
                        ' . formatStatus($temp['status']) . '
                    </a>
                </div>
            ';

            $gambar = '
                <div class="text-center">
                    <img src="' . base_url('/uploads/img/' . $temp['gambar']) . '" alt="' . $temp['gambar'] . '" width="200px" height="125px">
                </div>
            ';

            $row = [];
            $row[] = $no++;
            $row[] = $gambar;
            $row[] = $temp['nama_produk'];
            $row[] = $temp['harga'];
            $row[] = $temp['bbm'];
            $row[] = $temp['transmisi'];
            $row[] = $temp['kursi'];
            $row[] = $temp['kecepatan'];
            $row[] = $temp['kategori'];
            $row[] = $status;
            $row[] = $aksi;

            $data[] = $row;
        }

        $output['data'] = $data;

        echo json_encode($output);
        exit();
    }

    public function ajaxEdit($id)
    {
        $data = $this->mobil->find($id);
        echo json_encode($data);
    }

    public function ajaxSave()
    {
        $this->_validate('save');

        $data = [
            'nama_produk'   => $this->request->getVar('nama_produk'),
            'harga'         => $this->request->getVar('harga'),
            'bbm'           => $this->request->getVar('bbm'),
            'transmisi'     => $this->request->getVar('transmisi'),
            'kursi'         => $this->request->getVar('kursi'),
            'kecepatan'     => $this->request->getVar('kecepatan'),
            'kategori'     => $this->request->getVar('kategori'),
            'gambar'        => uploadImage($this->request->getFile('gambar')),
            'status'        => '1'
        ];

        if ($this->mobil->save($data)) {
            echo json_encode(['status' => TRUE]);
        } else {
            echo json_encode(['status' => FALSE]);
        }
    }

    public function ajaxUpdate()
    {
        $this->_validate('update');

        $id = $this->request->getVar('id');
        $mobil = $this->mobil->find($id);

        if ($this->request->getFile('gambar') == '') {
            $gambar = $mobil['gambar'];
        } else {
            unlink('uploads/img/' . $gambar['gambar']);
            $gambar = uploadImage($this->request->getFile('gambar'));
        }

        $data = [
            'id'          => $id,
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga'       => $this->request->getVar('harga'),
            'bbm'           => $this->request->getVar('bbm'),
            'kategori'    => $this->request->getVar('kategori'),
            'kursi'        => $this->request->getVar('kursi'),
            'transmisi'    => $this->request->getVar('transmisi'),
            'gambar'      => $gambar,
        ];

        if ($this->mobil->save($data)) {
            echo json_encode(['status' => TRUE]);
        } else {
            echo json_encode(['status' => FALSE]);
        }
    }


    public function ajaxDelete($id)
    {
        $mobil = $this->mobil->find($id);
        unlink('uploads/img/' . $mobil['gambar']);

        if ($this->mobil->delete($id)) {
            echo json_encode(['status' => TRUE]);
        } else {
            echo json_encode(['status' => FALSE]);
        }
    }

    public function ajaxStatus($id)
    {
        $mobil = $this->mobil->find($id);
        $data['id'] = $id;

        if ($mobil['status'] == '0') {
            $data['status'] = '1';
        } else {
            $data['status'] = '0';
        }

        if ($this->mobil->save($data)) {
            echo json_encode(['status' => TRUE]);
        } else {
            echo json_encode(['status' => FALSE]);
        }
    }

    public function _validate($method)
    {
        if (!$this->validate($this->mobil->getRulesValidation($method))) {
            $validation = \Config\Services::validation();

            $data = [];
            $data['error_string'] = [];
            $data['inputerror'] = [];
            $data['status'] = TRUE;

            if ($validation->hasError('nama_produk')) {
                $data['inputerror'][]     = 'nama_produk';
                $data['error_string'][]   = $validation->getError('nama_produk');
                $data['status']         = FALSE;
            }

            if ($validation->hasError('harga')) {
                $data['inputerror'][]     = 'harga';
                $data['error_string'][]   = $validation->getError('harga');
                $data['status']         = FALSE;
            }

            if ($validation->hasError('bbm')) {
                $data['inputerror'][]     = 'bbm';
                $data['error_string'][]   = $validation->getError('bbm');
                $data['status']         = FALSE;
            }

            if ($validation->hasError('transmisi')) {
                $data['inputerror'][]     = 'transmisi';
                $data['error_string'][]   = $validation->getError('transmisi');
                $data['status']         = FALSE;
            }
            if ($validation->hasError('kursi')) {
                $data['inputerror'][]     = 'kursi';
                $data['error_string'][]   = $validation->getError('kursi');
                $data['status']         = FALSE;
            }
            if ($validation->hasError('kecepatan')) {
                $data['inputerror'][]     = 'kecepatan';
                $data['error_string'][]   = $validation->getError('kecepatan');
                $data['status']         = FALSE;
            }
            if ($validation->hasError('kategori')) {
                $data['inputerror'][]     = 'kategori';
                $data['error_string'][]   = $validation->getError('kategori');
                $data['status']         = FALSE;
            }

            if ($validation->hasError('gambar')) {
                $data['inputerror'][]     = 'gambar';
                $data['error_string'][]   = $validation->getError('gambar');
                $data['status']         = FALSE;
            }

            if ($data['status'] == FALSE) {
                echo json_encode($data);
                exit();
            }
        }
    }

}
