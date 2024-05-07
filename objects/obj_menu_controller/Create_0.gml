/// @description Scoped to text draws to GUI

/// Strings init
title = @"Gary :";
subtitle = "The Last of the Wizards";

prologue_array[0] = "Wizards are an ancient order, spanning back thousands of years, or even more.But even so, they all died out long before our time. Although no one truly knows what happened to them.";
prologue_array[1] = "Today that all changes, we've finally found some answers. Or more specifically, someone. Someone who just might know something we haven't yet found.";
prologue_array[2] = "Meet Gary, the last of all the wizards. Hi Gary. Of course Gary is long gone by now, but we're able to tap into his memories to live out the final moment in this wonderful time of wizardry.";
prologue_array[3] = "Follow along as we go back in time to follow a day in the life of the last living wizard. Lets just hope Gary can give us some insight to the final chapter of this noble class of magic wielders...";

y_pad_constant = 130;
x_buffer = 16;

// continue to only draw main menu
is_title = true;
// start drawing prologue text
is_prologue = false;
// if true, queue gary for prologue appearance
is_gary_time = false;
// flags when gary has made prologue appearance
gary_is_here = false;
//prologue sections to print
latest_section = -1;

skip_ahead = false;