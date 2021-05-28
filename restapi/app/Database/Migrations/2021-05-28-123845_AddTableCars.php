<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddTableCars extends Migration
{
	public function up()
	{
		$this->forge->addField([
            'id'            => [
                'type'              => 'INT',
                'constraint'        => 20,
                'unsigned'          => TRUE,
                'auto_increment'    => TRUE
            ],
            'name'          => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
            'type'          => [
                'type'              => 'VARCHAR',
                'constraint'        => 100,
            ],
            'price'        => [
                'type'              => 'VARCHAR',
                'constraint'        => 13,
            ],
            'speed'       => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
            'gas'       => [
                'type'              => 'FLOAT',
                'constraint'        => 8,
            ],
            'class'       => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
            'seat'       => [
                'type'              => 'INT',
                'constraint'        => 2,
            ],
            'image'       => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
        ]);
        $this->forge->addKey('id', TRUE);
        $this->forge->createTable('cars');
	}

	public function down()
	{
		//
	}
}
