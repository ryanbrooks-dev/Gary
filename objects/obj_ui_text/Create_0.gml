/// @description Scoped to text draws to GUI

/// Strings init
title = "Gary:";
subtitle = "The Last of the Wizards";

prologue_array[0] = "Wizards are an ancient order, \nspanning back thousands of years.";
prologue_array[1] = "They all died out long before our time, \nalthough no one truly knows what happened to them...";
prologue_array[2] = "Except maybe Gary.";
prologue_array[3] = "Meet Gary, the last of the wizards.";
prologue_array[4] = "Come along as we go back to the year 532 A.D. \nto follow a day in the life of the last wizard,";
prologue_array[5] = "and hopefully, we just might get a glimpse \nat how this noble class of magic wielders lived...";

/// Counters init
t = 0;
timer = 0;
cutoff = 0;

done = false;

y_pad_constant = 125;
increment = 1;
current_message = 0;
is_title = true;
is_gary_time = false;
gary_is_here = false;

section_1_ready = false;
section_2_ready = false;
section_3_ready = false;
section_4_ready = false;
section_5_ready = false;
section_6_ready = false;