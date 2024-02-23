package;

typedef VersionJson = {
    var name:String;
    var version:Int;
    var date:Int;
    var folder:String;
    var looptime:Float;
    var bpm:Int;
    var totalFrame:Int;
    var nbpolo:Int;
    var nbloopbonus:Int;
    var bonusloopA:Bool;
    var bonusendloopA:Bool;
    var recMaxLoop:Int;
    var recMinLoop:Int;
    var recMinTime:Float;
    var spritepolo:String;
    var spritepicto:String;
    var colBck:FlxColor;
    var colTxt:FlxColor;
    var colBtn:FlxColor;
    var colBtnU:FlxColor;
    var colBar:FlxColor;
    var colBtnS:FlxColor;
    var animeArray:Array<AnimeArray>;
    var bonusArray:Array<BonusArray>;
}

typedef AnimeArray = {
    var name:String;
    var color:FlxColor;
    var uniqsnd:Bool;
}

typedef BonusArray = {
    var name:String;
    var src:String;
    var code:Array<Int>;
    var sound:String;
    var aspire:String;
}

class VersionData
{
    var curVersion:VersionJson;

    public function getVersion(ver:Int)
    {
        try {
            curVersion = Json.parse(Paths.file('asset-v' + ver + '/app.json'));
        } catch(e) {
            trace('$e');
        }
    }
}