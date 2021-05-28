<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class CarSeeder extends Seeder
{
	public function run()
	{
		$data = [
            [
                'name'     => 'Chevrolet Corvette',
                'type'         => 'Sport',
                'price'         =>  '1500000',
                'speed'      =>  '180',
                'gas'      =>  '17.8',
                'class'      =>  'executive',
                'seat'      =>  '2',
                'seat'      =>  '2',
                'image'      =>  'tes',
                
            ],
        ];
        $this->db->table('cars')->insertBatch($data);
	}
}
