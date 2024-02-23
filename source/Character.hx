package;

typedef CharJson = {
    var animeName:String;
    var percentageMax:Float;
    var totalFrame:Int;
    var width:Int;
    var height:Int;
    var headHeight:Int;
    var arrayFrame:Array<AnimArray>;
}

typedef AnimArray = {
    var xPos:Float;
    var yPos:Float;
    var xMovement:Float;
    var yMovement:Float;
}

class Character extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x, y);
    }
}