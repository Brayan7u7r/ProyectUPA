<?php namespace App\Models;

use CodeIgniter\Model;

class UsuarioModel extends Model
{
    protected $table            = 'tbl_usuario';
    protected $primaryKey       = 'Oid';
    
    protected $returnType       = 'array';
    protected $allowedFields    = [
        'Usu_usuario',
        'Usu_contrasenia',
        'Usu_correo',
        'Fk_dRazonsocial ',
        'Fk_dRol '
    ];

    protected $validationRules  = [
        'Usu_usuario' => 'required',
        'Usu_contrasenia' => 'required',
        'Usu_correo' => 'required',
        'Fk_dRazonsocial' => 'required',
        'Fk_dRol' => 'required'
    ];

    protected $skipValidation = false;

    public function login($username = null, $password = null){
        $query = "CALL login('".$username."','".$password."')";
        $query = $this->db->query($query);
        return $query->getResultObject();
    }

    public function getUsuarios(){
        $query = "CALL getUsuarios()";
        $query = $this->db->query($query);
        return $query->getResultArray();
    }


}