<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class CategoriesSeeder extends Seeder
{
	public function run()
	{
		// membuat data
		$categoriesdata = [
			[
				'nama_kategori'	=> 'SUV',
				'status'		=> '1',
            	'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
			],
			[
				'nama_kategori'	=> 'MPV',
				'status'		=> '1',
            	'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
			],
			[
				'nama_kategori'	=> 'Sedan',
				'status'		=> '1',
            	'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
			],
			[
				'nama_kategori'	=> 'Minibus',
				'status'		=> '1',
            	'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
			],
		];

		foreach($categoriesdata as $data){
			// insert semua data ke tabel
			$this->db->table('categories')->insert($data);
		}
	}
}
