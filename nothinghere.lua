-- // test

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

local function isDungeon()
	return game.ReplicatedStorage:FindFirstChild("Dungeon") and game.ReplicatedStorage.Dungeon.Value
end

-- Store which special dialogues have been initialized
local specDialogues = {
	Parker = false;
	Bill = false;
	James = false;
	Caitlin = false;
}

local function Notify(Text, Sound, Color, Fonts)
    -- Safely check if notify system exists
    if not pgui or not pgui:FindFirstChild("Notify") then
        warn("Notify system not available")
        return
    end
    
    local Text1 = string.upper(Text)
    
    -- Fire notification
    if Sound then
        pgui.Notify:Fire(Text, Sound)
    else
        pgui.Notify:Fire(Text)
    end
    
    -- Update notification text display if available
    if pgui:FindFirstChild("NotifyUI") and pgui.NotifyUI:FindFirstChild("Awards") then
        for _, v in pairs(pgui.NotifyUI.Awards:GetChildren()) do
            if v.Name == "XPEx" and v.Text == Text1 then
                v.Text = Text
                if Color then
                    v.TextColor3 = Color
                end
                if Fonts then
                    v.Font = Enum.Font[Fonts]
                end
            end
        end
    end
end

-- Clear existing dialogues and responses first
local function clearExistingResponses(dialogObj)
    if dialogObj then
        for _, child in pairs(dialogObj:GetChildren()) do
            if child:IsA("StringValue") and child.Name ~= "Dialog" then
                child:Destroy()
            end
        end
    end
end

