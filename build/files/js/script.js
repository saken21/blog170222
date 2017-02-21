// Generated by Haxe 3.3.0
(function () { "use strict";
var Main = function() { };
Main.main = function() {
	data_Question.init();
	$("document").ready(Main.init);
};
Main.init = function(event) {
	display_View.init(data_Question.getList(8));
};
var data_Question = function() { };
data_Question.init = function() {
	data_Question._rests = [];
	data_Question._selected = [];
	var _g1 = 0;
	var _g = data_Question.LIST.length;
	while(_g1 < _g) data_Question._rests.push(_g1++);
};
data_Question.getList = function(num) {
	var results = [];
	var _g1 = 0;
	while(_g1 < num) {
		++_g1;
		results.push(data_Question.get());
	}
	return results;
};
data_Question.get = function() {
	data_Question._rests = data_Question.getShuffled(data_Question._rests);
	data_Question._rests.sort(function(a,b) {
		return Math.floor(Math.random() - .5);
	});
	var num = data_Question._rests[0];
	data_Question._rests.shift();
	data_Question._selected.push(num);
	return data_Question.LIST[num];
};
data_Question.getShuffled = function(array) {
	var num;
	var value;
	var counter = array.length;
	var _g1 = 0;
	var _g = counter;
	while(_g1 < _g) {
		var i = _g1++;
		num = Math.floor(Math.random() * counter--);
		value = array[num];
		array[num] = array[i];
		array[i] = value;
	}
	return array;
};
var display_View = function() { };
display_View.init = function(questions) {
	display_View._jParent = $("#ks170222").html(display_View.getHTML(questions));
};
display_View.getHTML = function(questions) {
	return "\n\t\t<section class=\"q\">" + display_View.getQuestionsHTML(questions) + "</section>\n\t\t<ul class=\"a\">\n\t\t\t<li class=\"y\">YES</li>\n\t\t\t<li class=\"n\">NO</li>\n\t\t</ul>";
};
display_View.getQuestionsHTML = function(questions) {
	var html = "<ul>";
	var _g1 = 0;
	var _g = questions.length;
	while(_g1 < _g) {
		var i = _g1++;
		html += "<li class=\"q" + i + "\">" + questions[i] + "</li>";
	}
	return "" + html + "</ul>";
};
data_Question.LIST = ["朝が得意だ","好きなものは最後に食べるタイプだ","1日何も食べなくても案外平気だ","スラムダンクで一番好きなキャラは三井だ","3日間起きていたことがある","いつも背筋を気にしている","鍋奉行だ","すぐ手を洗うクセがある","髪型にこだわりがある","水泳が得意だ","計算は得意なほうだ","旅行は計画をしっかり練らないと気がすまない","得意料理が3つ以上ある","和食派だ","ドラゴンボールで一番好きなキャラはピッコロだ","♠A♥2♣2♥4♥5、狙うはフラッシュだ","小島よしおは意外と好きだ","花粉症だ","風邪をひきやすい","映画はアクション物に限る","日本酒が好きだ","炭酸飲料が苦手だ","空を飛ぶ夢をよく見る","ポストが赤いのは当然だ","休みの日はずっと家にいる","ゲームが得意だ","人見知りだ","夏が好きだ","海より山派だ","起きたらコーヒーを飲まないとやる気が出ない","起きる時間は毎日同じだ","小銭はあまり持ちたくない","長財布派だ","財布のお札はいつでも向きが揃っている","高所恐怖症だ","甘いものが好きだ","毎日お米を食べている"];
Main.main();
})();