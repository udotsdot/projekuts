<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class UserSeeder extends Seeder
{
	public function run()
	{
		$options = [
			'cost' => 10,
		];

		$userdata = [
    		[
				'nama'       => 'TES DO RENT ME',
				'no_telp'    => '081234567890',
				'email'      => 'user@dorentme.com',
				'password'   => password_hash('123456', PASSWORD_DEFAULT, $options),
				'status'     => '1',
				'created_at' => date("Y-m-d H:i:s"),
				'updated_at' => date("Y-m-d H:i:s"),
			],
    		[
				'nama'       => 'Umar',
				'no_telp'    => '081234567890',
				'email'      => 'umar@dorentme.com',
				'password'   => password_hash('123456', PASSWORD_DEFAULT, $options),
				'status'     => '1',
				'created_at' => date("Y-m-d H:i:s"),
				'updated_at' => date("Y-m-d H:i:s"),
			],
		];

		foreach ($userdata as $data) {
			$this->db->table('users')->insert($data);
		}
	}
}
