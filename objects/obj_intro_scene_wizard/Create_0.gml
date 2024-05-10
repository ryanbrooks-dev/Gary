/// @description Insert description here
// You can write your code in this editor
self.speed = 0.5;
prev_x = x;
prev_y = y;
padding = 24;
initial_delay = 90;

dialogue = [
"GARY! WHAT HAVE YOU DONE GARY?!?",
"WHAT'S HAPPENING TO US???",
"Guys! I think he must've finally cracked it! He decoded the forbidden tome!",
"THAT BOOK WILL ONLY BRING DARKNESS, GARY.",
"The one that promises to reveal your core strengths?!? HARNESS THEM AS RAW POWER???",
"When will you learn?? That your actions have CONSEQUENCES!",
"If anything happens to us here today, the elders will know. So you'd better prepare for a fight, Gary!",
"You may have ruined us all....",
"I hope it was.... worth..... it......"
];
dialogue_delay = 8;
dialogue_step = 0;
path_points = path_get_number(pth_intro_scene);

path = path_start(pth_intro_scene, self.speed, path_action_stop, true);