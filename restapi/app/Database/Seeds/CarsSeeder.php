<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class CarsSeeder extends Seeder
{
	public function run()
	{
		$carsdata = [
    		[
				'nama_produk' => 'Toyota Innova 2021',
				'harga' => 500000,
				'gambar' => '1624942598_1183f1e96900a4ee7bc5.png',
				'bbm' => '12.5',
				'transmisi' => 'Otomatis',
				'kursi' => '7',
				'kecepatan' => '180',
				'status' => '1',
				'kategori' => 'MPV',
				'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
    		],
    		[
				'nama_produk' => 'BMW X5 2021',
				'harga' => 2000000,
				'gambar' => '1625067717_afa350e8a99a72af8400.png',
				'bbm' => '9.3',
				'transmisi' => 'Otomatis',
				'kursi' => '7',
				'kecepatan' => '210',
				'status' => '1',
				'kategori' => 'SUV',
				'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
    		],
    		[
				'nama_produk' => 'Honda Civic Type R 2019',
				'harga' => 2000000,
				'gambar' => '1625068305_76570eb8316fe3872707.png',
				'bbm' => '10.4',
				'transmisi' => 'Otomatis',
				'kursi' => '7',
				'kecepatan' => '240',
				'status' => '1',
				'kategori' => 'Sedan',
				'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
    		],
    		[
				'nama_produk' => 'Mercedes Benz Sprinter 2018',
				'harga' => 4000000,
				'gambar' => '1625105717_a40d8bc5146fa35af80e.png',
				'bbm' => '20.4',
				'transmisi' => 'Manual',
				'kursi' => '14',
				'kecepatan' => '180',
				'status' => '1',
				'kategori' => 'Minibus',
				'updated_at' => date("Y-m-d H:i:s"),
				'created_at' => date("Y-m-d H:i:s"),
    		],
		];

		foreach ($carsdata as $data) {
			// insert semua data ke tabel
			$this->db->table('cars')->insert($data);
		}
	}
}
