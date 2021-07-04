<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TableOrder extends Migration
{
    public function up()
    {
        $this->db->enableForeignKeyChecks();
        $this->forge->addField([
            'id' => [
				'type'           => 'INT',
				'constraint'     => 11,
                'unsigned' => true,
                'auto_increment' => true,
			],
			'tgl_pesan' => [
				'type'           => 'DATETIME',
			],
			'total_bayar' => [
				'type'           => 'VARCHAR',
				'constraint'     => 50,
			],
            'latitude' => [
                'type' => 'DOUBLE',
            ],
            'longitude' => [
                'type' => 'DOUBLE',
            ],
            'id_pelanggan' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
            ],
            'status' => [
                'type' => 'ENUM',
                'constraint' => ['0', '1', '2', '3'],
            ],
            'alamat_kirim' => [
                'type' => 'TEXT',
            ],
            'noteCancel' => [
                'type' => 'TEXT',
            ],
            'note' => [
                'type' => 'TEXT',
            ],
            'payment' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
            ],
            'ongkir' => [
                'type' => 'INT',
                'constraint' => 10,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->addForeignKey('id_pelanggan', 'users', 'id');
        $this->forge->createTable('orders');
    }

    //--------------------------------------------------------------------

    public function down()
    {
        $this->forge->dropTable('orders');
    }
}
