
package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x, y);
        makeGraphic(16, 16, FlxColor.BLUE);
        drag.x = drag.y = 800;
    }

    var LEFT = FlxG.keys.pressed.LEFT;
    var RIGHT = FlxG.keys.pressed.RIGHT;
    var UP = FlxG.keys.pressed.UP;
    var DOWN = FlxG.keys.pressed.DOWN;

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        velocity.x = 0;
        velocity.y = 0;

        if (LEFT)
        {
            velocity.x = -200;
        }
        else if (RIGHT)
        {
            velocity.x = 200;
        }

        if (UP)
        {
            velocity.y = -200;
        }
        else if (DOWN)
        {
            velocity.y = 200;
        }
    }
}