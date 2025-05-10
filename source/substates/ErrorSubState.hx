package substates;

class ErrorSubState extends FlxSubState
{
    public function new(error:String)
    {
        super();
        trace(error);
    }
}