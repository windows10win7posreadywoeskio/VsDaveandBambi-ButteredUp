package;
#if sys
import sys.io.File;
import sys.io.Process;
#end
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

/**
 * scary!!!
 */
class fucferfjrf extends FlxState
{
	
	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER)
		{
			endIt();
		}
		
	}
	
	public function endIt()
	{
        ClientPrefs.youDoneFuckedUp++;
        System.exit(0);
	}
	