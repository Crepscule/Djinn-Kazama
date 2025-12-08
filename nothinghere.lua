-- // test

local function isDungeon()
	return game.ReplicatedStorage.Dungeon.Value
end

local specDialogues = {
	Parker = false;
	Bill = false;
	James = false;
	Caitlin = false;
}

if not isDungeon() then
	-- Dialogues
	workspace.Map.MiniQuests["Helen"].Dialogue.Dialog.Value = [[Thinking about moving to Bloxxer City... But those crime rates are so high, and we got the "Dragon of Steel" protecting us here. Though I hear there's some fighter called the "Ashura" who's even scarier... Some say he can shatter concrete with his bare hands.]]
	
	workspace.Map.MiniQuests["Jort"].Dialogue.Dialog.Value = [[These are my favorite vending machines. There's a street legend out there who fights like a demon and drinks energy colas like water... The "Ashura" they call him. You kinda remind me of those stories. I saw Parker once - he came here bruised up but still bought a cola. Tough old guy.]]
	
	workspace.Map.MiniQuests["Fisherman Jimbo"].Dialogue.Dialog.Value = [[You don't look like ya fish... But you look like you could take down a shark with your bare hands. You got that same wild look as that fighter from the rumors - Tokita Ohma, was it? Parker talks about you sometimes when he comes by. Says you fight like a cornered animal.]]
	
	workspace.Map.MiniQuests["Fisherman Quill"].Dialogue.Dialog.Value = [[Hey there, fighter. You look like you've been through hell and back. The dock lady is still there selling fresh stuff. Keeping up that intense training must be exhausting, right? Parker was here earlier - said something about you breaking three of his ribs last month. Sounded almost proud.]]
	
	workspace.Map.MiniQuests["Anderson"].Dialogue.Dialog.Value = [[Wow, that's crazy. You'd think there would be more crime scenes around. You know, considering the trail of destruction YOU leave behind. You demolish street thugs and who do you think has to clean that up?! I've seen your type before - all fight, no thought about the aftermath. Parker's the same - always leaving a mess.]]
	
	-- Special dialogues
	if not specDialogues.Caitlin then
		specDialogues.Caitlin = true
		workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Value = [[There sure are a lot of punks in this city looking for a fight. You've got that hungry look in your eyes. What, you want to throw down too?]]
		
		local d1 = Instance.new("StringValue")
		d1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog
		d1.Value = "Yeah. Let's fight."
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog1
		r1.Name = "Dialog"
		r1.Value = [[Wait... aren't you that "Ashura" fighter everyone's whispering about? Go pick a real fight with <font color="#FF00AA">Vulcan</font> instead of beating up random people. I hear he's actually worth your time. Parker says you're looking for strong opponents anyway.]]
		
		local d2 = Instance.new("StringValue")
		d2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog
		d2.Value = "This city's too soft."
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog2
		r2.Name = "Dialog"
		r2.Value = [[I know, right? The mayor doesn't even do anything about the real problems. Instead of stopping crime, he watches highlight reels of street fights online. He should be fired. Parker says you'd probably enjoy watching those too - all violence, no substance.]]
		
		local d3 = Instance.new("StringValue")
		d3.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog
		d3.Value = "You know Parker?"
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3
		r3.Name = "Dialog"
		r3.Value = [[<font color="#90EE90">Old man Parker?</font> Yeah, he comes around sometimes. Always complaining about his sore throat. Says it's from "talking too much with reckless fighters." I'm guessing that's you. He's got some wild stories about your fights though.]]
		
		local d3_1 = Instance.new("StringValue")
		d3_1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog
		d3_1.Value = "What kind of stories?"
		d3_1.Name = "Dialog1"
		
		local r3_1 = Instance.new("StringValue")
		r3_1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog.Dialog1
		r3_1.Name = "Dialog"
		r3_1.Value = [[Says you fight like you're possessed. Something about "demons in the blood" or whatever. <font color="#90EE90">Parker</font> claims you broke his arm once and just walked away like nothing happened. Is that true?]]
		
		local d3_1_1 = Instance.new("StringValue")
		d3_1_1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog.Dialog1.Dialog
		d3_1_1.Value = "He asked for it."
		d3_1_1.Name = "Dialog1"
		
		local r3_1_1 = Instance.new("StringValue")
		r3_1_1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog.Dialog1.Dialog.Dialog1
		r3_1_1.Name = "Dialog"
		r3_1_1.Value = [[Figures. <font color="#90EE90">Parker</font> does have a habit of picking fights he can't win. Still comes back for more though. You two are kind of alike in that way.]]
		
		local d3_1_2 = Instance.new("StringValue")
		d3_1_2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog.Dialog1.Dialog
		d3_1_2.Value = "It was a good fight."
		d3_1_2.Name = "Dialog2"
		
		local r3_1_2 = Instance.new("StringValue")
		r3_1_2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog3.Dialog.Dialog1.Dialog.Dialog2
		r3_1_2.Name = "Dialog"
		r3_1_2.Value = [[<font color="#90EE90">Parker</font> said the same thing! Even with a broken arm! You fighters are all messed up in the head, you know that?]]
	end
	
	if not specDialogues.Bill then
		specDialogues.Bill = true
		workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Value = [[Hey, you're that "Ashura" from the underground circuit. I remember hearing about your matches. Brutal stuff. Feels like just yesterday you were tearing through the competition. <font color="#90EE90">Parker</font> talks about you sometimes - says you fight dirtier than anyone he's ever seen.]]
		
		local d1 = Instance.new("StringValue")
		d1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog
		d1.Value = "Hmph. Old news."
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog1
		r1.Name = "Dialog"
		r1.Value = [[Yeah... those were some legendary fights. You made a lot of memories for people, you know. <font color="#90EE90">Parker</font> still has the scars to prove it.]]
		
		local d2 = Instance.new("StringValue")
		d2.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog
		d2.Value = "You just stand here all day?"
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog2
		r2.Name = "Dialog"
		r2.Value = [[What? No! I'm... observing! Studying fighters like you! Besides, I have important things to do. Like uh... analyzing fight techniques... Yeah. <font color="#90EE90">Parker</font> says I should mind my own business though.]]
		
		local d3 = Instance.new("StringValue")
		d3.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog
		d3.Value = "Parker talks too much."
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog3
		r3.Name = "Dialog"
		r3.Value = [[<font color="#90EE90">He does, doesn't he?</font> Always going on about "the old days" and "real fighters." But he's got stories about you that would make anyone's hair stand on end. Something about you fighting with broken ribs?]]
		
		local d3_1 = Instance.new("StringValue")
		d3_1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog3.Dialog
		d3_1.Value = "Pain doesn't matter."
		d3_1.Name = "Dialog1"
		
		local r3_1 = Instance.new("StringValue")
		r3_1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog3.Dialog.Dialog1
		r3_1.Name = "Dialog"
		r3_1.Value = [[That's what <font color="#90EE90">Parker</font> said you'd say! Word for word! You two really are cut from the same cloth.]]
	end
	
	if not specDialogues.James then
		specDialogues.James = true
		workspace.Map.MiniQuests["James"].Dialogue.Dialog.Value = [[There used to be a time when we didn't have that corporate eyesore looming over us. You look like someone who doesn't take crap from anyone. You're that Ashura fighter, aren't you? <font color="#90EE90">Parker</font> mentioned you might come around. Said you hate rich guys in towers almost as much as I do.]]
		
		local d1 = Instance.new("StringValue")
		d1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog
		d1.Value = "Does it matter?"
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1
		r1.Name = "Dialog"
		r1.Value = [[Someone needs to teach them a lesson. I REALLY hate that tower. It's an insult to everyone who lives here. <font color="#90EE90">Parker</font> says you're the type to climb it just to punch the guy at the top.]]
		
		local d1_1 = Instance.new("StringValue")
		d1_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog
		d1_1.Value = "What's the problem with it?"
		d1_1.Name = "Dialog1"
		
		local r1_1 = Instance.new("StringValue")
		r1_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog.Dialog1
		r1_1.Name = "Dialog"
		r1_1.Value = [[That skyscraper is owned by some corporate bigshot named Derek. Thinks he's untouchable because he's got money and muscle. He probably built that tower just to look down on everyone... literally. <font color="#90EE90">Parker</font> says Derek has private security that could give even you a challenge.]]
		
		local d1_2 = Instance.new("StringValue")
		d1_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog
		d1_2.Value = "It's annoying."
		d1_2.Name = "Dialog2"
		
		local r1_2 = Instance.new("StringValue")
		r1_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog.Dialog2
		r1_2.Name = "Dialog"
		r1_2.Value = [[Crazy how the mayor allowed this... Probably got paid off. <font color="#90EE90">Parker</font> thinks Derek's planning something big. Something that needs a lot of... private security.]]
		
		local d2 = Instance.new("StringValue")
		d2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog
		d2.Value = "Maybe I am the Ashura."
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2
		r2.Name = "Dialog"
		r2.Value = [[Then why don't you go in there and remind them that money doesn't make you strong? Show them what real strength looks like! <font color="#90EE90">Parker</font> bets you wouldn't last five minutes against their top guys though.]]
		
		local d2_1 = Instance.new("StringValue")
		d2_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog
		d2_1.Value = "When I feel like it."
		d2_1.Name = "Dialog1"
		
		local r2_1 = Instance.new("StringValue")
		r2_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog.Dialog1
		r2_1.Name = "Dialog"
		r2_1.Value = [[You should make it soon. That tower ruins the whole city's vibe. Just looking at it makes me want to punch something. <font color="#90EE90">Parker</font> says you're probably waiting for the right moment... or the right opponent.]]
		
		local d2_2 = Instance.new("StringValue")
		d2_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog
		d2_2.Value = "Parker should mind his own business."
		d2_2.Name = "Dialog2"
		
		local r2_2 = Instance.new("StringValue")
		r2_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog.Dialog2
		r2_2.Name = "Dialog"
		r2_2.Value = [[Heh. <font color="#90EE90">Old man's</font> got nothing better to do than gossip about fighters. But he's usually right about these things. If he says Derek's worth your time... well, you might want to listen.]]
	end
	
	if not specDialogues.Parker then
		specDialogues.Parker = true
		workspace.Map.MiniQuests["Parker"].Dialogue.FDialog.Name = "Dialog"
		workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Value = [[<font color="#90EE90">Back again, Ohma? Caitlin's been asking about you. Says you look like you're itching for a fight.]]
		
		local d1 = Instance.new("StringValue")
		d1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
		d1.Value = "You looking for a rematch?"
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog1
		r1.Name = "FDialog"
		r1.Value = [[<font color="#90EE90">Some things never change. Still as reckless as ever. My arm's still sore from last time, you know.]]
		
		local d2 = Instance.new("StringValue")
		d2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
		d2.Value = "What's going on?"
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2
		r2.Name = "Dialog"
		r2.Value = [[<font color="#90EE90">Same old. Throat's still bothering me from our last... conversation. Caitlin thinks I should see a doctor. Says I talk too much for my own good.]]
		
		local d2_1 = Instance.new("StringValue")
		d2_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog
		d2_1.Value = "Let's fight."
		d2_1.Name = "Dialog1"
		
		local r2_1 = Instance.new("StringValue")
		r2_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog.Dialog1
		r2_1.Name = "FDialog"
		r2_1.Value = [[<font color="#90EE90">...You're really trying to put me back in the hospital. I'm retired from that life, remember? Caitlin would kill me if she found out I was fighting again.]]
		
		local d2_2 = Instance.new("StringValue")
		d2_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog
		d2_2.Value = "Take care of yourself."
		d2_2.Name = "Dialog2"
		
		local r2_2 = Instance.new("StringValue")
		r2_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog.Dialog2
		r2_2.Name = "Dialog"
		r2_2.Value = [[<font color="#90EE90">You too. Try not to get yourself killed out there. Caitlin's worried about you, you know. Thinks you're going to pick a fight you can't win.]]
		
		local d3 = Instance.new("StringValue")
		d3.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
		d3.Value = "Nothing. Later."
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog3
		r3.Name = "Dialog"
		r3.Value = [[<font color="#90EE90">*cough* ...Stay alive, kid. And tell Caitlin I said hi.]]
		
		local d4 = Instance.new("StringValue")
		d4.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
		d4.Value = "Caitlin talks about you."
		d4.Name = "Dialog4"
		
		local r4 = Instance.new("StringValue")
		r4.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog4
		r4.Name = "Dialog"
		r4.Value = [[<font color="#90EE90">Does she now? Probably telling you about all my old injuries. That girl worries too much. She thinks I'm going to get myself killed one of these days.]]
		
		local d4_1 = Instance.new("StringValue")
		d4_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog4.Dialog
		d4_1.Value = "She's not wrong."
		d4_1.Name = "Dialog1"
		
		local r4_1 = Instance.new("StringValue")
		r4_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog4.Dialog.Dialog1
		r4_1.Name = "FDialog"
		r4_1.Value = [[<font color="#90EE90">Pot calling the kettle black. You're going to get yourself killed long before I do. At least I know when to walk away.]]
		
		local d4_2 = Instance.new("StringValue")
		d4_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog4.Dialog
		d4_2.Value = "She seems... concerned."
		d4_2.Name = "Dialog2"
		
		local r4_2 = Instance.new("StringValue")
		r4_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog4.Dialog.Dialog2
		r4_2.Name = "Dialog"
		r4_2.Value = [[<font color="#90EE90">Good kid. Too good for this city. She shouldn't be worrying about old men like me. You either, for that matter.]]
	end	
end    
