<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class User extends Migration
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
            'username'          => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
            'fullname'          => [
                'type'              => 'VARCHAR',
                'constraint'        => 100,
            ],
            'phone'        => [
                'type'              => 'VARCHAR',
                'constraint'        => 13,
            ],
            'password'       => [
                'type'              => 'VARCHAR',
                'constraint'        => 30,
            ],
        ]);
        $this->forge->addKey('id', TRUE);
        $this->forge->createTable('users');
	}

	public function down()
	{
		//
	}
}
