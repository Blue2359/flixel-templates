package backend;

/**
 * Provides utility methods for game objects and etc.
 */
@:publicFields class Utils
{
    /**
     * Scale an `FlxSprite` instance by fixed aspect ratio.
     * @param spr `FlxSprite` instance to scale.
     * @param ratio The scale amount to apply.
     * @param updHitbox Whether to call `spr.updateHitbox()`.
     * @return New applied scale.
     */
    static function applyScale(spr:FlxSprite, ratio:Float, updHitbox:Bool = true):FlxPoint
    {
        spr.scale.x = spr.scale.y = ratio;
        if (updHitbox) spr.updateHitbox();
        return spr.scale;
    }
}