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
   Suffix = "% Speed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(WALKSPEED)
       local player = game.Players.LocalPlayer
       if player and player.Character then
           local humanoid = player.Character:FindFirstChild("Humanoid")
           if humanoid then
               humanoid.WalkSpeed = WALKSPEED
           else
               Rayfield:Notify({
   Title = "Humanoid Not Found",
   Content = "Your Character models properties are not loaded, re-execute the script when game is fully loaded.",
   Duration = 5,
   Image = nil,
})
           end
       else
           Rayfield:Notify({
   Title = "Character Not Found",
   Content = "Your Character is not loaded, re-execute the script when game is fully loaded.",
   Duration = 5,
   Image = nil,
})
       end
   end,
})

local Slider = localplayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "% Power",
   CurrentValue = 50,
   Flag = "Slider2",
   Callback = function(JUMPPOWER)
       local player = game.Players.LocalPlayer
       if player and player.Character then
           local humanoid = player.Character:FindFirstChild("Humanoid")
           if humanoid then
               humanoid.JumpPower = JUMPPOWER
           else
               Rayfield:Notify({
   Title = "Humanoid Not Found",
   Content = "Your Character models properties are not loaded, re-execute the script when game is fully loaded.",
   Duration = 5,
   Image = nil,
})
           end
       else
           Rayfield:Notify({
   Title = "Character Not Found",
   Content = "Your Character is not loaded, re-execute the script when game is fully loaded.",
   Duration = 5,
   Image = nil,
})
       end
   end,
})
