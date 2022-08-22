
class HxExample2 extends godot.Node {
    public function new() {
        super();
    }

    //@:expose
    public static function test() {
        trace("test called");
    }

    @:expose
    public function simple_func():Bool {
        trace("simple_func called");
        return true;
    }

    @:expose
    public function simple_add(_a:Int, _b:Float, _bool:Bool):Float {
        trace('simple_add called ($_a, $_b, $_bool)');
        return _a + _b;
    }

    override function _process(_delta:Float):Void {
        //trace('_process($_delta) called');
        trace(simple_add(10, _delta, false));
    }

    /*
    override function _ready():Void {
        trace("_ready called");
        //simple_func();
    }

    

    override function _enter_tree():Void {
        trace("_enter_tree called");
    }

    override function _exit_tree():Void {
        trace("_exit_tree called");
    }

    
    @:expose
    public static function test_static(_a:Int, _b:Int):Int {
        return _a + _b;
    }


    @:expose
    public static function test_static2():Void {
        trace("test_static2 called");
    }
    */
    
}