<?php namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
 
use App\Models\ModelCar;

class Car extends ResourceController
{
    protected $format       = 'json';
    protected $modelName    = 'App\Models\ModelCar';

    public function __construct()
    {
        helper('form');
        $this->car = new ModelCar;
    }

    public function index()
    {
        $data = $this->car->getCar();

        foreach ($data as $row) { 

            $car[] = [
                'id' => intval($row->id),
                'name' => $row->name,
                'type' => $row->type,
                'price' => $row->price,
                'speed' => $row->speed, 
                'gas' => $row->gas,
                'class' => $row->class,
                'seat' => $row->seat,
                'image' => $row->image,
            ];
            
        }
        return $this->respond($car, 200);   
    }

    public function getCarBy($id)
    {
        $data = $this->car->getCar($id);
    
        $car = [
            'id' => intval($data['id']),
            'name' => $data['name'],
            'type' => $data['type'],
            'price' => $data['price'],
            'speed' => $data['speed'],
            'gas' => $data['gas'],
            'class' => $data['class'],
            'seat' => $data['seat'],
            'image' => $data['image']
        ];       
        return $this->respond($car, 200);   
    }

}