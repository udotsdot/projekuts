<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TableCategory extends Migration
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
            'nama_kategori' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
            ],
            'status' => [
                'type' => 'ENUM',
                'constraint' => ['0', '1'],
            ],
            'updated_at' => [
                'type' => 'DATETIME',
            ],
            'created_at' => [
                'type' => 'DATETIME',
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('categories');

    }

    public function down()
    {
        $this->forge->dropTable('categories');

    }
}
