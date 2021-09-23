<?php namespace App\Models;

use CodeIgniter\Model;

class UsuarioModel extends Model
{
    protected $table            = 'tb_usuario';
    protected $primaryKey       = 'Oid';
    
    protected $allowedFields    = [
        'Usu_usuario',
        'Usu_contrasenia',
        'Usu_correo',
        'Fk_dRazonsocial',
        'Fk_dRol'
    ];

    protected $validationRules  = [
        'Usu_usuario' => 'required',
        'Usu_contrasenia' => 'required',
        'Usu_correo' => 'required',
        'Fk_dRazonsocial' => 'required',
        'Fk_dRol' => 'required'
    ];

    protected $skipValidation = false;
}