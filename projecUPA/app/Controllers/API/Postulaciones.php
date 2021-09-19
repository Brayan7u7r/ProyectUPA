<?php namespace App\Controllers\API;

use App\Models\AspiranteModel;
use App\Models\PostulacionModel;
use CodeIgniter\RESTful\ResourceController;

class Postulaciones extends ResourceController
{
    public function __construct() 
    {
        $this->model = $this->setModel(new PostulacionModel());
    }

    public function index()
    {
        $postulaciones = $this->model->findAll();
        return $this->respond($postulaciones);
    }

    public function create()
    {
        try 
        {
            $postulacion = $this->request->getJSON();
            if($this->model->insert($postulacion)):
                $postulacion->Oid = $this->model->insertID();
                return $this->respondCreated();
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;
        } catch (\Exception $e) {
            return $this->failServerError('Ha ocurrido un error en el servidor');
        }
    }

    public function edit($id = null)
    {
        try 
        {
            if($id == null)
                return $this->failValidationErrors('no se ha pasado un Id valido.');
            $postulacion = $this->model->find($id);

            if($postulacion == null)
                return $this->failNotFound('No se ha encontrado su postulación con Id: '.$id);
            
            return $this->respond($postulacion);
        } 
        catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function update($id = null)
    {
        try
        {
            if($id == null)
                return $this->failValidationErrors('no se ha pasado un Id valido');
            
            $postulacion_verified = $this->model->find($id);
            if($postulacion_verified == null)
                return $this->failNotFound('No se ha encontrado postulación con el id: '.$id);
            
            $postulacion = $this->request->getJSON();

            if($this->model->update($id, $postulacion)):
                $postulacion->Oid = $id;
                return $this->respondUpdated($postulacion);
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif;

        }
        catch(\Exception $e)
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function delete($id = null)
    {
        try 
        {
            if($id == null)
            {
                return $this->failValidationErrors('No se ha pasado un Id valido');
            }
            $postulacion_verified = $this->model->find($id);

            if($postulacion_verified == null)
            {
                return $this->failNotFound('No se ha encontrado su postulación.');
            }

            if($this->model->delete($id))
            {
                return $this->respondDeleted($postulacion_verified);
            }else
            {
                return $this->failServerError("No se ha podido eliminar el registro.");
            }
        } 
        catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }

    public function getPostulacionesByAspirante($id = null)
    {
        try 
        {
            $modelAspirante = new AspiranteModel();

            if($id == null)
                return $this->failValidationErrors("no se ha pasado un Id valido.");
            $aspirante = $modelAspirante->find($id);

            if($aspirante == null)
                return $this->failNotFound('No se ha encontrado un aspirante con el id: '.$id);

            $postulaciones = $this->model->PostulacionesByAspirantes($id);

            return $this->respond($postulaciones);
            
        } catch (\Exception $e) 
        {
            return $this->failServerError("Ha ocurrido un error en el servidor.");
        }
    }

}