<?php namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
 
use App\Models\ModelUser;
 
class User extends ResourceController
{
    protected $format       = 'json';
    protected $modelName    = 'App\Models\ModelUser';
 
    public function __construct()
    {
        $this->user = new ModelUser;
    }
 
    public function index()
    {
        $data = $this->user->getUser();
 
        foreach ($data as $row) { 
 
            $user[] = [
                'id' => intval($row->id),
                'username' => $row->username,
                'fullname' => $row->fullname,
                'phone' => $row->phone,
                'password' => $row->password 
            ];
            
        }
        return $this->respond($user, 200);   
    }

    public function create()
    {
        $username   = $this->request->getPost('username');
        $password   = $this->request->getPost('password');
        $fullname   = $this->request->getPost('fullname');
        $phone      = $this->request->getPost('phone');
        
        $data = [
            'username' => $username,
            'password' => $password,
            'fullname' => $fullname,
            'phone' => $phone
        ];
        
        $simpan = $this->model->createUser($data);
        
        if($simpan){
            $msg = ['message' => 'Created user successfully'];
            $response = [
                'status' => 200,
                'error' => false,
                'data' => $msg,
            ];
            return $this->respond($response, 200);
        }
    }

    public function getUserBy($id)
    {
        $data = $this->user->getUser($id);
    
        $user = [
            'id' => intval($data['id']),
            'username' => $data['username'],
            'fullname' => $data['fullname'],
            'phone' => $data['phone'],
            'password' => $data['password']
        ];       
        return $this->respond($user, 200);   
    }
}