package data;

class Question {

	private static var _rests   :Array<Int>;
	private static var _selected:Array<Int>;

	private static var LIST:Array<String> = [

		'朝が得意だ',
		'好きなものは最後に食べるタイプだ',
		'1日何も食べなくても案外平気だ',
		'スラムダンクで一番好きなキャラは三井だ',
		'3日間起きていたことがある',
		'いつも背筋を気にしている',
		'鍋奉行だ',
		'すぐ手を洗うクセがある',
		'髪型にこだわりがある',
		'水泳が得意だ',
		'計算は得意なほうだ',
		'旅行は計画をしっかり練らないと気がすまない',
		'得意料理が3つ以上ある',
		'和食派だ',
		'ドラゴンボールで一番好きなキャラはピッコロだ',
		'♠A♥2♣2♥4♥5、狙うはフラッシュだ',
		'小島よしおは意外と好きだ',
		'花粉症だ',
		'風邪をひきやすい',
		'映画はアクション物に限る',
		'日本酒が好きだ',
		'炭酸飲料が苦手だ',
		'空を飛ぶ夢をよく見る',
		'ポストが赤いのは当然だ',
		'休みの日はずっと家にいる',
		'ゲームが得意だ',
		'人見知りだ',
		'夏が好きだ',
		'海より山派だ',
		'起きたらコーヒーを飲まないとやる気が出ない',
		'起きる時間は毎日同じだ',
		'小銭はあまり持ちたくない',
		'長財布派だ',
		'財布のお札はいつでも向きが揃っている',
		'高所恐怖症だ',
		'甘いものが好きだ',
		'毎日お米を食べている'

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
	Get
	========================================================================== */
	private static function get():String {

		_rests = getShuffled(_rests);

		_rests.sort(function(a:Dynamic,b:Dynamic):Int {
			return Math.floor(Math.random() - .5);
		});

		var num:Int = _rests[0];

		_rests.shift();
		_selected.push(num);

		return LIST[num];
		
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