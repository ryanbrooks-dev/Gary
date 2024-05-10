/// @description Insert description here
// You can write your code in this editor
card = {
	name,
	cost,
	gem_type,
	priority,
}

cards = {
	range: {
		name: "range",
		cost: 3,
		gem_type: 0,
		priority: 1
	},
	speed_card: {
		name: "speed",
		cost: 2,
		gem_type: 0,
		priority: 1
	},
	trade_card: {
		name: "trade",
		cost: 3,
		gem_type: 0,
		priority: 3
	},
	minions_card: {
		name: "minions",
		cost: 4,
		gem_type: 0,
		priority: 2
	},
	miniboss_card: {
		name: "miniboss",
		cost: 5,
		gem_type: 0,
		priority: 3
	},
	upgrade_card: {
		name: "range",
		cost: 0,
		gem_type: 0,
		priority: 2
	},
};

card_types = ["range","speed", "trade", "minions", "miniboss", "range"];


max_cards_in_deck = 30;

tower_types = obj_money_controller.GEM_TYPES;

cards_in_deck = [];

var _card_names = struct_get_names(cards);
var _card_variants = struct_names_count(cards);

// make sure the random seed is refreshed
randomise();
for(var _i = 0; _i < max_cards_in_deck; _i++) {
	var _rand = round(random(5));
	if(_i % 3 = 0) // make sure we get at least 30% total as high priority cards
		_rand = (random(10) > 5)  ? 0 : 1;
	var _rand2 = round(random(3));
	if(_i % 2 = 0) // make sure we get at least 50% total as gray gem cards
		_rand = 0;

	_card = struct_get(cards,  _card_names[_rand]);
	show_debug_message(_card);
	_card.gem_type = _rand2;
	array_push(cards_in_deck,_card);
}