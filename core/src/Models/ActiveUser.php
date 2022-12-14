<?php namespace EvolutionCMS\Models;

use Illuminate\Database\Eloquent;

/**
 * EvolutionCMS\Models\ActiveUser
 *
 * @property string $sid
 * @property int $internalKey
 * @property string $username
 * @property int $lasthit
 * @property string $action
 * @property int $id
 *
 * @method static \Illuminate\Database\Eloquent\Builder|\EvolutionCMS\Models\ActiveUser locked($action, $id = null, $userId = null)
 *
 * @mixin \Eloquent
 */
class ActiveUser extends Eloquent\Model
{
    protected $primaryKey = 'sid';
    public $incrementing = false;
    public $timestamps = false;

    protected $casts = [
        'internalKey' => 'int',
        'lasthit'     => 'int',
        'id'          => 'int'
    ];

    protected $fillable = [
        'internalKey',
        'username',
        'lasthit',
        'action',
        'id'
    ];
}
