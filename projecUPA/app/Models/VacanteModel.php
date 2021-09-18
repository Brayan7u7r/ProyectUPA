<?php namespace App\Models;

use CodeIgniter\Model;

class VacanteModel extends Model
{
    protected $table            = 'tbl_vacante';
    protected $primaryKey       = 'Oid';
    
    protected $returnType       = 'array';
    protected $allowedFields    = [

    ];
    
}