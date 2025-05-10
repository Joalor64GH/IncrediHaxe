package;

class Main extends openfl.display.Sprite
{
	public function new()
	{
		super();
		#if FUTURE_POLYMOD
		PolymodHandler.reload();
		#end
		addChild(new FlxGame(1280, 720, PlayState, 60, 60, true, true));
	}
}