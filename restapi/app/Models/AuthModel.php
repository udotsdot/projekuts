<?php

namespace App\Models;

use CodeIgniter\Model;

class AuthModel extends Model
{
    protected $table = 'users';

    public function getValidateEmail($email)
    {
        $result = $this->where('email', $email)
            ->limit(1)
            ->first();

        if ($result) {
            return $result['id'];
        }

        return false;
    }

    public function login($data)
    {
        $result = $this->where('email', $data['email'])
            ->limit(1)
            ->first();

        if ($result) {
            if (password_verify($data['password'], $result['password'])) {
                return $result['id'];
            } else {
                return false;
            }
        }

        return false;
    }

}
