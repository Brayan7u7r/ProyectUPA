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
        'Fk_tblAspirante' => 'required|is_valid_aspirante',
        'Fk_tblVacante' => 'required'
    ];

    protected $validationMessages   = [
        'Fk_tblAspirante' => [
            'is_valid_aspirante' => 'Este aspirante no existe.'
        ]
    ];

    protected $skipValidation = false;

    public function PostulacionesByAspirantes($aspiranteId = null)
    {
        $query = "CALL get_postulacionesByAspirante(".$aspiranteId.")";
        $query = $this->db->query($query);
        return $query->getResultObject();
    }
}