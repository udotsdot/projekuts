<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TableOderLog extends Migration
{
    public function up()
    {
        $this->db->enableForeignKeyChecks();
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'nama_produk' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'harga' => [
                'type' => 'INT',
                'constraint' => 10,
            ],
            'qty' => [
                'type' => 'INT',
                'constraint' => 2,
            ],
            'total' => [
                'type' => 'INT',
                'constraint' => 10,
            ],
            'id_pemesanan' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
            ],
            'id_pelanggan' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
            ],
            'created_at' => [
                'type' => 'DATETIME',
            ],
            'updated_at' => [
                'type' => 'DATETIME',
            ],

        ]);
        $this->forge->addKey('id', true);
        $this->forge->addForeignKey('id_pelanggan', 'users', 'id');
        $this->forge->addForeignKey('id_pemesanan', 'orders', 'id');
        $this->forge->createTable('log_order');

    }

    public function down()
    {
        $this->forge->dropTable('log_order');

    }
}
