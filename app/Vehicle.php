<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
/**
 * Class DeliveryAddress
 * @package App\Models
 * @version December 6, 2019, 1:57 pm UTC
 *
 * @property \App\Models\User user
 * @property string driver
 * @property string registration
 * @property string color
 * @property string model
 * @property integer user_id
 */
class Vehicle extends Model
{

    public $table = 'vehicles';

    public $fillable = [
        'color',
        'model',
        'registration',
        'driver',
        'user_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'color' => 'string',
        'model' => 'string',
        'registration' => 'string',
        'driver' => 'string',
        'user_id' => 'integer'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class, 'user_id', 'id');
    }
}
