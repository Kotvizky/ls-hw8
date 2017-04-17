<?php
require_once (dirname(__DIR__) . "/vendor/autoload.php");

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$connection = [
    'driver'    => 'mysql',
    'host'      => 'localhost',
    'database'  => 'hw7',
    'username'  => 'root',
    'password'  => '',
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',
];


$capsule->addConnection($connection);

// Make this Capsule instance available globally via static methods... (optional)
$capsule->setAsGlobal();

// Setup the Eloquent ORM... (optional; unless you've used setEventDispatcher())
$capsule->bootEloquent();

class Product extends Illuminate\Database\Eloquent\Model {
    protected $guarded = ['id'];
//protected $fillable = ['name', 'password'];
//    protected $table = "user";
    protected $primaryKey = "id";
    public $timestamps = false;

    public function category()
    {
        return $this->hasOne('Category', 'id','category_id');
    }

    public static function findRest($id)
    {
        return self::with('category')->find($id);
    }


}
class Category extends Illuminate\Database\Eloquent\Model {
    public $timestamps = false;
}
