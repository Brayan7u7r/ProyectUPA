<?php namespace App\Controllers\API;

use App\Models\MunicipioModel;
use CodeIgniter\RESTful\ResourceController;

class Municipios extends ResourceController
{
    public function __construct() {
        $this->model = $this->setModel(new MunicipioModel());
    }

    public function index()
    {
        $municipios = $this->model->findAll();
        return $this->respond($municipios);
    }
}