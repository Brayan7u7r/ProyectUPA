<?php namespace App\Models;

use CodeIgniter\Model;

class HvModel extends Model
{
    protected $table            = 'tbl_hojadevida';
    protected $primaryKey       = 'Oid';

    protected $returnType       = 'array';
    protected $allowedFields    = [
        'Fk_tblAspirante',
        'Hv_institucion_bachiller',
        'Hv_ciudad_bachiller',
        'Hv_año_bachiller',
        'Hv_tipo_titulo_bachiller',
        'Hv_Nombre_completo_padre',
        'Hv_Nombre_completo_madre',
        'Hv_Nombre_completo_conyugue',
        'Hv_edad_padre',
        'Hv_edad_madre',
        'Hv_edad_conyugue',
        'Hv_nivel_academico_padre',
        'Hv_nivel_academico_madre',
        'Hv_nivel_academico_conyugue',
        'Hv_ocupacion_padre',
        'Hv_ocupacion_madre',
        'Hv_ocupacion_conyugue',
        'Hv_dependencia_padre',
        'Hv_dependencia_madre',
        'Hv_dependencia_conyugue',
        'Hv_pregunta_general_familia',
        'Hv_pregunta_general_centrotrabajo',
        'Hv_empresa_actual',
        'Hv_ciudad_actual',
        'Hv_nombre_jefe_actual',
        'Hv_cargo_jefe_actual',
        'Hv_telefono_jefe_actual',
        'Hv_tiempo_laborado_actual',
        'Hv_cargo_actual',
        'Hv_salario_actual',
        'Hv_motivo_retiro_actual',
        'Hv_empresa_anterior',
        'Hv_ciudad_anterior',
        'Hv_nombre_jefe_anterior',
        'Hv_cargo_jefe_anterior',
        'Hv_telefono_jefe_anterior',
        'Hv_tiempo_laborado_anterior',
        'Hv_cargo_anterior',
        'Hv_salario_anterior',
        'Hv_motivo_retiro_anterior',
        'Hv_empresa_trasanterior',
        'Hv_ciudad_trasanterior',
        'Hv_nombre_jefe_trasanterior',
        'Hv_cargo_jefe_trasanterior',
        'Hv_telefono_jefe_trasanterior',
        'Hv_tiempo_laborado_trasanterior',	
        'Hv_cargo_trasanterior',
        'Hv_salario_trasanterior',
        'Hv_motivo_retiro_trasanterior',
        'Hv_pregunta_general_upa'
    ];  
}