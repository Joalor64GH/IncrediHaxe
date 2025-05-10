package backend;

typedef VersionJson = {
    var name:String;
    var version:Int;
    var date:String;
    var folder:String;
    var looptime:Int;
    var bpm:Float;
    var totalFrame:Int;
    var nbpolo:Int;
    var bonusloopA:Bool;
    var bonusendloopA:Bool;
    var colors:Array<String>;
    var animeArray:Array<AnimeArray>;
    var bonusArray:Array<BonusArray>;
}

typedef AnimeArray = {
    var name:String;
    var color:String;
    var uniqsnd:Bool;
}

typedef BonusArray = {
    var name:String;
    var src:String;
    var code:Array<Int>;
    var sound:String;
    var ?aspire:String;
    var ?expire:String;
    var loop:Int;
}

class VersionData
{
    public static var curVersion:VersionJson;

    public function getVersion(ver:Int)
    {
        try {
            curVersion = Json.parse(Paths.file('asset-v' + ver + '/app.json'));
        } catch(e) {
            trace('$e');
        }
    }
}