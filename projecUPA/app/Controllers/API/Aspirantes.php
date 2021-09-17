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
    
    public function create()
    {
        try 
        {
            $aspirante = $this->request->getJSON();
            if($this->model->insert($aspirante)):
                $cliente->Oid = $this->model->insertID();
                return $this->respondCreated();
            else:
                return $this->failValidationError($this->model->validation->listErrors());
            endif;
        } catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor');
        }
    }

    public function edit($id = null)
    {
        try 
        {
           if($id == null)
                return $this->failValidationError("no se ha pasa un Id valido.");
            $aspirante = $this->model->find($id);

            if($aspirante == null)
                return $this->failNotFound('No se ha encontrado un aspirante con el id: '.$id.);

            return $this->respond($aspirante);
            
        } catch (\Exception $e) 
        {
            return $this->failServerError("Ha ocurrido un error en el servidor.");
        }
    }

    public function update($id = null)
    {
        try 
        {
           if($id == null)
                return $this->failValidationError("no se ha pasa un Id valido.");
            
            $aspirante_verified = $this->model->find($id);
              if($aspirante_verified == null)
                return $this->failNotFound('No se ha encontrado un aspirante con el id: '.$id.);
            
            $aspirante = $this->request->getJSON();
            
            if($this->model->update($id, $aspirante));
                $aspirante->Oid = $id;
                return $this->respondUpdated($aspirante);
            else:
                return $this->failValidationError($this->model->validation->listErrors());
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
                return $this->failValidationError("no se ha pasado un Id valido.");
            
            $aspirante_verified = $this->model->find($id);
              if($aspirante_verified == null)
                return $this->failNotFound('No se ha encontrado un aspirante con el id: '.$id.);
            
            if($this->model->delete($id));
                return $this->respondDeleted($aspirante_verified);
            else:
                return $this->failServerError("No se ha podido eliminar el registro.");
            endif;

        } catch (\Exception $e) 
        {
            return $this->failServerError("Ha ocurrido un error en el servidor.");
        }        
    }

}
