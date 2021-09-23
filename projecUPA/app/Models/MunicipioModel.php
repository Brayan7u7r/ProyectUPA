<?php namespace App\Models;

use CodeIgniter\Model;

class MunicipioModel extends Model
{
    protected $table            = 'd_tbl_municipio';
    protected $primaryKey       = 'Oid';

    protected $returnType       = 'array';
    protected $allowedFields    = ['Mun_descripcion'];

    protected $validationRules  = ['Mun_municipio' => 'required|alpha_space|max_lengh[30]'];
    
}