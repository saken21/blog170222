package data;

class Question {

	private static var _rests   :Array<Int>;
	private static var _selected:Array<Int>;

	private static var LIST:Array<String> = [

		'%E6%9C%9D%E3%81%8C%E5%BE%97%E6%84%8F%E3%81%A0',
		'%E5%A5%BD%E3%81%8D%E3%81%AA%E3%82%82%E3%81%AE%E3%81%AF%E6%9C%80%E5%BE%8C%E3%81%AB%E9%A3%9F%E3%81%B9%E3%82%8B%E3%82%BF%E3%82%A4%E3%83%97%E3%81%A0',
		'1%E6%97%A5%E4%BD%95%E3%82%82%E9%A3%9F%E3%81%B9%E3%81%AA%E3%81%8F%E3%81%A6%E3%82%82%E6%A1%88%E5%A4%96%E5%B9%B3%E6%B0%97%E3%81%A0',
		'%E3%82%B9%E3%83%A9%E3%83%A0%E3%83%80%E3%83%B3%E3%82%AF%E3%81%A7%E4%B8%80%E7%95%AA%E5%A5%BD%E3%81%8D%E3%81%AA%E3%82%AD%E3%83%A3%E3%83%A9%E3%81%AF%E4%B8%89%E4%BA%95%E3%81%A0',
		'3%E6%97%A5%E9%96%93%E8%B5%B7%E3%81%8D%E3%81%A6%E3%81%84%E3%81%9F%E3%81%93%E3%81%A8%E3%81%8C%E3%81%82%E3%82%8B',
		'%E3%81%84%E3%81%A4%E3%82%82%E8%83%8C%E7%AD%8B%E3%82%92%E6%B0%97%E3%81%AB%E3%81%97%E3%81%A6%E3%81%84%E3%82%8B',
		'%E9%8D%8B%E5%A5%89%E8%A1%8C%E3%81%A0',
		'%E3%81%99%E3%81%90%E6%89%8B%E3%82%92%E6%B4%97%E3%81%86%E3%82%AF%E3%82%BB%E3%81%8C%E3%81%82%E3%82%8B',
		'%E9%AB%AA%E5%9E%8B%E3%81%AB%E3%81%93%E3%81%A0%E3%82%8F%E3%82%8A%E3%81%8C%E3%81%82%E3%82%8B',
		'%E6%B0%B4%E6%B3%B3%E3%81%8C%E5%BE%97%E6%84%8F%E3%81%A0',
		'%E8%A8%88%E7%AE%97%E3%81%AF%E5%BE%97%E6%84%8F%E3%81%AA%E3%81%BB%E3%81%86%E3%81%A0',
		'%E6%97%85%E8%A1%8C%E3%81%AF%E8%A8%88%E7%94%BB%E3%82%92%E3%81%97%E3%81%A3%E3%81%8B%E3%82%8A%E7%B7%B4%E3%82%89%E3%81%AA%E3%81%84%E3%81%A8%E6%B0%97%E3%81%8C%E3%81%99%E3%81%BE%E3%81%AA%E3%81%84',
		'%E5%BE%97%E6%84%8F%E6%96%99%E7%90%86%E3%81%8C3%E3%81%A4%E4%BB%A5%E4%B8%8A%E3%81%82%E3%82%8B',
		'%E5%92%8C%E9%A3%9F%E6%B4%BE%E3%81%A0',
		'%E3%83%89%E3%83%A9%E3%82%B4%E3%83%B3%E3%83%9C%E3%83%BC%E3%83%AB%E3%81%A7%E4%B8%80%E7%95%AA%E5%A5%BD%E3%81%8D%E3%81%AA%E3%82%AD%E3%83%A3%E3%83%A9%E3%81%AF%E3%83%94%E3%83%83%E3%82%B3%E3%83%AD%E3%81%A0',
		'%26%239824%3BA%26%239829%3B2%26%239827%3B2%26%239829%3B4%26%239829%3B5%E3%80%81%E7%8B%99%E3%81%86%E3%81%AF%E3%83%95%E3%83%A9%E3%83%83%E3%82%B7%E3%83%A5%E3%81%A0',
		'%E5%B0%8F%E5%B3%B6%E3%82%88%E3%81%97%E3%81%8A%E3%81%AF%E6%84%8F%E5%A4%96%E3%81%A8%E5%A5%BD%E3%81%8D%E3%81%A0',
		'%E8%8A%B1%E7%B2%89%E7%97%87%E3%81%A0',
		'%E9%A2%A8%E9%82%AA%E3%82%92%E3%81%B2%E3%81%8D%E3%82%84%E3%81%99%E3%81%84',
		'%E6%98%A0%E7%94%BB%E3%81%AF%E3%82%A2%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3%E7%89%A9%E3%81%AB%E9%99%90%E3%82%8B',
		'%E6%97%A5%E6%9C%AC%E9%85%92%E3%81%8C%E5%A5%BD%E3%81%8D%E3%81%A0',
		'%E7%82%AD%E9%85%B8%E9%A3%B2%E6%96%99%E3%81%8C%E8%8B%A6%E6%89%8B%E3%81%A0',
		'%E7%A9%BA%E3%82%92%E9%A3%9B%E3%81%B6%E5%A4%A2%E3%82%92%E3%82%88%E3%81%8F%E8%A6%8B%E3%82%8B',
		'%E3%83%9D%E3%82%B9%E3%83%88%E3%81%8C%E8%B5%A4%E3%81%84%E3%81%AE%E3%81%AF%E5%BD%93%E7%84%B6%E3%81%A0',
		'%E4%BC%91%E3%81%BF%E3%81%AE%E6%97%A5%E3%81%AF%E3%81%9A%E3%81%A3%E3%81%A8%E5%AE%B6%E3%81%AB%E3%81%84%E3%82%8B',
		'%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%8C%E5%BE%97%E6%84%8F%E3%81%A0',
		'%E4%BA%BA%E8%A6%8B%E7%9F%A5%E3%82%8A%E3%81%A0',
		'%E5%A4%8F%E3%81%8C%E5%A5%BD%E3%81%8D%E3%81%A0',
		'%E6%B5%B7%E3%82%88%E3%82%8A%E5%B1%B1%E6%B4%BE%E3%81%A0',
		'%E8%B5%B7%E3%81%8D%E3%81%9F%E3%82%89%E3%82%B3%E3%83%BC%E3%83%92%E3%83%BC%E3%82%92%E9%A3%B2%E3%81%BE%E3%81%AA%E3%81%84%E3%81%A8%E3%82%84%E3%82%8B%E6%B0%97%E3%81%8C%E5%87%BA%E3%81%AA%E3%81%84',
		'%E8%B5%B7%E3%81%8D%E3%82%8B%E6%99%82%E9%96%93%E3%81%AF%E6%AF%8E%E6%97%A5%E5%90%8C%E3%81%98%E3%81%A0',
		'%E5%B0%8F%E9%8A%AD%E3%81%AF%E3%81%82%E3%81%BE%E3%82%8A%E6%8C%81%E3%81%A1%E3%81%9F%E3%81%8F%E3%81%AA%E3%81%84',
		'%E9%95%B7%E8%B2%A1%E5%B8%83%E6%B4%BE%E3%81%A0',
		'%E8%B2%A1%E5%B8%83%E3%81%AE%E3%81%8A%E6%9C%AD%E3%81%AF%E3%81%84%E3%81%A4%E3%81%A7%E3%82%82%E5%90%91%E3%81%8D%E3%81%8C%E6%8F%83%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B',
		'%E9%AB%98%E6%89%80%E6%81%90%E6%80%96%E7%97%87%E3%81%A0',
		'%E7%94%98%E3%81%84%E3%82%82%E3%81%AE%E3%81%8C%E5%A5%BD%E3%81%8D%E3%81%A0',
		'%E6%AF%8E%E6%97%A5%E3%81%8A%E7%B1%B3%E3%82%92%E9%A3%9F%E3%81%B9%E3%81%A6%E3%81%84%E3%82%8B'

	];

