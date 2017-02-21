package display;

import js.jquery.JQuery;
import js.jquery.Event;

class View {

	private static var _jParent:JQuery;
	
	/* =======================================================================
	Public - Init
	========================================================================== */
	public static function init(questions:Array<String>):Void {

		_jParent = new JQuery('#ks170222').html(getHTML(questions));
		
	}

	/* =======================================================================
	Get HTML
	========================================================================== */
	private static function getHTML(questions:Array<String>):String {

		return '
		<section class="q">' + getQuestionsHTML(questions) + '</section>
		<ul class="a">
			<li class="y">YES</li>
			<li class="n">NO</li>
		</ul>';
		
	}

	/* =======================================================================
	Get Questions HTML
	========================================================================== */
	private static function getQuestionsHTML(questions:Array<String>):String {

		var html:String = '<ul>';

		for (i in 0...questions.length) {
			html += '<li class="q$i">' + questions[i] + '</li>';
		}

		return '$html</ul>';
		
	}

}