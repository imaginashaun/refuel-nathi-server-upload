<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DeliveryAddress
 * @package App\Models
 * @version December 6, 2019, 1:57 pm UTC
 *
 * @property \App\Models\Driver driver
 * @property \App\Models\Market market

 * @property double capacity
 * @property string name
 * @property string reg_number
 * @property integer market_id
 * @property integer driver_id
 */

class Truck extends Model
{
    public $table = 'trucks';

    public $fillable = [
        'capacity',
        'name',
        'reg_number',
        'driver_id',
        'market_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */

    protected $casts = [
        'capacity' => 'double',
        'name' => 'string',
        'reg_number' => 'string',
        'driver_id' => 'integer',
        'user_id' => 'integer'
    ];
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function driver()
    {
        return $this->belongsTo(\App\Models\Driver::class, 'driver_id', 'id');
    }

    public function market()
    {
        return $this->belongsTo(\App\Models\Market::class, 'market_id', 'id');
    }
}
