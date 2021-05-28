<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class UserSeeder extends Seeder
{
	public function run()
	{
		$data = [
            [
                'username'     => 'owner',
                'fullname'         => 'Owner',
                'phone'         =>  '08321382131',
                'password'      =>  'owner',
                
            ],
        ];
        $this->db->table('users')->insertBatch($data);
	}
}
