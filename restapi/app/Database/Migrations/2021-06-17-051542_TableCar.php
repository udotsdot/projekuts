<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TableCar extends Migration
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
            'gambar' => [
                'type' => 'TEXT',
            ],
            'bbm' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'transmisi' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'kursi' => [
                'type' => 'VARCHAR',
                'constraint' => 2,
            ],
            'kecepatan' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'status' => [
                'type' => 'ENUM',
                'constraint' => ['0', '1'],
            ],
            'kategori' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'updated_at' => [
                'type' => 'DATETIME',
            ],
            'created_at' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('cars');

    }

    public function down()
    {
        $this->forge->dropTable('cars');

    }
}
