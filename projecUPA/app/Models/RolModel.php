<?php namespace App\Models;

use CodeIgniter\Model;

class RolModel extends Model
{
    protected $table            = 'tbl_rol';
    protected $primaryKey       = 'Oid';
    protected $allowdFields     = ['Rol_descripcion'];

    protected $validationRules  = ['Rol_descripcion' => 'required'];
    protected $skipValidation   = false;
}