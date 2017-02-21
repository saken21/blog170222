package;

import js.jquery.JQuery;
import js.jquery.Event;
import data.*;
import display.*;

class Main {
	
	/* =======================================================================
	Constructor
	========================================================================== */
	public static function main():Void {

		Question.init();
		new JQuery('document').ready(init);
		
	}

	/* =======================================================================
	Init
	========================================================================== */
	private static function init(event:Event):Void {

		View.init(Question.getList(8));
		
	}

}