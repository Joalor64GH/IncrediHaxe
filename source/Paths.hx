package;

import flixel.graphics.frames.FlxAtlasFrames;

class Paths
{
	inline public static final SOUND_EXT = #if !html5 "ogg" #else "mp3" #end;

	public static function file(file:String)
		return 'assets/$file';

	inline static public function txt(key:String)
		return file('data/$key.txt');

	inline static public function xml(key:String)
		return file('data/$key.xml');

	inline static public function sound(key:String)
		return file('sounds/$key.$SOUND_EXT');

	inline static public function soundRandom(key:String, min:Int, max:Int)
		return file('sounds/$key${FlxG.random.int(min, max)}.$SOUND_EXT');

	inline static public function music(key:String)
		return file('music/$key.$SOUND_EXT');

	inline static public function image(key:String)
		return file('images/$key.png');

	inline static public function font(key:String)
		return file('fonts/$key');

	inline static public function getSparrowAtlas(key:String)
		return FlxAtlasFrames.fromSparrow(image(key), file('images/$key.xml'));

	inline static public function getPackerAtlas(key:String)
		return FlxAtlasFrames.fromSpriteSheetPacker(image(key), file('images/$key.txt'));
}  