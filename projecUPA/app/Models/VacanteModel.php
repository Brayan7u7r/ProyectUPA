<?php namespace App\Models;

use CodeIgniter\Model;

class VacanteModel extends Model
{
    protected $table            = 'tbl_vacante';
    protected $primaryKey       = 'Oid';
    
    protected $returnType       = 'array';
    protected $allowedFields    = [
        'Vac_fechafinca',
        'Vac_cargo',
        'Vac_img_referencia',
        'Vac_lugar_vacante',
        'Vac_descripcion_requisitos',
        'Fk_TblUsuario'
    ];
    
    protected $validationRules = [
        'Vac_fechafinca' => 'required',
        'Vac_cargo' => 'required',
        'Vac_img_referencia' => 'required',
        'Vac_lugar_vacante' => 'required',
        'Vac_descripcion_requisitos' => 'required',
        'Fk_TblUsuario' => 'required'
    ];
}