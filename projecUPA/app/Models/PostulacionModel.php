<?php namespace App\Models;

use CodeIgniter\Model;

class PostulacionModel extends Model
{
    protected $table            = 'tbl_postulacion';
    protected $primaryKey       = 'Oid';
    
    protected $allowedFields    = [
        'Pos_fecha',
        'Pos_estado',
        'Fk_tblAspirante',
        'Fk_tblVacante'
    ];

    protected $validationRules  = [
        'Pos_fecha' => 'required',
        'Pos_estado' => 'required',
        'Fk_tblAspirante' => 'required',
        'Fk_tblVacante' => 'required'
    ];
}