<?php namespace App\Models;

use CodeIgniter\Model;

class AspiranteModel extends Model
{
    protected $table            = 'tbl_aspirante';
    protected $primaryKey       = 'Oid';

    protected $returnType       = 'array';
    protected $allowedFields    = [
        'Asp_nombrecompleto',
        'Asp_documento',
        'Asp_lugarexpedicion',
        'Asp_fechanacimiento',
        'Asp_fechaexpedicion',
        'Asp_direccion',
        'Asp_correo',
        'Asp_telefono',
        'Asp_estadocivil',
        'Asp_sexo',
        'Fk_dMunicipio'];

    protected $validationRules  = [
        'Asp_nombrecompleto'    => 'required|alpha_space|min_lenght[10]|max_lenght[90]',
        'Asp_documento'    => 'required|alpha_space|min_lenght[5]|max_lenght[20]',
        'Asp_lugarexpedicion'    => 'required|alpha_space|max_lenght[150]',
        'Asp_fechanacimiento'    => 'required|',
        'Asp_fechaexpedicion'    => 'required|',
        'Asp_direccion'    => 'required|alpha_space|min_lenght[10]|max_lenght[150]',
        'Asp_correo'    => 'required|valid_email',
        'Asp_telefono'    => 'required|alpha_space|min_lenght[10]|max_lenght[90]',
        'Asp_estadocivil'    => 'required|alpha_space|min_lenght[10]|max_lenght[90]',
        'Asp_sexo'    => 'required|alpha_space|min_lenght[1]|max_lenght[1]'
    ];
   /* 
    protected $validationMessages = [
        'Asp_nombrecompleto'    => [
            'alpha_space' => 'Debes ingresar un nombre valido'
        ]
    ];

    protected $skipValidation = false;
    */

}

