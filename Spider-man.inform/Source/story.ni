"Spider-man" by Michael Trinidad

A person has a number called hit points.
A person has a number called speed.
[These are the declaration of variables that determine later events. Hit points concerning unconciousness and speed concerning ability to dodge. I know there is a better, proper way of doing this by giving the Green Goblin these variables as traits or something, however due to lack of time and complexity of this language , I have no choice but to do it this way. ]


[Declaration of the webbing action.]
Webbing is an action applying to a thing.
Understand "web [person]" as webbing. Understand "web [person] up" as webbing.

[Statements used to be able to "jump down". Again, I'm pretty sure a better, proper way is available, but I digress.]
instead of jumping , try going south.
Understand "jump down" as jumping.

[Declaration of rooms and relativity to each other.]
Building Roof is a room. "'My spidey senses are telling me that the Green Goblin is robbing a bank right across the street below. Luckily he doesn't know I'm here so lets jump down and say hi.'"

Bank is south of the Building Roof. 

[Declaration of the Green Goblin and description of current scene. Description is done after looking, to avoid confusion.]
In the bank is a man called The Green Goblin. The hit points of the green goblin is 1. The speed of the green goblin is 1. 
After looking:
	If player is in bank, say "You quietly land behind the Green Goblin without him knowing. The bank tellers and guests are all cowering behind cover as the Green Goblin floats on his hoverboard. 

	'Made it just in time. I should probably web him up before punching him or else he might dodge the punch.'".

[Declaration of effects of webbing.]
After webbing:
	say "The Green Goblin is now tied up in high density webbing and can't move.";
	decrease speed of the noun by 1;
	
[Declaration of effects of attacking. Prevents player from punching without webbing first as hinted in the current event description]
Instead of attacking:
	if speed of the noun is 1:
		say "The green goblin dodged your attack! Try webbing him up first!";
	otherwise:
		say "You punch the him right in his dome.";
		decrease hit points of the noun by 1;

[Check to see if player has beaten Green Goblin.]
Every turn:
	If the hit points of green goblin is 0:
		say "The green goblin falls on the ground, unconcious. 

		Awesome job! Cops shoud be here soon. We should get outa here before we get into more trouble.";
		End the story;