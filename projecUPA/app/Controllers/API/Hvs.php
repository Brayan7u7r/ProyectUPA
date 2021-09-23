<?php namespace App\Controllers\API;

use App\Models\HvModel;
use CodeIgniter\RESTful\ResourceController;

class Hvs extends ResourceController
{
    public function __construct() {
        $this->model = $this->setModel(new HvModel());
    }

    public function index()
    {
        $hvs = $this->model->findAll();
        return $this->respond($hvs);
    }

    public function create()
    {
        try {
            $hv = $this->request->getJSON();
            if($this->model->insert($hv)):
                $hv->Oid = $this->model->insertID();
                return $this->respondCreated();
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;
        } catch (\Exception $e) {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function edit($id = null)
    {
        try 
        {
            if($id == null)
                return $this->failValidationErrors('No se ha pasado un ID valido');
            $hv = $this->model->find($id);

            if($hv == null)
                return $this->failNotFound('No se ha encontrado su hoja de vida.');
            
            return $this->respond($hv);
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
                return $this->failValidationErrors('No se ha pasado un ID valido');    
            $hv_verified = $this->model->find($id);
            if($hv_verified == null)
                return $this->failNotFound('Hoj de vida no encontrada.');
            
            $hv = $this->request->getJSON();

            if($this->model->update($id, $hv)):
                $hv->Oid = $id;
                return $this->failValidationErrors($this->model->validation->listErrors());
            else:
                return $this->failValidationErrors('Ha ocurrido un error en el servidor.');
            endif;

        } catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor');
        }
    }

    public function delete($id = null)
    {
        try 
        {
            if($id == null)
            {
                return $this->failValidationErrors('No se ha pasado un ID valido');
            }    
            $hv_verified = $this->model->find($id);

            if($hv_verified == null){
                return $this->respondDeleted($hv_verified);
            }else{
                return $this->failServerError("No se ha podido eliminar el registro");
            }
        } catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function getHvByAspirante($id = null)
    {
        try {
            //code...
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}