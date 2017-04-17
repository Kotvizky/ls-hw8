<?php

namespace HW8\Classes;

class Api
{

    public static function get($table,$id = null)
    {
        if ($table == 'products') {
            $className = 'Product';
        }
        if (class_exists(ucfirst($className))) {
            if ($id == null) {
                return $className::with('category')->get()->toJSON();
            } else {
                return $className::with('category')->find($id)->toJSON();
            }
        }
    }

}