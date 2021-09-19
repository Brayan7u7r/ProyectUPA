<?php namespace App\Models\CustomRules;

use App\Models\AspiranteModel;

class MyCustomRules
{
    public function is_valid_aspirante(int $id):bool
    {
        $model = new AspiranteModel();
        $aspirante = $model->find($id);

        return $aspirante == null ? false : true;
    }
}