<?php namespace App\Controllers\API;

use App\Models\UsuarioModel;
use CodeIgniter\RESTful\ResourceController;

class Usuarios extends ResourceController
{
    public function __construct() 
    {
        $this->model = $this->setModel(new UsuarioModel());
    }

    public function index()
    {
       $usuarios = $this->model->findAll();
       return $this->respond($usuarios);
    }

    public function create()
    {
        try 
        {
            $usuario = $this->request->getJSON();
            if($this->model->insert($usuario)):
                $usuario->Oid = $this->model->insertID();
                return $this->respondCreated();
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;
        } catch (\Exception $e) {
            return $this->failServerError('Ha ocurrido un error en el servidor');
        }
    }
}