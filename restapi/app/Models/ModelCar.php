<?php namespace App\Models;
 
use CodeIgniter\Model;
 
class ModelCar extends Model
{
    protected $table = 'cars';

    public function getCar($id = false)
    {
        if($id === false){
            return $this->db->table($this->table)->get()->getResult();
        } else {
            return $this->getWhere(['id' => $id])->getRowArray();
        }  
    }

    public function insertCar($data)
    {
        return $this->db->table($this->table)->insert($data); 
    }
}

