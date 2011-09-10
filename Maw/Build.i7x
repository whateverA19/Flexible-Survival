Build by Maw begins here.

When play begins:
	repeat with x running through construct:
		now x is a part of the blueprints;

Book - Dem Blues

blueprints is a object. "A large sheet of dark-blue paper with thin, light blue lining upon the broad face of it. With a little ingenuity one could consider this a invaluable tool for [bold type]building[roman type]".
blueprints is in Village center.

After examining the blueprints:
	if progress of current of blueprints < cost of current of blueprints:
		say "Current Construction Designs: [current of blueprints]([progress of current of blueprints]/[cost of current of blueprints])";
	say "[line break]To begin a new build, type [bold type]build (building) at (direction)[roman type].";
	say "Type [bold type]plan[roman type] alone to see available buildings.";

Part - Change Builds

builds is an action applying to nothing.
Understand "plan" as builds.

Check builds:
	if blueprints is not visible, say "You can't check your current designs without... your designs!" instead;

carry out researchlist:
	say "Available Designs: [no line break]";
	repeat with x running through valid construct:
		if x is complete, next;
		say "[line break]";
		say "[x]([progress of x]/[cost of x])[if current of blueprints is x](Current construction)[end if][no line break]";
	say "To begin a new build, type [bold type]build (building) at (direction)[roman type].";

constructing is an action applying to two things.
Understand "Build [Construct] at [direction]" as constructing.

Check constructing:
	if blueprints is not visible, say "You can't give orders to your builders while you don't have your designs with you!" instead;
	if noun is complete, say "That building has already been constructed" instead;
	if noun is current of blueprints, say "Your builders stare at you, hammers and two-by-fours in hand, looking about ready to hammer you upside the head with both, 'We are working on it.' Maybe you should hire more builders?" instead;

Carry out constructing:
	say "[description of noun]";
	say "[line break]Construct?";
	if the player consents:
		now current of blueprints is noun;
		say "Your builders begin constructing [noun].";
	otherwise:
		say "Aborted.";


Book - Define Construct


A Construct is a kind of room.
A Construct has a text called description.
A Construct has a rule called validation.
The validation of a Construct is usually Convailable rule.
A Construct has a number called progress.
A Construct has a number called cost.
A Construct has a rule called completion.
The completion of a Construct is usually nothing rule;

A Direction is a text value.
	if the value of direction is north:
	if the value of direction is east:
	if the value of direction is south:
	if the value of direction is west:
	if the value of direction is northeast:
	if the value of direction is northwest:
	if the value of direction is southeast:
	if the value of direction is southwest:

This is the nothing rule:
do nothing;

Definition: A Construct (called C) is valid:
	follow the validation of C;
	if rule succeeded:
		yes;
	otherwise:
		no;

Definition: A Construct (called C) is complete:
	if progress of C >= cost of C:
		yes;
	otherwise:
		no;


Part 2 - Constructs


The blueprint has a Construct called current.
cur is a text that varies.

Agricultural Zone is a Construct.
The description of it is "A massive, flat area filled with rows upon rows of[one of] wheat[or] corn[or] tomato stalks[or] apple trees[or] grape vines[or] marijuana.[sticky random] You feel at peace here, the wildlife of the area unperterbed and singing happily. The rustic look quite an eyesore for the city-folk. (Increases farmers' efficency by offering organized plot of farmland (No effect on hunters))".
The cost of it is 60.
The completion of it is Agricultural Zone.

An everyturn rule(this is the Agricultural Zone rule):

Build ends here.
