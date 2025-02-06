local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌐 Universal X GUI 🌐",
   Icon = 0, 
   LoadingTitle = "🌐 Universal X GUI 🌐",
   LoadingSubtitle = "the BEST universal GUI Out RN!!!!",
   Theme = "Default", 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "UniversalXGUIfileforroblofileidisbE798wGYH183hYHs8YDHwbsWhw"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true,
   KeySettings = {
      Title = "🌐 Universal X GUI 🌐 | Human Verification Key System (HVKG)",
      Subtitle = "Key System",
      Note = "get key at https://pastebin.com/raw/gaft842c for human verification! (NO ADS | RAW | DIRECT LINK)", 
      FileName = "UniversalXGUIHVKsystem",
      SaveKey = true,
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/gaft842c"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local localplayerTab = Window:CreateTab("✏️Local Player", nil)
local localplayerSection = localplayerTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Universal X GUI Has Executed Successfully!",
   Content = "Universal X GUI Has Executed Successfully With No Errors!!",
   Duration = 4,
   Image = nil,
})

local Slider = localplayerTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(WALKSPEED)
	game.Players.LocalPlayer.Character.Humanoid.Walkspeed = WALKSPEED
   end,
})

local Slider = localplayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(JUMPPOWER)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JUMPPOWER
   end,
})
