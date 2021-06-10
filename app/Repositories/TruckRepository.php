<?php

namespace App\Repositories;

use App\Models\Order;
use App\Truck;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class OrderRepository
 * @package App\Repositories
 * @version August 31, 2019, 11:11 am UTC
 *
 * @method Order findWithoutFail($id, $columns = ['*'])
 * @method Order find($id, $columns = ['*'])
 * @method Order first($columns = ['*'])
 */
class TruckRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'driver_id',
        'market_id',
        'capacity',
        'name',
        'reg_number',
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Truck::class;
    }
}