	/* =======================================================================
	Public - Init
	========================================================================== */
	public static function init():Void {

		_rests    = [];
		_selected = [];

		for (i in 0...LIST.length) {
			_rests.push(i);
		}
		
	}

		/* =======================================================================
		Public - Get List
		========================================================================== */
		public static function getList(num:Int):Array<String> {

			var results:Array<String> = [];

			for (i in 0...num) {
				results.push(get());
			}

			return results;
			
		}

		/* =======================================================================
		Public - Get Numbers
		========================================================================== */
		public static function getNumbers():Array<Int> {

			return _selected;
			
		}

	/* =======================================================================
	Get
	========================================================================== */
	private static function get():String {

		_rests = getShuffled(getShuffled(_rests));

		_rests.sort(function(a:Dynamic,b:Dynamic):Int {
			return Math.floor(Math.random() - .5);
		});

		var num:Int = _rests[0];

		_rests.shift();
		_selected.push(num);

		return StringTools.urlDecode(LIST[num]);
		
	}

	/* =======================================================================
	Get Shuffled
	========================================================================== */
	private static function getShuffled(array:Array<Int>):Array<Int> {

		var num  :Int;
		var value:Int;

		var counter:Int = array.length;

		for (i in 0...counter) {

			num   = Math.floor(Math.random() * counter--);
			value = array[num];

			array[num] = array[i];
			array[i]   = value;

		}

		return array;
		
	}

}