<?php namespace App\Models;

use CodeIgniter\Model;

use function PHPSTORM_META\type;

class MunicipioModel extends Model
{
    protected $table            = 'd_tbl_municipio';
    protected $primeryKey       = 'Oid';

    protected $returnType       = 'array';
    protected $allowedFields    = ['Mun_descripcion'];

    protected $validationRules  = ['Mun_municipio' => 'required|alpha_space|max_lengh[30]'];
    
}