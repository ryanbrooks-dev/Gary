/// @description Insert description here
// You can write your code in this editor
speed = 0.5;
prev_x = x;
prev_y = y;
padding = 24;
initial_delay = 90;

dialogue = [
"This is the LAST. TIME. ",
"Enough is enough, Gary!!",
"You can't host poker night, \nif you're just going to use magic to CHEAT.",
"You may be the most powerful wizard in town, FINE.",
"But it doesn't mean that you can grift us with your superior magic",
"Poker night is SACRED. You've crossed a line.",
"And one more thing, what kind of maniac builds a driveway this long?!?",
"I'VE HAD ENOUGH. I'm telling the whole town.",
"I'll be back, and then you'll be sorry!!",
"You know what? I'm sure this way must be faster.",
"GOODBYE."
];
dialogue_delay = 6;
dialogue_step = 0;
path_points = path_get_number(pth_intro_scene);

path = path_start(pth_intro_scene, speed, path_action_stop, false);