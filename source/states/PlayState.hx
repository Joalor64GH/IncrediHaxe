package states;

class PlayState extends FlxState
{
    public static var instance:PlayState = null;

    var hudCam:FlxCamera;

    override public function create()
    {
        super.create();

        instance = this;

        var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.WHITE);
        add(bg);

        FlxG.camera.zoom = 1;
		hudCam = new FlxCamera();
		hudCam.bgColor.alpha = 0;
		hudCam.zoom = 1;
		FlxG.cameras.add(hudCam, false);

		var lowerBar:FlxSprite = new FlxSprite(0, 0).makeGraphic(1280, 185, 0xff202020, false);
		lowerBar.screenCenter(XY);
		lowerBar.y = FlxG.height - lowerBar.height;
		lowerBar.cameras = [hudCam];
		add(lowerBar);

		var upperBar:FlxSprite = new FlxSprite(0, 0).makeGraphic(1280, 100, 0xff202020, false);
		upperBar.screenCenter(X);
		upperBar.cameras = [hudCam];
		add(upperBar);

        var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
        text.screenCenter();
        text.color = FlxColor.BLACK;
        add(text);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}