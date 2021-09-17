<?php namespace App\Controllers\API;

use App\Models\AspiranteModel;
use CodeIgniter\RESTful\ResourceController;

class Aspirentes extends ResourceController
{
    public function __construct() 
    {
        $this->model = $this->setModel(new AspiranteModel());
    }

    public function index()
    {
        $aspirantes = $this->model->findAll();
        return $this->respond();
    }
}