if not isDungeon() then
	local c = workspace.Map.MiniQuests["Caitlin"]
	-- NPC Model Changes
	c.Ignore.Hat.Mesh.Scale = Vector3.new(1,1,1)
	c.Ignore.Hoodie.Color = Color3.fromRGB(47,47,47)
	c.Ignore.Hoodie_CuffL.Color = Color3.fromRGB(47,47,47)
	c.Ignore.Hoodie_CuffR.Color = Color3.fromRGB(47,47,47)
	c.Ignore.Hoodie_Low.Color = Color3.fromRGB(47,47,47) 
	c.Ignore.Jean_PantL.Color = Color3.fromRGB(248, 248, 248)
	c.Ignore.Jean_PantR.Color = Color3.fromRGB(248, 248, 248)
	
	
	c.UpperRightArm.Color = Color3.fromRGB(17,17,17)
	c.LowerTorso.Color = Color3.fromRGB(17,17,17)
	c.UpperTorso.Color = Color3.fromRGB(17,17,17)
	c.UpperLeftArm.Color = Color3.fromRGB(17,17,17)
	c.UpperRightLeg.Color = Color3.fromRGB(248, 248, 248)
	c.UpperLeftLeg.Color = Color3.fromRGB(248, 248, 248)
	c.LowerRightLeg.Color = Color3.fromRGB(248, 248, 248)
	c.LowerLeftLeg.Color = Color3.fromRGB(248, 248, 248)

	
	c.Ignore.Hoodie.Color = Enum.Material.Granite
	c.UpperTorso.Material = Enum.Material.Granite
	c.UpperRightArm.Material = Enum.Material.Granite
	c.UpperLefrArm.Material = Enum.Material.Granite
	-- Dialogues for regular NPCs
	workspace.Map.MiniQuests["Helen"].Dialogue.Dialog.Value = [[Thinking about moving to Bloxxer City... But those crime rates are so high, and we got the <font color="#FFFFFF">"Dragon of Steel" </font> protecting us here, but I heard he went back to Rajad, to reconnect with his old master. Though I hear there's some fighter called the <font color="#FF2121">"Ashura"</font>who's even scarier... Some say he can shatter concrete with his bare hands.]]
	
	workspace.Map.MiniQuests["Jort"].Dialogue.Dialog.Value = [[These are my favorite vending machines. There's a street legend out there who fights like a demon and drinks energy colas like water... The <font color="#FF2121">"Ashura"</font> they call him. You kinda remind me of those stories. I saw Parker once - he came here bruised up but still bought a cola. Tough old guy.]]
	
	workspace.Map.MiniQuests["Fisherman Jimbo"].Dialogue.Dialog.Value = [[You don't look like ya fish... But you look like you could take down a shark with your bare hands. You got that same wild look as that fighter from the rumors - Tokita Ohma, was it? <font color="#90EE90">Parker</font> talks about you sometimes when he comes by. Says you fight like a cornered animal.]]
	
	workspace.Map.MiniQuests["Fisherman Quill"].Dialogue.Dialog.Value = [[Hey there, fighter. You look like you've been through hell and back. The dock lady is still there selling fresh stuff. Keeping up that intense training must be exhausting, right? <font color="#90EE90">Parker</font> was here earlier - said something about you breaking three of his ribs last month. Sounded almost proud.]]
	
	workspace.Map.MiniQuests["Anderson"].Dialogue.Dialog.Value = [[Wow, that's crazy. You'd think there would be more crime scenes around. You know, considering the trail of destruction YOU leave behind. You demolish street thugs and who do you think has to clean that up?! I've seen your type before - all fight, no thought about the aftermath. <font color="#90EE90">Parker's</font> the same - always leaving a mess.]]
	
	-- Special dialogues (with branching)
	-- Caitlin's Dialogue
	if not specDialogues.Caitlin then
		specDialogues.Caitlin = true
		local caitlinDialogue = workspace.Map.MiniQuests["Caitlin"].Dialogue
		caitlinDialogue.Dialog.Value = [[There sure are a lot of punks in this city looking for a fight. You've got that hungry look in your eyes. What, you want to throw down too?]]
		
		-- Clear any existing responses
		clearExistingResponses(caitlinDialogue.Dialog)
		
		-- Option 1: "Yeah. Let's fight."
		local d1 = Instance.new("StringValue")
		d1.Parent = caitlinDialogue.Dialog
		d1.Value = "Yeah. Let's fight."
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = d1
		r1.Name = "Dialog"  -- Caitlin uses Dialog, not FDialog
		r1.Value = [[Wait... aren't you that <font color = "#FF2121">"Ashura"</font> fighter everyone's whispering about? Go pick a real fight with <font color="#FF00AA">Vulcan</font> instead of beating up random people. I hear he's actually worth your time. Parker says you're looking for strong opponents anyway.]]
		
		-- Option 2: "This city's too soft."
		local d2 = Instance.new("StringValue")
		d2.Parent = caitlinDialogue.Dialog
		d2.Value = "This city's too soft."
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = d2
		r2.Name = "Dialog"  -- Caitlin uses Dialog
		r2.Value = [[I know, right? The mayor doesn't even do anything about the real problems. Instead of stopping crime, he watches highlight reels of street fights online. He should be fired. Parker says you'd probably enjoy watching those too - all violence, no substance.]]
		
		-- Option 3: "You know Parker?"
		local d3 = Instance.new("StringValue")
		d3.Parent = caitlinDialogue.Dialog
		d3.Value = "You know Parker?"
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = d3
		r3.Name = "Dialog"  -- Caitlin uses Dialog
		r3.Value = [[<font color="#90EE90">Parker?</font> Yeah, he comes around sometimes. Always complaining about his sore throat. Says it's from "talking too much with reckless fighters." I'm guessing that's you. He's got some wild stories about your fights though.]]
		
		-- Sub-options for Dialog3
		local d3_1 = Instance.new("StringValue")
		d3_1.Parent = r3
		d3_1.Value = "What kind of stories?"
		d3_1.Name = "Dialog1"
		
		local r3_1 = Instance.new("StringValue")
		r3_1.Parent = d3_1
		r3_1.Name = "Dialog"  -- Caitlin uses Dialog
		r3_1.Value = [[Says you fight like you're possessed. Something about "demons in the blood" or whatever. <font color="#90EE90">Parker</font> claims you broke his arm once and just walked away like nothing happened. Is that true?]]
		
		-- Sub-sub-options
		local d3_1_1 = Instance.new("StringValue")
		d3_1_1.Parent = r3_1
		d3_1_1.Value = "He asked for it."
		d3_1_1.Name = "Dialog1"
		
		local r3_1_1 = Instance.new("StringValue")
		r3_1_1.Parent = d3_1_1
		r3_1_1.Name = "Dialog"  -- Caitlin uses Dialog
		r3_1_1.Value = [[Figures. <font color="#90EE90">Parker</font> does have a habit of picking fights... You two are kind of alike in that way.]]
		
		local d3_1_2 = Instance.new("StringValue")
		d3_1_2.Parent = r3_1
		d3_1_2.Value = "It was a good fight."
		d3_1_2.Name = "Dialog2"
		
		local r3_1_2 = Instance.new("StringValue")
		r3_1_2.Parent = d3_1_2
		r3_1_2.Name = "Dialog"  -- Caitlin uses Dialog
		r3_1_2.Value = [[<font color="#90EE90">Parker</font> said the same thing! Even with a broken arm! You fighters are all messed up in the head, you know that?]]
	end
	
	-- Bill's Dialogue
	if not specDialogues.Bill then
		specDialogues.Bill = true
		local billDialogue = workspace.Map.MiniQuests["Bill"].Dialogue
		billDialogue.Dialog.Value = [[Hey, you're that <font color="#FF2121">"Ashura"</font> from the underground circuit. I remember hearing about your matches. Brutal stuff. Feels like just yesterday you were tearing through the competition. <font color="#90EE90">Parker</font> talks about you sometimes - says you fight dirtier than anyone he's ever seen.]]
		
		clearExistingResponses(billDialogue.Dialog)
		
		-- Option 1: "Hmph. Old news."
		local d1 = Instance.new("StringValue")
		d1.Parent = billDialogue.Dialog
		d1.Value = "Hmph. Old news."
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = d1
		r1.Name = "Dialog"  -- Bill uses Dialog
		r1.Value = [[Yeah... those were some legendary fights. You made a lot of memories for people, you know. <font color="#90EE90">Parker</font> still has the scars to prove it.]]
		
		-- Option 2: "You just stand here all day?"
		local d2 = Instance.new("StringValue")
		d2.Parent = billDialogue.Dialog
		d2.Value = "You just stand here all day?"
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = d2
		r2.Name = "Dialog"  -- Bill uses Dialog
		r2.Value = [[What? No! I'm... observing! Studying fighters like you! Besides, I have important things to do. Like uh... analyzing fight techniques... Yeah. <font color="#90EE90">Parker</font> says I should mind my own business though.]]
		
		-- Option 3: "Parker talks too much."
		local d3 = Instance.new("StringValue")
		d3.Parent = billDialogue.Dialog
		d3.Value = "Parker talks too much."
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = d3
		r3.Name = "Dialog"  -- Bill uses Dialog
		r3.Value = [[<font color="#90EE90">He does, doesn't he?</font> Always going on about "the old days" and "real fighters." But he's got stories about you that would make anyone's hair stand on end. Something about you fighting with broken ribs?]]
		
		-- Sub-option
		local d3_1 = Instance.new("StringValue")
		d3_1.Parent = r3
		d3_1.Value = "Pain doesn't matter."
		d3_1.Name = "Dialog1"
		
		local r3_1 = Instance.new("StringValue")
		r3_1.Parent = d3_1
		r3_1.Name = "Dialog"  -- Bill uses Dialog
		r3_1.Value = [[That's what <font color="#90EE90">Parker</font> said you'd say! Word for word! You two really are cut from the same cloth.]]
	end
	
	-- James's Dialogue
	if not specDialogues.James then
		specDialogues.James = true
		local jamesDialogue = workspace.Map.MiniQuests["James"].Dialogue
		jamesDialogue.Dialog.Value = [[There used to be a time when we didn't have that corporate eyesore looming over us. You look like someone who doesn't take crap from anyone. You're that <font color="#FF2121"> "Ashura" </font> fighter, aren't you? <font color="#90EE90">Parker</font> mentioned you might come around. Said you hate rich guys in towers almost as much as I do.]]
		
		clearExistingResponses(jamesDialogue.Dialog)
		
		-- Option 1: "Does it matter?"
		local d1 = Instance.new("StringValue")
		d1.Parent = jamesDialogue.Dialog
		d1.Value = "Does it matter?"
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = d1
		r1.Name = "Dialog"  -- James uses Dialog
		r1.Value = [[Someone needs to teach them a lesson. I REALLY hate that tower. It's an insult to everyone who lives here. <font color="#90EE90">Parker</font> says you're the type to climb it just to punch the guy at the top.]]
		
		-- Sub-options for Option 1
		local d1_1 = Instance.new("StringValue")
		d1_1.Parent = r1
		d1_1.Value = "What's the problem with it?"
		d1_1.Name = "Dialog1"
		
		local r1_1 = Instance.new("StringValue")
		r1_1.Parent = d1_1
		r1_1.Name = "Dialog"  -- James uses Dialog
		r1_1.Value = [[That skyscraper is owned by some corporate bigshot named <font color="#F4FF26">Derek</font>. Thinks he's untouchable because he's got money and muscle. He probably built that tower just to look down on everyone... literally. <font color="#90EE90">Parker</font> says <font color="#F4FF26">Derek</font> has private security that could give even you a challenge.]]
		
		local d1_2 = Instance.new("StringValue")
		d1_2.Parent = r1
		d1_2.Value = "It's annoying."
		d1_2.Name = "Dialog2"
		
		local r1_2 = Instance.new("StringValue")
		r1_2.Parent = d1_2
		r1_2.Name = "Dialog"  -- James uses Dialog
		r1_2.Value = [[Crazy how the mayor allowed this... Probably got paid off. <font color="#90EE90">Parker</font> thinks <font color="#F4FF26">Derek's</font> planning something big. Something that needs a lot of... private security.]]
		
		-- Option 2: "Maybe I am the Ashura."
		local d2 = Instance.new("StringValue")
		d2.Parent = jamesDialogue.Dialog
		d2.Value = [[Maybe I am the <font color="#FF2121"Ashura.</font>]]
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = d2
		r2.Name = "Dialog"  -- James uses Dialog
		r2.Value = [[Then why don't you go in there and remind them that money doesn't make you strong? Show them what real strength looks like! <font color="#90EE90">Parker</font> bets you wouldn't last five minutes against their top guys though.]]
		
		-- Sub-options for Option 2
		local d2_1 = Instance.new("StringValue")
		d2_1.Parent = r2
		d2_1.Value = "When I feel like it."
		d2_1.Name = "Dialog1"
		
		local r2_1 = Instance.new("StringValue")
		r2_1.Parent = d2_1
		r2_1.Name = "Dialog"  -- James uses Dialog
		r2_1.Value = [[You should make it soon. That tower ruins the whole city's vibe. Just looking at it makes me want to punch something. <font color="#90EE90">Parker</font> says you're probably waiting for the right moment... or the right opponent.]]
		
		local d2_2 = Instance.new("StringValue")
		d2_2.Parent = r2
		d2_2.Value = [[<font color="#90EE90">Parker</font> should mind his own business.]]
		d2_2.Name = "Dialog2"
		
		local r2_2 = Instance.new("StringValue")
		r2_2.Parent = d2_2
		r2_2.Name = "Dialog"  -- James uses Dialog
		r2_2.Value = [[Heh. <font color="#90EE90">Parker's</font> got nothing better to do than gossip about fighters. But he's usually right about these things. If he says <font color="#F4FF26">Derek's</font> worth your time... well, you might want to listen.]]
	end
	
	-- Parker's Dialogue (EXCLUSIVELY uses FDialog for responses)
	if not specDialogues.Parker then
		specDialogues.Parker = true
		local parkerDialogue = workspace.Map.MiniQuests["Parker"].Dialogue
		
		-- Check if FDialog exists, if not create it
		if not parkerDialogue:FindFirstChild("FDialog") then
			local fDialog = Instance.new("StringValue")
			fDialog.Parent = parkerDialogue
			fDialog.Name = "FDialog"
		end
		
		-- Set the initial FDialog value
		parkerDialogue.FDialog.Value = [[<font color="#90EE90">Back again, Ohma? Caitlin's been asking about you. Says you look like you're itching for a fight.</font>]]
		
		-- Clear any existing responses
		clearExistingResponses(parkerDialogue.FDialog)
		
		-- Option 1: "You looking for a rematch?"
		local d1 = Instance.new("StringValue")
		d1.Parent = parkerDialogue.FDialog
		d1.Value = "You looking for a rematch?"
		d1.Name = "Dialog1"
		
		local r1 = Instance.new("StringValue")
		r1.Parent = d1
		r1.Name = "FDialog"  -- Parker uses FDialog for responses
		r1.Value = [[<font color="#90EE90">Some things never change. Still as reckless as ever. My arm's still sore from last time, you know.</font>]]
		
		-- Option 2: "What's going on?"
		local d2 = Instance.new("StringValue")
		d2.Parent = parkerDialogue.FDialog
		d2.Value = "What's going on?"
		d2.Name = "Dialog2"
		
		local r2 = Instance.new("StringValue")
		r2.Parent = d2
		r2.Name = "Dialog"  -- This response continues conversation
		r2.Value = [[<font color="#90EE90">Same old. Throat's still bothering me from our last... conversation. Caitlin thinks I should see a doctor. Says I talk too much for my own good.</font>]]
		
		-- Sub-options for Option 2
		local d2_1 = Instance.new("StringValue")
		d2_1.Parent = r2
		d2_1.Value = "Let's fight."
		d2_1.Name = "Dialog1"
		
		local r2_1 = Instance.new("StringValue")
		r2_1.Parent = d2_1
		r2_1.Name = "FDialog"  -- Parker uses FDialog (triggers fight)
		r2_1.Value = [[<font color="#90EE90">...You're really trying to put me back in the hospital. I'm retired from that life, remember? Caitlin would kill me if she found out I was fighting again.</font>]]
		
		local d2_2 = Instance.new("StringValue")
		d2_2.Parent = r2
		d2_2.Value = "Take care of yourself."
		d2_2.Name = "Dialog2"
		
		local r2_2 = Instance.new("StringValue")
		r2_2.Parent = d2_2
		r2_2.Name = "Dialog"  -- Continues conversation
		r2_2.Value = [[<font color="#90EE90">You too. Try not to get yourself killed out there. Caitlin's worried about you, you know. Thinks you're going to pick a fight you can't win.</font>]]
		
		-- Option 3: "Nothing. Later."
		local d3 = Instance.new("StringValue")
		d3.Parent = parkerDialogue.FDialog
		d3.Value = "Nothing. Later."
		d3.Name = "Dialog3"
		
		local r3 = Instance.new("StringValue")
		r3.Parent = d3
		r3.Name = "Dialog"  -- Continues conversation
		r3.Value = [[<font color="#90EE90">*cough* ...Stay alive, kid. And tell Caitlin I said hi.</font>]]
		
		-- Option 4: "Caitlin talks about you."
		local d4 = Instance.new("StringValue")
		d4.Parent = parkerDialogue.FDialog
		d4.Value = "Caitlin talks about you."
		d4.Name = "Dialog4"
		
		local r4 = Instance.new("StringValue")
		r4.Parent = d4
		r4.Name = "Dialog"  -- Continues conversation
		r4.Value = [[<font color="#90EE90">Does she now? Probably telling you about all my old injuries. That girl worries too much. She thinks I'm going to get myself killed one of these days.</font>]]
		
		-- Sub-options for Option 4
		local d4_1 = Instance.new("StringValue")
		d4_1.Parent = r4
		d4_1.Value = "She's not wrong."
		d4_1.Name = "Dialog1"
		
		local r4_1 = Instance.new("StringValue")
		r4_1.Parent = d4_1
		r4_1.Name = "FDialog"  -- Parker uses FDialog (triggers fight)
		r4_1.Value = [[<font color="#90EE90">Pot calling the kettle black. You're going to get yourself killed long before I do. At least I know when to walk away.</font>]]
		
		local d4_2 = Instance.new("StringValue")
		d4_2.Parent = r4
		d4_2.Value = "She seems... concerned."
		d4_2.Name = "Dialog2"
		
		local r4_2 = Instance.new("StringValue")
		r4_2.Parent = d4_2
		r4_2.Name = "Dialog"  -- Continues conversation
		r4_2.Value = [[<font color="#90EE90">Good kid. Too good for this city. She shouldn't be worrying about old men like me. You either, for that matter.</font>]]
	end	
end

Notify("Dialogues Updated!")
print("Dialogue setup complete")
