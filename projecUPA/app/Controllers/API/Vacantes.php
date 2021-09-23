<?php namespace App\Controllers\API;

use App\Models\VacanteModel;
use CodeIgniter\RESTful\ResourceController;

Header('Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE'); //method allowed

class Vacantes extends ResourceController
{
    public function __construct() 
    {
        $this->model = $this->setModel(new VacanteModel());
    }

    public function index()
    {
        $vacantes = $this->model->findAll();
        return $this->respond($vacantes);
    }

    public function create()
    {
        try 
        {
            $vacantes = $this->request->getJSON();
            if($this->model->insert($vacantes)):
                $vacantes->Oid = $this->model->insertID();
                return $this->respondCreated();
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;

        } catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function edit($id = null){
        try {
            if($id == null)
                return $this->failValidationErrors('No se ha pasado un Id valido.');
            
            $vacantes = $this->model->find($id);
            
            if($vacantes == null)
                return $this->failNotFound('No se ha encontrado una vacante con el ID: '.$id);
            return $this->respond($vacantes);

        } catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function update($id = null)
    {
        try 
        {
           if($id == null)
                return $this->failValidationErrors("no se ha pasa un Id valido.");
            
            $vacante_verified = $this->model->find($id);
              if($vacante_verified == null)
                return $this->failNotFound('No se ha encontrado vacante con el id: '.$id);
            
            $vacante = $this->request->getJSON();
            
            if($this->model->update($id, $vacante)):
                $vacante->Oid = $id;
                return $this->respondUpdated($vacante);
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;

        } catch (\Exception $e) 
        {
            return $this->failServerError("Ha ocurrido un error en el servidor.");
        }
    }

    public function delete($id = null)
    {
        try 
        {
           if($id == null)
           {
                return $this->failValidationErrors("no se ha pasado un Id valido.");
           }
            $vacante_verified = $this->model->find($id);

            if($vacante_verified == null)
            {
                return $this->failNotFound('No se ha encontrado un aspirante con el id: '.$id);
            }
            
            if($this->model->delete($id)){
                return $this->respondDeleted($vacante_verified);
            }
            else{
                return $this->failServerError("No se ha podido eliminar el registro.");
            }
            

        } catch (\Exception $e) 
        {
            return $this->failServerError("Ha ocurrido un error en el servidor.");
        }        
    }

}