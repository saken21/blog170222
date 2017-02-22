package display;

import js.Browser;
import js.jquery.JQuery;
import js.jquery.Event;
import data.Result;

class View {

	private static var _jParent   :JQuery;
	private static var _jQuestions:JQuery;
	private static var _current   :Int;
	
	/* =======================================================================
	Public - Init
	========================================================================== */
	public static function init(questions:Array<String>):Void {

		_jParent    = new JQuery('#ks170222').html(getHTML(questions));
		_jQuestions = _jParent.find('.q').find('li');
		_current    = 0;

		_jParent.find('.a').find('li').on('click',onAnswer);
		
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

	/* =======================================================================
	On Answer
	========================================================================== */
	private static function onAnswer(event:Event):Void {

		if (_jParent.hasClass('wait')) {

			Browser.window.alert(StringTools.urlDecode('%E9%80%A3%E6%89%93%E3%81%AF%E7%A6%81%E6%AD%A2%E3%81%A7%E3%81%99%EF%BC%81'));
			return;

		}

		Result.setAnswer(new JQuery(event.target).prop('class') == 'y' ? 1 : -1);

		_jParent.addClass('wait');
		_jQuestions.eq(_current).hide();

		var jNext:JQuery = _jQuestions.eq(++_current);

		if (jNext.length == 0) {

			showResult();
			return;

		}

		jNext.fadeIn(300,function():Void {
			_jParent.removeClass('wait');
		});
		
	}

	/* =======================================================================
	Show Result
	========================================================================== */
	private static function showResult():Void {

		_jParent.hide().empty().html(Result.getHTML()).fadeIn(500);
		
	}

}