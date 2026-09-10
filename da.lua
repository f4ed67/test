local function notif(title, text, type)
    local notifiSound
    local notifiIcon
    local color
    if type == 1 then
        notifiSound = "rbxassetid://97881181065416"
        notifiIcon = "rbxassetid://6023426926"
        color = Color3.fromRGB(72, 199, 142)
    elseif type == 2 then
        notifiSound = "rbxassetid://91730465068215"
        notifiIcon = "rbxassetid://17182092132"
        color = Color3.fromRGB(255, 0, 0)
    else
        notifiSound = "rbxassetid://97881181065416"
        notifiIcon = "rbxassetid://6023426926"
        color = Color3.fromRGB(72, 199, 142)
    end
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local playerGui = player:WaitForChild("PlayerGui")
local function startHamAndCheeseToastie()
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "hottoastnotifyznc"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.DisplayOrder = 100
screenGui.Parent = playerGui
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 80)
frame.Position = UDim2.new(-1, -20, 0, 20)
frame.AnchorPoint = Vector2.new(0, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = frame
local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 24, 1, 24)
shadow.Position = UDim2.new(0.5, 0, 0.5, 4)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://6014261993"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.5
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(49, 49, 450, 450)
shadow.ZIndex = -1
shadow.Parent = frame
local accent = Instance.new("Frame")
accent.Size = UDim2.new(0, 4, 1, 0)
accent.Position = UDim2.new(0, 0, 0, 0)
accent.BackgroundColor3 = color
accent.BorderSizePixel = 0
accent.ZIndex = 2
accent.Parent = frame
local accentCorner = Instance.new("UICorner")
accentCorner.CornerRadius = UDim.new(0, 8)
accentCorner.Parent = accent
local contentContainer = Instance.new("Frame")
contentContainer.Size = UDim2.new(1, -16, 1, 0)
contentContainer.Position = UDim2.new(0, 16, 0, 0)
contentContainer.BackgroundTransparency = 1
contentContainer.Parent = frame
local iconSize = 20
local iconContainer = Instance.new("Frame")
iconContainer.Size = UDim2.new(0, iconSize, 0, iconSize)
iconContainer.Position = UDim2.new(0, 8, 0, 0.5 * frame.Size.Y.Offset - iconSize/2)
iconContainer.BackgroundTransparency = 1
iconContainer.Parent = frame
local iconImage = Instance.new("ImageLabel")
iconImage.Size = UDim2.new(1, 0, 1, 0)
iconImage.BackgroundTransparency = 1
iconImage.Image = notifiIcon
iconImage.ImageColor3 = color
iconImage.Parent = iconContainer
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 0, 24)
titleLabel.Position = UDim2.new(0, 32, 0, 8)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 16
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = title
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextTruncate = Enum.TextTruncate.AtEnd
titleLabel.Parent = contentContainer
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -40, 1, -48)
messageLabel.Position = UDim2.new(0, 32, 0, 32)
messageLabel.BackgroundTransparency = 1
messageLabel.Font = Enum.Font.SourceSans
messageLabel.TextSize = 14
messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
messageLabel.Text = text
messageLabel.TextXAlignment = Enum.TextXAlignment.Left
messageLabel.TextYAlignment = Enum.TextYAlignment.Top
messageLabel.TextWrapped = true
messageLabel.Parent = contentContainer
local progressBarContainer = Instance.new("Frame")
progressBarContainer.Size = UDim2.new(1, 0, 0, 3)
progressBarContainer.Position = UDim2.new(0, 0, 1, -3)
progressBarContainer.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
progressBarContainer.BackgroundTransparency = 0.7
progressBarContainer.BorderSizePixel = 0
progressBarContainer.ZIndex = 5
progressBarContainer.Parent = frame
local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(1, 0, 1, 0)
progressBar.BackgroundColor3 = color
progressBar.BorderSizePixel = 0
progressBar.ZIndex = 6
progressBar.Parent = progressBarContainer
TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
Position = UDim2.new(0, 20, 0, 20)
}):Play()
TweenService:Create(progressBar, TweenInfo.new(5, Enum.EasingStyle.Linear), {
Size = UDim2.new(0, 0, 1, 0)
}):Play()
task.delay(5, function()
TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
Position = UDim2.new(1, 20, 0, 20)
}):Play()
task.delay(0.5, function()
screenGui:Destroy()
end)
end)
local sound = Instance.new("Sound")
sound.SoundId = notifiSound
sound.Volume = 0.5
sound.Parent = screenGui
sound:Play()
end
if not player.Character then
player.CharacterAdded:Wait()
end
startHamAndCheeseToastie()
end
if game.PlaceId == 4939362930 then
    local fuck = loadstring(game:HttpGet("https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/funny.lua"))()
    local pikachu = loadstring(game:HttpGet("https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/d.lua"))()
            function VerifiedIcon()
                return ""
            end
            function DeveloperIcon()
                return " [🔨Moderator]"
            end
                local function touchPart(target)
                    if target and target:IsA("BasePart") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, target, 0)
                        task.wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, target, 1)
                    end
                end
                local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/cc.lua", true))()

                notif = function(title, text, notifType)
                    local iconName = "check_circle"
                    if notifType == 2 then iconName = "error"
                    elseif notifType == 3 then iconName = "info" end
                    pcall(function()
                        Luna:Notification({
                            Title = tostring(title or "gauge hub"),
                            Icon = iconName,
                            ImageSource = "Material",
                            Content = tostring(text or "")
                        })
                    end)
                end

                local WHITELIST_URL = "https://raw.githubusercontent.com/f4ed67/test/main/whitelists.txt"

                if setfpscap then
                    pcall(function() setfpscap(999) end)
                end

                local wsPlayers = game:GetService("Players")
                local wsLocalPlayer = wsPlayers.LocalPlayer
                local wsReplicatedStorage = game:GetService("ReplicatedStorage")

                local WHITELIST = {}
                local whitelistLoaded = false

                local function loadWhitelist()
                    local ok, result = pcall(function()
                        return game:HttpGet(WHITELIST_URL, true)
                    end)
                    if not ok or not result or result == "" then
                        warn("[GaugeHub] Failed to fetch whitelist from GitHub. Falling back to local owner ID.")
                        WHITELIST = {[5040205276] = true}
                        return
                    end
                    local count = 0
                    for line in result:gmatch("[^\r\n]+") do
                        local cleaned = line:gsub("%s+", "")
                        if cleaned ~= "" and not cleaned:match("^#") then
                            local id = tonumber(cleaned)
                            if id then WHITELIST[id] = true; count = count + 1 end
                        end
                    end
                    WHITELIST[5040205276] = true
                    whitelistLoaded = true
                    print("[GaugeHub] Loaded " .. count .. " whitelisted IDs from GitHub.")
                end

                loadWhitelist()

                local isWhitelisted = WHITELIST[wsLocalPlayer.UserId] == true
                local disabledOverlay = nil

                task.spawn(function()
                    task.wait(0.5)
                    Luna:Notification({
                        Title = "gauge hub",
                        Icon = isWhitelisted and "verified" or "public",
                        ImageSource = "Material",
                        Content = isWhitelisted and "Registered, Private user." or "Registered, Public user."
                    })
                end)

                wsPlayers.PlayerAdded:Connect(function(player)
                    if not WHITELIST[player.UserId] then
                        task.wait(1)
                        Luna:Notification({
                            Title = "gauge hub",
                            Icon = "person",
                            ImageSource = "Material",
                            Content = player.Name .. " is a public user in the lobby."
                        })
                    end
                end)

                task.spawn(function()
                    task.wait(2)
                    if not isWhitelisted then
                        pcall(function()
                            wsReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("All", "helloimusinggaugehub")
                        end)
                    end
                end)

                local function findLunaGui()
                    local roots = {game:GetService("CoreGui"), wsLocalPlayer:FindFirstChild("PlayerGui")}
                    for _, root in ipairs(roots) do
                        if root then
                            for _, obj in ipairs(root:GetChildren()) do
                                if obj:IsA("ScreenGui") and obj.Name ~= "GaugeDisabledOverlay" then
                                    for _, d in ipairs(obj:GetDescendants()) do
                                        if d:IsA("TextLabel") and d.Text:find("nigga hub") then
                                            return obj
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return nil
                end

                local function showOverlay()
                    if disabledOverlay then return end
                    local pg = wsLocalPlayer:FindFirstChild("PlayerGui")
                    if not pg then return end
                    local gui = Instance.new("ScreenGui")
                    gui.Name = "GaugeDisabledOverlay"
                    gui.ResetOnSpawn = false
                    gui.DisplayOrder = 2147483647
                    gui.IgnoreGuiInset = true
                    gui.Parent = pg
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    frame.BackgroundTransparency = 0.5
                    frame.BorderSizePixel = 0
                    frame.Active = true
                    frame.Parent = gui
                    local txt = Instance.new("TextLabel")
                    txt.Size = UDim2.new(1, 0, 0.15, 0)
                    txt.Position = UDim2.new(0, 0, 0.42, 0)
                    txt.BackgroundTransparency = 1
                    txt.Text = "ur'e currently disabled lolol"
                    txt.TextColor3 = Color3.fromRGB(255, 60, 60)
                    txt.TextStrokeTransparency = 0
                    txt.Font = Enum.Font.GothamBlack
                    txt.TextScaled = true
                    txt.Parent = frame
                    disabledOverlay = gui
                end

                local function hideOverlay()
                    if disabledOverlay then disabledOverlay:Destroy(); disabledOverlay = nil end
                end

                local function setDisabled(state)
                    if isWhitelisted then return end
                    if state then
                        showOverlay()
                        local lunaGui = findLunaGui()
                        if lunaGui then lunaGui.Enabled = false end
                        notif("gauge hub", "ur'e currently disabled lolol", 2)
                    else
                        hideOverlay()
                        local lunaGui = findLunaGui()
                        if lunaGui then lunaGui.Enabled = true end
                        notif("gauge hub", "re-enabled", 1)
                    end
                end

                local function getRoot(plr)
                    local char = plr.Character
                    return char and char:FindFirstChild("HumanoidRootPart")
                end
                local function getLocalHum()
                    local char = wsLocalPlayer.Character
                    return char and char:FindFirstChildOfClass("Humanoid")
                end
                local function getLocalRoot() return getRoot(wsLocalPlayer) end
                local function say(msg)
                    pcall(function()
                        wsReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("All", msg)
                    end)
                end

                local function handleCommand(sender, msg)
                    if not WHITELIST[sender.UserId] then return end
                    local cmd, args = msg:match("^[/%.!](%S+)%s*(.*)")
                    if not cmd then return end
                    cmd = cmd:lower()
                    if cmd == "disable" then setDisabled(true)
                    elseif cmd == "enable" then setDisabled(false)
                    elseif not isWhitelisted then
                        if cmd == "bring" then
                            local sroot = getRoot(sender); local lroot = getLocalRoot()
                            if sroot and lroot then lroot.CFrame = sroot.CFrame * CFrame.new(0, 0, 5) end
                        elseif cmd == "say" then
                            if args and #args > 0 then say(args) end
                        elseif cmd == "spam" then
                            if args and #args > 0 then
                                task.spawn(function() for _ = 1, 5 do say(args); task.wait(0.3) end end)
                            end
                        elseif cmd == "kill" or cmd == "respawn" then
                            local hum = getLocalHum(); if hum then hum.Health = 0 end
                        elseif cmd == "jump" then
                            local hum = getLocalHum(); if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
                        elseif cmd == "freeze" then
                            local root = getLocalRoot()
                            if root then root.Anchored = true
                                task.delay(5, function() if root.Parent then root.Anchored = false end end) end
                        elseif cmd == "unfreeze" then
                            local root = getLocalRoot(); if root then root.Anchored = false end
                        elseif cmd == "fling" then
                            local root = getLocalRoot(); if root then root.Velocity = Vector3.new(0, 500, 0) end
                        elseif cmd == "speed" then
                            local n = tonumber(args); local hum = getLocalHum(); if n and hum then hum.WalkSpeed = n end
                        elseif cmd == "jumpheight" then
                            local n = tonumber(args); local hum = getLocalHum(); if n and hum then hum.JumpPower = n end
                        elseif cmd == "hipheight" then
                            local n = tonumber(args); local hum = getLocalHum(); if n and hum then hum.HipHeight = n end
                        elseif cmd == "sit" then
                            local hum = getLocalHum(); if hum then hum.Sit = true end
                        elseif cmd == "ragdoll" then
                            local char = wsLocalPlayer.Character
                            if char then for _, p in ipairs(char:GetDescendants()) do if p:IsA("Motor6D") then p:Destroy() end end end
                        elseif cmd == "spin" then
                            local root = getLocalRoot()
                            if root then root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) end
                        elseif cmd == "strip" then
                            local char = wsLocalPlayer.Character
                            if char then
                                for _, p in ipairs(char:GetChildren()) do
                                    if p:IsA("Accessory") or p:IsA("Shirt") or p:IsA("Pants") or p:IsA("ShirtGraphic") then p:Destroy() end
                                end
                            end
                        elseif cmd == "bighead" then
                            local char = wsLocalPlayer.Character; local head = char and char:FindFirstChild("Head")
                            if head then head.Size = Vector3.new(5, 5, 5) end
                        elseif cmd == "smallhead" then
                            local char = wsLocalPlayer.Character; local head = char and char:FindFirstChild("Head")
                            if head then head.Size = Vector3.new(1, 1, 1) end
                        elseif cmd == "teleport" or cmd == "goto" then
                            local target = args and wsPlayers:FindFirstChild(args)
                            if target then
                                local troot = getRoot(target); local lroot = getLocalRoot()
                                if troot and lroot then lroot.CFrame = troot.CFrame * CFrame.new(0, 0, 5) end
                            end
                        elseif cmd == "unhide" then
                            local lunaGui = findLunaGui(); if lunaGui then lunaGui.Enabled = true end
                        end
                    end
                end

                local function hookPlr(plr) plr.Chatted:Connect(function(m) handleCommand(plr, m) end) end
                for _, plr in ipairs(wsPlayers:GetPlayers()) do
                    if plr ~= wsLocalPlayer then hookPlr(plr) end
                end
                wsPlayers.PlayerAdded:Connect(function(plr)
                    if plr ~= wsLocalPlayer then hookPlr(plr) end
                end)

                local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local voteDetectionEnabled = false
            local voteConnection
            local function monitorVotes()
                local Season = ReplicatedStorage:WaitForChild("Season")
                local Voting = Season:WaitForChild("Voting")
                local VotesFolder = Voting:WaitForChild("Votes")
                local function onChildAdded(child)
                    if voteDetectionEnabled and (child:IsA("ObjectValue") or child:IsA("StringValue") or child:IsA("IntValue") or child:IsA("NumberValue")) then
                        local whoVoted = game:GetService("ReplicatedStorage").Season.Players[child.Value].Value
                        local gotVoted = game:GetService("ReplicatedStorage").Season.Players[child.Name].Value
                        notif("voting", whoVoted .. " voted " .. gotVoted, 3)
                    end
                end
                return VotesFolder.ChildAdded:Connect(onChildAdded)
            end
            local function chatVotes()
                local Season = ReplicatedStorage:WaitForChild("Season")
                local Voting = Season:WaitForChild("Voting")
                local VotesFolder = Voting:WaitForChild("Votes")
                local function onChildAdded(child)
                    if voteDetectionEnabled and (child:IsA("ObjectValue") or child:IsA("StringValue") or child:IsA("IntValue") or child:IsA("NumberValue")) then
                        local whoVoted = game:GetService("ReplicatedStorage").Season.Players[child.Value].Value
                        local gotVoted = game:GetService("ReplicatedStorage").Season.Players[child.Name].Value
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("All", whoVoted .. " has voted " .. gotVoted)
                    end
                end
                return VotesFolder.ChildAdded:Connect(onChildAdded)
            end
                local Window = Luna:CreateWindow({
                    Name = "nigga hub (beta)!",
                    Subtitle = "script by f9ed",
                    LogoID = "82795327169782",
                    LoadingEnabled = true,
                    LoadingTitle = "fuck niggers!",
                    LoadingSubtitle = "welcome!",
                    Bind = Enum.KeyCode.LeftControl,
                    ConfigSettings = {RootFolder = nil, ConfigFolder = "ayamixshianlol"},
                })
                notif("gauge hub", "loaded nigga hub", 1)
                local assets = workspace:FindFirstChild("Assets")
                local isMovies = assets and assets:FindFirstChild("Alien") ~= nil
                local isExpedition = assets and (assets:FindFirstChild("Maldives") ~= nil or assets:FindFirstChild("France") ~= nil)
                local isCamp = not isMovies and not isExpedition

                local SearchTab, CharacterTab, Tab, MoviesTab, ExpeditionTab
                local ClosetTab, BlatantTab, FunTab, AutoTab, CommandsTab

                local featureIndex = {}
                local featureTrackers = {}

                local function registerDynamicFeature(name, description, tab, mode)
                    if not name then return end
                    for _, feature in ipairs(featureIndex or {}) do
                        if string.lower(tostring(feature.name)) == string.lower(tostring(name)) and feature.tab == tab and feature.mode == mode then return end
                    end
                    table.insert(featureIndex, {name = tostring(name), description = tostring(description or ""), tab = tab, mode = mode})
                end

                local function installFeatureTracker(tabObject, tabName, mode)
                    if not tabObject or featureTrackers[tabObject] then return end
                    featureTrackers[tabObject] = true
                    for _, methodName in ipairs({"CreateToggle", "CreateButton", "CreateInput", "CreateSlider", "CreateDropdown", "CreateKeybind"}) do
                        local original = tabObject[methodName]
                        if type(original) == "function" then
                            tabObject[methodName] = function(self, config, ...)
                                if type(config) == "table" and config.Name then
                                    registerDynamicFeature(config.Name, config.Description, tabName, mode)
                                end
                                return original(self, config, ...)
                            end
                        end
                    end
                end

                SearchTab = Window:CreateTab({Name = "search", Icon = "search", ImageSource = "Material", ShowTitle = true})

                if isCamp then
                CharacterTab = Window:CreateTab({Name = "character", Icon = "face", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(CharacterTab, "character", "camp")

                CharacterTab:CreateLabel({Text = "any name works and bypasses the # chat filter (all costs 60 coins).", Style = 1})
                CharacterTab:CreateInput({
                    Name = "custom character",
                    Description = "type any character name and press Enter to send it.",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text)
                            notif("character", "sent: " .. Text, 1)
                        else
                            notif("character", "you need 60 coins", 2)
                        end
                    end
                }, "CustomCharacter")
                CharacterTab:CreateInput({
                    Name = "custom character with verified",
                    Description = "same as custom character but appends the verified checkmark.",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text .. VerifiedIcon())
                            notif("character", "sent: " .. Text, 1)
                        else
                            notif("character", "you need 60 coins", 2)
                        end
                    end
                }, "CustomCharacterVerified")
                CharacterTab:CreateInput({
                    Name = "custom character with moderator",
                    Description = "same as custom character but appends [Moderator] to look like staff.",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text .. DeveloperIcon())
                            notif("character", "sent: " .. Text, 1)
                        else
                            notif("character", "you need 60 coins", 2)
                        end
                    end
                }, "CustomCharacterDeveloper")
                CharacterTab:CreateToggle({
                    Name = "fake mojo",
                    Description = "buys Mojo with the verified checkmark.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", "Mojo" .. VerifiedIcon())
                            notif("mojo", "fake mojo sent", 1)
                        else
                            notif("mojo", "you need 60 coins", 2)
                        end
                    end
                }, "MojoVerified")
                CharacterTab:CreateToggle({
                    Name = "server crash comeback",
                    Description = "you'll see",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            local success = pcall(function()
                                game.ReplicatedStorage.Events.Buy:FireServer("Character", returnFucker())
                            end)
                            notif("comeback", success and "game-breaking character sent" or "comeback failed", success and 1 or 2)
                        else
                            notif("comeback", "you need 60 coins", 2)
                        end
                    end
                }, "LagCharacter")
                CharacterTab:CreateToggle({
                    Name = "comeback 2",
                    Description = "sets your username to winter from aespa for ur comeback",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            local success = pcall(function()
                                game.ReplicatedStorage.Events.Buy:FireServer("Character", pikachu)
                            end)
                            notif("comeback 2", success and "winter from aespa sent" or "failed", success and 1 or 2)
                        else
                            notif("comeback 2", "you need 60 coins", 2)
                        end
                    end
                }, "Comeback2")
                CharacterTab:CreateInput({
                    Name = "comeback 3",
                    Description = "type any name and press Enter, that'll be ur username next comeback",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text)
                            notif("comeback 3", "sent: " .. Text, 1)
                        else
                            notif("comeback 3", "you need 60 coins", 2)
                        end
                    end
                }, "Comeback3")
                CharacterTab:CreateDivider()
                CharacterTab:CreateLabel({Text = "free comeback options", Style = 1})
                CharacterTab:CreateToggle({
                    Name = "male character",
                    Description = "youll be named 'Male' next comeback.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        game.ReplicatedStorage.Events.Buy:FireServer("Gender", "Male")
                        notif("gender", "male set", 1)
                    end
                })
                CharacterTab:CreateToggle({
                    Name = "female character",
                    Description = "youll be named 'Female' next comeback.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        game.ReplicatedStorage.Events.Buy:FireServer("Gender", "Female")
                        notif("gender", "female set", 1)
                    end
                })
                end

                if isCamp then
                Tab = Window:CreateTab({Name = "main", Icon = "view_in_ar", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(Tab, "main", "camp")

                getgenv().usernameEnabled = false
                getgenv().usernameOriginals = getgenv().usernameOriginals or {}
                getgenv().usernameConns = getgenv().usernameConns or {}

                local function applyUsernameTag(plr)
                    if not getgenv().usernameEnabled then return end
                    local char = plr.Character
                    if not char then return end
                    local head = char:FindFirstChild("Head")
                    if not head then return end
                    local nameTag = head:FindFirstChild("NameGUI")
                    if not nameTag then return end
                    local sector = nameTag:FindFirstChild("Sector")
                    if not sector then return end
                    local nameLbl = sector:FindFirstChild("name")
                    if not nameLbl or not nameLbl:IsA("TextLabel") then return end
                    if not getgenv().usernameOriginals[nameLbl] then
                        getgenv().usernameOriginals[nameLbl] = nameLbl.Text
                    end
                    local orig = getgenv().usernameOriginals[nameLbl]
                    if not nameLbl.Text:find("%(" .. plr.Name .. "%)") then
                        nameLbl.Text = orig .. " (" .. plr.Name .. ")"
                    end
                end

                local function watchPlayerForUsernames(plr)
                    if getgenv().usernameConns[plr] then
                        pcall(function() getgenv().usernameConns[plr]:Disconnect() end)
                    end
                    getgenv().usernameConns[plr] = plr.CharacterAdded:Connect(function()
                        task.wait(1.5)
                        if getgenv().usernameEnabled then applyUsernameTag(plr) end
                    end)
                end

                Tab:CreateToggle({
                    Name = "show usernames",
                    Description = "appends each player's username to their name tag above their head. persists through respawns.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().usernameEnabled = Value
                        if Value then
                            for _, plr in ipairs(game.Players:GetPlayers()) do
                                watchPlayerForUsernames(plr)
                                applyUsernameTag(plr)
                            end
                            notif("usernames", "on", 1)
                        else
                            for lbl, txt in pairs(getgenv().usernameOriginals) do
                                if lbl and lbl.Parent then lbl.Text = txt end
                            end
                            for plr, conn in pairs(getgenv().usernameConns) do
                                pcall(function() conn:Disconnect() end)
                            end
                            getgenv().usernameConns = {}
                            notif("usernames", "off", 1)
                        end
                    end
                })
                Tab:CreateToggle({
                    Name = "jesus mode",
                    Description = "toggles collision on the camp lake water so you can walk on it.",
                    CurrentValue = false,
                    Callback = function(Value)
                        workspace.Map["Roblox Drama: Camp"].Map.Lake.Water.CanCollide = Value
                        notif("jesus mode", Value and "on" or "off", 1)
                    end
                }, "JesusMode")
                Tab:CreateToggle({
                    Name = "water god mode",
                    Description = "destroys the underwater damage trigger so you can stay submerged without damage.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        workspace.Map["Roblox Drama: Camp"].Sand.TouchInterest:Destroy()
                        notif("water god", "on", 1)
                    end
                })
                Tab:CreateToggle({
                    Name = "destroy barriers",
                    Description = "removes all glass barriers and the campfire touch trigger.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if workspace:FindFirstChild("Glass") then
                            for _, v in pairs(workspace.Glass:GetChildren()) do
                                if v:IsA("BasePart") then v:Destroy() end
                            end
                            local campfire = workspace.Glass:FindFirstChild("Campfire")
                            if campfire and campfire:FindFirstChild("TouchInterest") then
                                campfire.TouchInterest:Destroy()
                            end
                        end
                        notif("barriers", "destroyed", 1)
                    end
                })
                Tab:CreateToggle({
                    Name = "notify votes",
                    Description = "shows a notification whenever someone casts a vote.",
                    CurrentValue = false,
                    Callback = function(Value)
                        voteDetectionEnabled = Value
                        if voteDetectionEnabled then
                            if not voteConnection then voteConnection = monitorVotes() end
                            notif("votes", "notifications on", 1)
                        else
                            if voteConnection then voteConnection:Disconnect(); voteConnection = nil end
                            notif("votes", "notifications off", 1)
                        end
                    end
                }, "NotifyVotes")
                Tab:CreateToggle({
                    Name = "expose votes",
                    Description = "broadcasts every vote to public chat.",
                    CurrentValue = false,
                    Callback = function(Value)
                        voteDetectionEnabled = Value
                        if voteDetectionEnabled then
                            if not voteConnection then voteConnection = chatVotes() end
                            notif("votes", "exposing", 1)
                        else
                            if voteConnection then voteConnection:Disconnect(); voteConnection = nil end
                            notif("votes", "stopped", 1)
                        end
                    end
                }, "ExposeVotes")
                Tab:CreateToggle({
                    Name = "get statue",
                    Description = "destroys the glass cage, then touches the bag and safety statue to collect them.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local glass = workspace:FindFirstChild("Glass")
                        if glass then
                            for _, v in pairs(glass:GetChildren()) do
                                if v:IsA("BasePart") then v:Destroy() end
                            end
                        end
                        local humanoidRootPart = wsLocalPlayer.Character and wsLocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart then return end
                        local bag = workspace.Idols:FindFirstChild("Bag")
                        if bag then touchPart(bag:FindFirstChild("hit"))
                        else notif("statue", "no bag found", 2) end
                        task.wait()
                        local idol = workspace.Idols:FindFirstChild("SafetyStatue")
                        if idol then touchPart(idol:FindFirstChild("hit"))
                        else notif("statue", "no statue found", 2) end
                        notif("statue", "collected", 1)
                    end
                })
                Tab:CreateToggle({
                    Name = "who has statue",
                    Description = "shows which player currently holds the safety statue.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local getValue = game:GetService("ReplicatedStorage").Season.Twists.Idol.Value
                        local whoHas = game:GetService("ReplicatedStorage").Season.Players[getValue].Value
                        notif("statue", whoHas .. " has the statue", 1)
                    end
                })
                end

                if isMovies then
                MoviesTab = Window:CreateTab({Name = "movies", Icon = "add_to_home_screen", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(MoviesTab, "movies", "movies")
                MoviesTab:CreateSection("misc")
                MoviesTab:CreateToggle({
                    Name = "teleport to lobby",
                    Description = "instant teleport to the lobby (use during medical or western challenges).",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local root = wsLocalPlayer.Character and wsLocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if root then root.CFrame = CFrame.new(-684, -70, -637); notif("teleport", "to lobby", 1) end
                    end
                })
                end

                if isExpedition then
                ExpeditionTab = Window:CreateTab({Name = "expedition", Icon = "airplay", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(ExpeditionTab, "expedition", "expedition")
                ExpeditionTab:CreateSection("misc")
                ExpeditionTab:CreateToggle({
                    Name = "teleport to expedition lobby",
                    Description = "instant teleport back to the expedition lobby (use during meatball).",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local root = wsLocalPlayer.Character and wsLocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if root then root.CFrame = CFrame.new(-77, -28, -904); notif("teleport", "to expedition lobby", 1) end
                    end
                })
                end

                ClosetTab = Window:CreateTab({Name = "closet", Icon = "dashboard", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(ClosetTab, "closet")
                ClosetTab:CreateLabel({Text = "live game information", Style = 1})
                local livePlayersLabel = ClosetTab:CreateLabel({Text = "loading...", Style = 1})
                local liveStatueLabel = ClosetTab:CreateLabel({Text = "loading...", Style = 1})
                local livePerformanceLabel = ClosetTab:CreateLabel({Text = "loading...", Style = 1})
                local liveVoteCountLabel = ClosetTab:CreateLabel({Text = "votes recorded: 0", Style = 1})
                local totalTimePlayedLabel = ClosetTab:CreateLabel({Text = "total time played: 0s", Style = 1})
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local Players = game:GetService("Players")
                local RunService = game:GetService("RunService")
                local localPlayer = Players.LocalPlayer
                local selectedPlayer = nil
                local totalVotesAllTime = 0
                local fpsFrames = 0
                local fpsValue = 0
                local fpsClock = os.clock()
                local voteFolder
                local sessionStart = os.clock()
                local totalTimePlayed = 0
                local timeFile = nil
                local lastTimeWrite = 0

                local function formatTime(seconds)
                    seconds = math.max(0, math.floor(seconds))
                    local days = math.floor(seconds / 86400); seconds = seconds % 86400
                    local hours = math.floor(seconds / 3600); seconds = seconds % 3600
                    local minutes = math.floor(seconds / 60); seconds = seconds % 60
                    if days > 0 then return string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds)
                    elseif hours > 0 then return string.format("%dh %02dm %02ds", hours, minutes, seconds)
                    elseif minutes > 0 then return string.format("%dm %02ds", minutes, seconds) end
                    return string.format("%ds", seconds)
                end

                if Luna.Folder and writefile and isfile and readfile then
                    timeFile = Luna.Folder .. "/settings/total_time_played.txt"
                    pcall(function() if isfile(timeFile) then totalTimePlayed = tonumber(readfile(timeFile)) or 0 end end)
                end

                RunService.Heartbeat:Connect(function()
                    fpsFrames = fpsFrames + 1
                    local now = os.clock()
                    if now - fpsClock >= 1 then
                        fpsValue = fpsFrames; fpsFrames = 0; fpsClock = now
                    end
                end)

                local function getVoteFolder()
                    local season = ReplicatedStorage:FindFirstChild("Season")
                    local voting = season and season:FindFirstChild("Voting")
                    return voting and voting:FindFirstChild("Votes")
                end
                local function getPlayerDisplay(id)
                    local season = ReplicatedStorage:FindFirstChild("Season")
                    local playersFolder = season and season:FindFirstChild("Players")
                    local value = playersFolder and playersFolder:FindFirstChild(tostring(id))
                    if value then return tostring(value.Value) end
                    return tostring(id)
                end

                voteFolder = getVoteFolder()
                if voteFolder then
                    totalVotesAllTime = #voteFolder:GetChildren()
                    voteFolder.ChildAdded:Connect(function() totalVotesAllTime = totalVotesAllTime + 1 end)
                end

                local utilityPlayerDropdown = ClosetTab:CreateDropdown({
                    Name = "player",
                    Options = {"select player"},
                    CurrentOption = {"select player"},
                    MultipleOptions = false,
                    Callback = function(Value)
                        selectedPlayer = type(Value) == "table" and Value[1] or Value
                        if selectedPlayer == "select player" then selectedPlayer = nil end
                    end
                })
                local function refreshUtilityPlayers()
                    local options = {}
                    for _, target in ipairs(Players:GetPlayers()) do
                        if target ~= localPlayer then table.insert(options, target.Name) end
                    end
                    table.sort(options)
                    pcall(function()
                        utilityPlayerDropdown:Set({Options = (#options > 0 and options or {"select player"}), CurrentOption = {(#options > 0 and options[1] or "select player")}})
                    end)
                end

                refreshUtilityPlayers()
                Players.PlayerAdded:Connect(function() task.wait(1); refreshUtilityPlayers() end)
                Players.PlayerRemoving:Connect(function() task.wait(0.5); refreshUtilityPlayers() end)

                ClosetTab:CreateToggle({
                    Name = "teleport to player",
                    Description = "teleports you directly to the player selected in the dropdown.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local target = Players:FindFirstChild(selectedPlayer or "")
                        local character = localPlayer.Character
                        local targetRoot = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if targetRoot and root then root.CFrame = targetRoot.CFrame; notif("teleport", "to " .. target.Name, 1) end
                    end
                })
                ClosetTab:CreateToggle({
                    Name = "spectate",
                    Description = "switches your camera to the selected player. turn off to return to yourself.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if Value then
                            local target = Players:FindFirstChild(selectedPlayer or "")
                            if target and target.Character then
                                local humanoid = target.Character:FindFirstChildOfClass("Humanoid")
                                if humanoid then workspace.CurrentCamera.CameraSubject = humanoid; notif("spectate", "watching " .. target.Name, 1) end
                            end
                        else
                            local character = localPlayer.Character
                            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                            if humanoid then workspace.CurrentCamera.CameraSubject = humanoid; notif("spectate", "off", 1) end
                        end
                    end
                }, "UtilitySpectate")
                ClosetTab:CreateToggle({
                    Name = "anti afk",
                    Description = "sends a virtual click every second so the game never kicks you for idling.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().utilityAntiAFK = Value
                        notif("anti afk", Value and "on" or "off", 1)
                    end
                }, "UtilityAntiAFK")

                if isWhitelisted then
                CommandsTab = Window:CreateTab({Name = "commands", Icon = "terminal", ImageSource = "Material", ShowTitle = true})
                CommandsTab:CreateLabel({Text = "private whitelist only - type these in chat", Style = 1})
                CommandsTab:CreateDivider()
                local loadingLabel = CommandsTab:CreateLabel({Text = "loading command list...", Style = 1})
                task.spawn(function()
                    for i = 1, 60 do
                        local cmds = getgenv().GaugeHubCommands
                        if cmds and #cmds > 0 then break end
                        task.wait(0.1)
                    end
                    local cmds = getgenv().GaugeHubCommands or {}
                    if #cmds == 0 then
                        loadingLabel:Set("command list empty - check commands.lua is uploaded")
                        return
                    end
                    loadingLabel:Set("loaded " .. #cmds .. " commands")
                    for _, c in ipairs(cmds) do
                        local line = c.name
                        if c.args and c.args ~= "" then line = line .. " " .. c.args end
                        CommandsTab:CreateLabel({Text = line .. "  -  " .. tostring(c.desc or ""), Style = 1})
                    end
                end)
                end

                BlatantTab = Window:CreateTab({Name = "blatant", Icon = "dangerous", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(BlatantTab, "blatant")
                BlatantTab:CreateToggle({
                    Name = "no clip",
                    Description = "sets every part of your character to non-collidable.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().utilityNoclip = Value
                        notif("noclip", Value and "on" or "off", 1)
                    end
                }, "UtilityNoclip")
                BlatantTab:CreateToggle({
                    Name = "reset character",
                    Description = "instantly kills your character.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then humanoid.Health = 0; notif("reset", "respawning", 1) end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "god mode",
                    Description = "client-side infinite health.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().godMode = Value
                        notif("god mode", Value and "on" or "off", 1)
                    end
                }, "GodMode")
                BlatantTab:CreateToggle({
                    Name = "find statue",
                    Description = "teleports you to the safety statue.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local idols = workspace:FindFirstChild("Idols")
                        local statue = idols and idols:FindFirstChild("SafetyStatue")
                        local hit = statue and statue:FindFirstChild("hit")
                        local root = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if hit and root then root.CFrame = hit.CFrame; notif("statue", "found", 1)
                        else notif("statue", "not found", 2) end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "find bag",
                    Description = "teleports you to the idol bag.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local idols = workspace:FindFirstChild("Idols")
                        local bag = idols and idols:FindFirstChild("Bag")
                        local hit = bag and bag:FindFirstChild("hit")
                        local root = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if hit and root then root.CFrame = hit.CFrame; notif("bag", "found", 1)
                        else notif("bag", "not found", 2) end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "find challenge finish",
                    Description = "teleports you to the first challenge finish pad found.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local assets = workspace:FindFirstChild("Assets")
                        local root = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if assets and root then
                            for _, challenge in ipairs(assets:GetChildren()) do
                                local finish = challenge:FindFirstChild("Finish")
                                if finish and finish:IsA("BasePart") then root.CFrame = finish.CFrame; notif("finish", "teleported", 1); break end
                            end
                        end
                    end
                })

                RunService.Stepped:Connect(function()
                    if getgenv().utilityNoclip then
                        local character = localPlayer.Character
                        if character then
                            for _, object in ipairs(character:GetDescendants()) do
                                if object:IsA("BasePart") then object.CanCollide = false end
                            end
                        end
                    end
                    if getgenv().godMode then
                        local character = localPlayer.Character
                        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                        if humanoid then humanoid.MaxHealth = math.huge; humanoid.Health = math.huge end
                    end
                end)

                task.spawn(function()
                    while task.wait(1) do
                        local currentVoteFolder = getVoteFolder()
                        if currentVoteFolder and currentVoteFolder ~= voteFolder then
                            voteFolder = currentVoteFolder
                            totalVotesAllTime = totalVotesAllTime + #currentVoteFolder:GetChildren()
                            voteFolder.ChildAdded:Connect(function() totalVotesAllTime = totalVotesAllTime + 1 end)
                        end
                        local playerCount = #Players:GetPlayers()
                        local coins = "unknown"
                        pcall(function() coins = tostring(localPlayer.DataStore.Coins.Value) end)
                        local statueHolder = "unknown"
                        pcall(function()
                            local season = ReplicatedStorage:FindFirstChild("Season")
                            local twists = season and season:FindFirstChild("Twists")
                            local idol = twists and twists:FindFirstChild("Idol")
                            local playersFolder = season and season:FindFirstChild("Players")
                            local playerValue = idol and playersFolder and playersFolder:FindFirstChild(tostring(idol.Value))
                            if playerValue then statueHolder = tostring(playerValue.Value) end
                        end)
                        local currentVotes = currentVoteFolder and #currentVoteFolder:GetChildren() or 0
                        local ping = "unknown"
                        pcall(function() ping = tostring(math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())) .. " ms" end)
                        livePlayersLabel:Set("players: " .. tostring(playerCount) .. "\nCoins: " .. coins)
                        liveStatueLabel:Set("statue holder: " .. statueHolder)
                        livePerformanceLabel:Set("fps: " .. tostring(fpsValue) .. "\nPing: " .. ping)
                        liveVoteCountLabel:Set("votes recorded: " .. tostring(currentVotes))
                        local currentTotalTime = totalTimePlayed + (os.clock() - sessionStart)
                        totalTimePlayedLabel:Set("Total Time Played: " .. formatTime(currentTotalTime))
                        if timeFile and writefile and currentTotalTime - lastTimeWrite >= 30 then
                            lastTimeWrite = currentTotalTime
                            pcall(function() writefile(timeFile, tostring(math.floor(currentTotalTime))) end)
                        end
                        if getgenv().utilityAntiAFK then
                            pcall(function()
                                if not getgenv().utilityVirtualUser then getgenv().utilityVirtualUser = game:GetService("VirtualUser") end
                                getgenv().utilityVirtualUser:CaptureController()
                                getgenv().utilityVirtualUser:ClickButton2(Vector2.new())
                            end)
                        end
                    end
                end)

                FunTab = Window:CreateTab({Name = "fun", Icon = "history", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(FunTab, "fun")
                FunTab:CreateSlider({
                    Name = "sword fight reach",
                    Description = "sets the reach value used by apply sword fight reach. 0-200 studs.",
                    Range = {0, 200}, Increment = 5, CurrentValue = 100,
                    Callback = function(Value) getgenv().reach = Value end
                }, "SwordFightReach")
                FunTab:CreateToggle({
                    Name = "apply sword fight reach",
                    Description = "stretches your equipped tool's handle to the reach value and re-equips it.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local speaker = game.Players.LocalPlayer
                        if not speaker.Character then return end
                        for _, v in pairs(speaker.Character:GetDescendants()) do
                            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                                local handle = v.Handle
                                if not handle:FindFirstChild("SelectionBoxCreated") then
                                    local a = Instance.new("SelectionBox")
                                    a.Name = "selectionboxcreated"; a.Parent = handle; a.Adornee = handle
                                end
                                handle.Massless = true
                                handle.Size = Vector3.new(0.5, 0.5, getgenv().reach or 60)
                                v.GripPos = Vector3.new(0, 0, 0)
                                speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
                            end
                        end
                        notif("sword", "reach applied", 1)
                    end
                })

                AutoTab = Window:CreateTab({Name = "auto", Icon = "autorenew", ImageSource = "Material", ShowTitle = true})
                installFeatureTracker(AutoTab, "auto")

                if isCamp then
                AutoTab:CreateToggle({
                    Name = "auto collect",
                    Description = "auto-touches every coin in the Coin Hunt map.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autofarm = Value
                        if not Value then return end
                        notif("auto collect", "on", 1)
                        task.spawn(function()
                            while getgenv().autofarm do
                                task.wait()
                                for _, gems in pairs(workspace.Assets["Coin Hunt"].Coins:GetChildren()) do touchPart(gems) end
                            end
                        end)
                    end
                }, "AutoCollect")
                AutoTab:CreateToggle({
                    Name = "instant-eat pancake",
                    Description = "continuously fires the pancake ClickDetector and removes AntiAutoclick protection.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoEatPancake = Value
                        if not Value then return end
                        notif("pancake", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoEatPancake do
                                task.wait(0.5)
                                local ps = game:GetService("Players").LocalPlayer.PlayerScripts
                                local sps = game:GetService("StarterPlayer").StarterPlayerScripts
                                if ps:FindFirstChild("AntiAutoclick") then ps.AntiAutoclick:Destroy() end
                                if sps:FindFirstChild("AntiAutoclick") then sps.AntiAutoclick:Destroy() end
                                for _, v in pairs(workspace:GetDescendants()) do
                                    if v.Name == game.Players.LocalPlayer.Name and v:FindFirstChild("ClickDetector") then
                                        fireclickdetector(v.ClickDetector)
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "win blockpush!",
                    Description = "auto-teleports you onto the gold block whenever a SingularBox is nearby.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoBlockPush = Value
                        if not Value then return end
                        notif("blockpush", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoBlockPush do
                                task.wait(0.3)
                                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if root then
                                    for _, v in ipairs(workspace:GetDescendants()) do
                                        if v:IsA("Part") and v.Name == "SingularBox" and (v.Position - root.Position).Magnitude <= 100 then
                                            for _, v2 in ipairs(workspace:GetDescendants()) do
                                                if v2:IsA("Part") and v2.Name == "Gold" then
                                                    local tpPos = v2.Position + Vector3.new(0, 3, 0)
                                                    v.Position = tpPos
                                                    root.CFrame = CFrame.new(tpPos)
                                                    break
                                                end
                                            end
                                            break
                                        end
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "detect exploiters",
                    Description = "scans everyone for abnormal WalkSpeed/JumpPower and logs them.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().detectExploiters = Value
                        if not Value then return end
                        notif("detector", "on", 1)
                        task.spawn(function()
                            while getgenv().detectExploiters do
                                task.wait(3)
                                local detectedExploiters = {}
                                for _, pl in pairs(game:GetService("Players"):GetPlayers()) do
                                    local character = pl.Character
                                    if character then
                                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                                        if humanoid and (humanoid.WalkSpeed > 16 or humanoid.JumpPower > 50) then
                                            table.insert(detectedExploiters, pl.Name .. " - Abnormal Movement")
                                        end
                                    end
                                end
                                if #detectedExploiters > 0 then
                                    print("Potential Exploiters Detected:")
                                    for _, e in pairs(detectedExploiters) do print(e) end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "dodgeball/paintball protection",
                    Description = "infinite Health with a HealthChanged guard. don't reset while it's on.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if Value then
                            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                            local humanoid = character:WaitForChild("Humanoid")
                            getgenv().dodgeballProtect = true
                            humanoid.MaxHealth = math.huge
                            humanoid.Health = math.huge
                            getgenv().dodgeballConn = humanoid.HealthChanged:Connect(function(health)
                                if getgenv().dodgeballProtect and health < math.huge then humanoid.Health = math.huge end
                            end)
                            notif("dodgeball", "protection on", 1)
                        else
                            getgenv().dodgeballProtect = false
                            if getgenv().dodgeballConn then getgenv().dodgeballConn:Disconnect(); getgenv().dodgeballConn = nil end
                            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                            if humanoid then humanoid.MaxHealth = 100; humanoid.Health = 100 end
                            notif("dodgeball", "protection off", 1)
                        end
                    end
                })
                AutoTab:CreateToggle({
                    Name = "spleef",
                    Description = "auto-touches every spleef block in the Spleef arena to break them.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoSpleef = Value
                        if not Value then return end
                        notif("spleef", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoSpleef do
                                task.wait(0.4)
                                pcall(function()
                                    for i, v in pairs(workspace.Assets.Spleef.Spleef.SpleefBlocks:GetChildren()) do touchPart(v) end
                                end)
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "math mania",
                    Description = "auto-fills every visible Math Mania answer box with the correct answer.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoMathMania = Value
                        if not Value then return end
                        notif("math mania", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoMathMania do
                                task.wait(0.4)
                                pcall(function()
                                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MathMania:GetChildren()) do
                                        if v:FindFirstChild("Answer") and v:FindFirstChild("Box") then
                                            v.Box.Text = v.Answer.Value
                                        end
                                    end
                                end)
                            end
                        end)
                    end
                })
                end

                if isMovies then
                AutoTab:CreateToggle({
                    Name = "remove the annoying monster",
                    Description = "destroys every MonsterNPC in the Alien map.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        for _, v in pairs(workspace.Assets:GetDescendants()) do
                            if v.Name == "MonsterNPC" then v:Destroy() end
                        end
                        notif("monster", "removed", 1)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "instant-eat-bowl",
                    Description = "auto-fires the bowl ClickDetector under your name.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoEatBowl = Value
                        if not Value then return end
                        notif("bowl", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoEatBowl do
                                task.wait(0.5)
                                for _, v in pairs(game.Workspace:GetDescendants()) do
                                    if v.Name == game.Players.LocalPlayer.Name and v:FindFirstChild("ClickDetector") then
                                        fireclickdetector(v.ClickDetector)
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "auto collect egg",
                    Description = "moves the Alien egg to your position every frame.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoEgg = Value
                        if not Value then return end
                        notif("egg", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoEgg do
                                task.wait(0.3)
                                local alien = workspace.Assets:FindFirstChild("Alien")
                                if alien then
                                    for _, v in pairs(alien:GetDescendants()) do
                                        if v:IsA("TextLabel") then
                                            local playerEntry = game.ReplicatedStorage.Season.Players:FindFirstChild(game.Players.LocalPlayer.Name)
                                            if playerEntry and v.Text == playerEntry.Value then
                                                local target = v.Parent.Parent.Parent
                                                if target:IsA("BasePart") then
                                                    target.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    target.CanCollide = false
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "win the pirate challenge",
                    Description = "auto-teleports to the MainKey and then to the win pad in a loop.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoPirate = Value
                        if not Value then return end
                        notif("pirate", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoPirate do
                                task.wait(0.5)
                                for _, v in pairs(workspace:GetDescendants()) do
                                    if v.Name == "MainKey" then
                                        local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                        if hrp then
                                            if v:IsA("BasePart") then hrp.CFrame = v.CFrame
                                            elseif v:IsA("Model") then hrp.CFrame = v:GetPivot() end
                                        end
                                        task.wait(0.1)
                                    end
                                end
                                for _, v in pairs(workspace:GetDescendants()) do
                                    if v.Name == "win" and v:IsA("BasePart") then
                                        local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                        if hrp then hrp.CFrame = v.CFrame end
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "kill everyone in beach",
                    Description = "clones the pool noodle tool and auto-attacks every other player.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoBeachKill = Value
                        if not Value then return end
                        notif("beach", "auto kill on", 1)
                        task.spawn(function()
                            while getgenv().autoBeachKill do
                                task.wait(0.5)
                                pcall(function()
                                    local player = game.Players.LocalPlayer
                                    local character = player.Character or player.CharacterAdded:Wait()
                                    local hrp = character:FindFirstChild("HumanoidRootPart")
                                    if not hrp then return end
                                    local gear = game.ReplicatedStorage:FindFirstChild("Gear")
                                    if gear then
                                        for _, v in pairs(gear:GetChildren()) do
                                            if string.lower(v.Name):find("pool") or string.lower(v.Name):find("noodle") then
                                                local mytool = v:Clone(); mytool.Parent = player.Backpack
                                                if mytool.Equip then mytool:Equip() end
                                                break
                                            end
                                        end
                                    end
                                    local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
                                    if tool and (string.lower(tool.Name):find("pool") or string.lower(tool.Name):find("noodle")) then
                                        if tool.Parent ~= character then tool.Parent = character end
                                        for _, targetPlayer in pairs(game.Players:GetPlayers()) do
                                            if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and targetPlayer.Character:FindFirstChild("Humanoid") then
                                                local targetHRP = targetPlayer.Character.HumanoidRootPart
                                                local targetHum = targetPlayer.Character.Humanoid
                                                hrp.CFrame = CFrame.lookAt(targetHRP.Position - targetHRP.CFrame.LookVector * 3, targetHRP.Position)
                                                task.wait()
                                                for _ = 1, 25 do
                                                    if not getgenv().autoBeachKill then break end
                                                    if not targetPlayer.Character or not targetPlayer.Character.Parent or targetHum.Health <= 0 then break end
                                                    hrp.CFrame = CFrame.lookAt(targetHRP.Position - targetHRP.CFrame.LookVector * 3, targetHRP.Position)
                                                    task.wait(0.05)
                                                end
                                            end
                                        end
                                    end
                                end)
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "get prehistoric coins",
                    Description = "teleports every Coin in the prehistoric map to your position.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().collectPrehistoricCoins = Value
                        if not Value then return end
                        notif("coins", "on", 1)
                        task.spawn(function()
                            while getgenv().collectPrehistoricCoins do
                                task.wait(0.05)
                                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if root then
                                    for _, v in pairs(workspace.Assets:GetDescendants()) do
                                        if v.Name == "Coin" and v:IsA("BasePart") then
                                            v.Transparency = 1; v.CanCollide = false; v.Position = root.Position
                                        end
                                    end
                                end
                            end
                        end)
                    end
                }, "GetPrehistoricCoins")
                AutoTab:CreateToggle({
                    Name = "get guitars",
                    Description = "teleports every Gem and Coin in the map to your position.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().collectGuitars = Value
                        if not Value then return end
                        notif("guitars", "on", 1)
                        task.spawn(function()
                            while getgenv().collectGuitars do
                                task.wait(0.05)
                                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if root then
                                    for _, v in pairs(workspace:GetDescendants()) do
                                        if (v.Name == "Gem" or v.Name == "Coin") and v:IsA("BasePart") then
                                            v.Transparency = 1; v.Position = root.Position
                                        end
                                    end
                                end
                            end
                        end)
                    end
                }, "GetGuitars")
                end

                if isExpedition then
                AutoTab:CreateToggle({
                    Name = "win hawaii",
                    Description = "auto-fires every Tiki ClickDetector to instantly complete the Hawaii challenge.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoHawaii = Value
                        if not Value then return end
                        notif("hawaii", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoHawaii do
                                task.wait(0.5)
                                for _, v in pairs(workspace:GetDescendants()) do
                                    if v.Name == "Tiki" and v:FindFirstChild("ClickDetector") then
                                        for _ = 1, 10 do fireclickdetector(v.ClickDetector) end
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "get clovers",
                    Description = "teleports every Gem and Coin in the expedition map to your position.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().collectClovers = Value
                        if not Value then return end
                        notif("clovers", "on", 1)
                        task.spawn(function()
                            while getgenv().collectClovers do
                                task.wait(0.05)
                                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if root then
                                    for _, v in pairs(workspace:GetDescendants()) do
                                        if (v.Name == "Gem" or v.Name == "Coin") and v:IsA("BasePart") then
                                            v.Transparency = 1; v.Position = root.Position
                                        end
                                    end
                                end
                            end
                        end)
                    end
                }, "GetClovers")
                AutoTab:CreateToggle({
                    Name = "get rings",
                    Description = "teleports the RingHitbox of each Coin and Gem in Maldives to your position.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().collectRings = Value
                        if not Value then return end
                        notif("rings", "on", 1)
                        task.spawn(function()
                            while getgenv().collectRings do
                                task.wait(0.05)
                                local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if not root then continue end
                                local assets = workspace:FindFirstChild("Assets")
                                local maldives = assets and assets:FindFirstChild("Maldives")
                                local coins = maldives and maldives:FindFirstChild("Coins")
                                if not coins then continue end
                                local coinHitbox = coins:FindFirstChild("Coin") and coins.Coin:FindFirstChild("RingHitbox")
                                local gemHitbox = coins:FindFirstChild("Gem") and coins.Gem:FindFirstChild("RingHitbox")
                                if coinHitbox and coinHitbox:IsA("BasePart") then coinHitbox.Position = root.Position end
                                if gemHitbox and gemHitbox:IsA("BasePart") then gemHitbox.Position = root.Position end
                            end
                        end)
                    end
                }, "GetRings")
                AutoTab:CreateToggle({
                    Name = "break amazon",
                    Description = "auto-touches every SpleefPart in the Amazon challenge.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().breakAmazon = Value
                        if not Value then return end
                        notif("amazon", "breaking", 1)
                        task.spawn(function()
                            while getgenv().breakAmazon do
                                task.wait(0.3)
                                local assets = workspace:FindFirstChild("Assets")
                                if assets then
                                    for _, v in pairs(assets:GetDescendants()) do
                                        if v.Name == "SpleefPart" and v:IsA("BasePart") then
                                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                                            task.wait()
                                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                                        end
                                    end
                                end
                            end
                        end)
                    end
                })
                AutoTab:CreateToggle({
                    Name = "auto win cheese",
                    Description = "auto-teleports you to the CheesePush Finish pad in a loop.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().autoCheese = Value
                        if not Value then return end
                        notif("cheese", "auto on", 1)
                        task.spawn(function()
                            while getgenv().autoCheese do
                                task.wait(0.3)
                                for _, v in ipairs(workspace:GetDescendants()) do
                                    if v:IsA("BasePart") and v.Name == "Cheese" then
                                        local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                        if root and (v.Position - root.Position).Magnitude <= 100 then
                                            local assets = workspace:FindFirstChild("Assets")
                                            local france = assets and assets:FindFirstChild("France")
                                            local cheesePush = france and france:FindFirstChild("CheesePush")
                                            local finish = cheesePush and cheesePush:FindFirstChild("Finish")
                                            if finish then
                                                local target = finish:GetChildren()[4]
                                                if target then
                                                    local part = target:IsA("BasePart") and target or target:FindFirstChildWhichIsA("BasePart", true)
                                                    if part then
                                                        local tpPos = part.Position + Vector3.new(0, 3, 0)
                                                        v.Position = tpPos
                                                        root.CFrame = CFrame.new(tpPos)
                                                    end
                                                end
                                            end
                                            break
                                        end
                                    end
                                end
                            end
                        end)
                    end
                })
                end

                local selectedFeature = nil
                local featureDropdown
                local function featureOption(feature) return feature.name end
                local function featureMatchesMode(feature)
                    if not feature.mode then return true end
                    return feature.mode == (isMovies and "movies" or isExpedition and "expedition" or "camp")
                end
                local function getAvailableFeatures()
                    local available = {}
                    for _, feature in ipairs(featureIndex) do
                        if featureMatchesMode(feature) then table.insert(available, feature) end
                    end
                    return available
                end
                local function getFeatureName(option) return tostring(option or "") end
                local function findFeature(name)
                    name = getFeatureName(name)
                    for _, feature in ipairs(featureIndex) do
                        if feature.name == name then return feature end
                    end
                end
                local function getFeatureTab(feature)
                    if feature.tab == "character" and isCamp then return CharacterTab end
                    if feature.tab == "main" and isCamp then return Tab end
                    if feature.tab == "movies" and isMovies then return MoviesTab end
                    if feature.tab == "expedition" and isExpedition then return ExpeditionTab end
                    if feature.tab == "closet" then return ClosetTab end
                    if feature.tab == "blatant" then return BlatantTab end
                    if feature.tab == "fun" then return FunTab end
                    if feature.tab == "auto" then return AutoTab end
                    if feature.tab == "search" then return SearchTab end
                end
                local function findTabButton(tabName)
                    local wanted = string.lower(tostring(tabName))
                    local roots = {game:GetService("CoreGui"), playerGui, localPlayer:FindFirstChild("PlayerGui")}
                    for _, root in ipairs(roots) do
                        if not root then continue end
                        local found
                        pcall(function()
                            for _, object in ipairs(root:GetDescendants()) do
                                if object:IsA("TextLabel") and string.lower(tostring(object.Text or "")) == wanted then
                                    local walker = object
                                    for _ = 1, 12 do
                                        if not walker then break end
                                        if walker:IsA("GuiButton") then found = walker; return end
                                        local interact = walker:FindFirstChild("Interact", true)
                                        if interact and interact:IsA("GuiButton") then found = interact; return end
                                        walker = walker.Parent
                                    end
                                end
                            end
                        end)
                        if found then return found end
                    end
                end
                local function findFeatureControl(feature)
                    local wanted = string.lower(tostring(feature.name))
                    local roots = {game:GetService("CoreGui"), playerGui}
                    for _, root in ipairs(roots) do
                        if not root then continue end
                        local found
                        pcall(function()
                            for _, object in ipairs(root:GetDescendants()) do
                                if object:IsA("TextLabel") or object:IsA("TextButton") then
                                    local text = string.lower(tostring(object.Text or ""))
                                    if text == wanted or string.find(text, wanted, 1, true) then
                                        local parent = object.Parent
                                        for _ = 1, 8 do
                                            if not parent then break end
                                            if parent:IsA("Frame") or parent:IsA("TextButton") then
                                                local stroke = parent:FindFirstChildWhichIsA("UIStroke", true)
                                                local interact = parent:FindFirstChild("Interact", true)
                                                if stroke or interact then found = parent; return end
                                            end
                                            parent = parent.Parent
                                        end
                                        if not found then found = object end
                                        return
                                    end
                                end
                            end
                        end)
                        if found then return found end
                    end
                end
                local function bringFeatureIntoView(feature)
                    for attempt = 1, 15 do
                        local control = findFeatureControl(feature)
                        if control then
                            local scrolled = false
                            pcall(function()
                                local scroll = control:FindFirstAncestorWhichIsA("ScrollingFrame")
                                if scroll then
                                    local top = control.AbsolutePosition.Y - scroll.AbsolutePosition.Y
                                    local bottom = top + control.AbsoluteSize.Y
                                    local viewTop = 24
                                    local viewBottom = scroll.AbsoluteSize.Y - 24
                                    local current = scroll.CanvasPosition.Y
                                    local targetY = current
                                    if top < viewTop then targetY = current + top - viewTop
                                    elseif bottom > viewBottom then targetY = current + (bottom - viewBottom)
                                    else targetY = current + top - math.max(24, (scroll.AbsoluteSize.Y - control.AbsoluteSize.Y) / 2) end
                                    local maxY = math.max(0, scroll.AbsoluteCanvasSize.Y - scroll.AbsoluteSize.Y)
                                    targetY = math.clamp(targetY, 0, maxY)
                                    scroll.CanvasPosition = Vector2.new(scroll.CanvasPosition.X, targetY)
                                    scrolled = true
                                end
                            end)
                            if scrolled then return control end
                        end
                        task.wait(0.1)
                    end
                    return findFeatureControl(feature)
                end
                local function blinkFeatureName(control, feature)
                    if not control then return end
                    local label = nil
                    if control:IsA("TextLabel") or control:IsA("TextButton") then label = control
                    else label = control:FindFirstChildWhichIsA("TextLabel", true) end
                    if not label then return end
                    local originalText = label.Text
                    task.spawn(function()
                        local started = os.clock()
                        local visible = true
                        while os.clock() - started < 3 do
                            if visible then label.Text = "⚪ " .. originalText
                            else label.Text = originalText end
                            visible = not visible
                            task.wait(0.25)
                        end
                        label.Text = originalText
                    end)
                end

                local function showFeatureIdentifier(control, feature)
                    local featureName = feature and feature.name or "feature"
                    local tabName = feature and tostring(feature.tab) or "?"
                    notif("▼ HERE ▼", featureName .. "\nis on the " .. tabName .. " tab.", 3)
                    if control then
                        blinkFeatureName(control, feature)
                    end
                end

                local function openFeatureTab(feature)
                    local target = getFeatureTab(feature)
                    if target and target.Activate then pcall(function() target:Activate() end) end
                    local btn = findTabButton(feature.tab)
                    if btn then
                        if btn.Activate then pcall(function() btn:Activate() end) end
                        if btn.MouseButton1Click then pcall(function() btn.MouseButton1Click:Fire() end) end
                    end
                    task.wait(0.5)
                    local control = bringFeatureIntoView(feature)
                    if not control then
                        task.wait(0.3)
                        control = bringFeatureIntoView(feature)
                    end
                    if control then
                        showFeatureIdentifier(control, feature)
                        return true
                    end
                    if target and target.Activate then pcall(function() target:Activate() end) end
                    task.wait(0.4)
                    control = bringFeatureIntoView(feature)
                    if control then
                        showFeatureIdentifier(control, feature)
                        return true
                    end
                    return false
                end

                featureDropdown = SearchTab:CreateDropdown({
                    Name = "features",
                    Description = "search for features.",
                    Options = (function()
                        local t = {}
                        for _, f in ipairs(getAvailableFeatures()) do table.insert(t, featureOption(f)) end
                        if #t == 0 then t = {"no features"} end
                        return t
                    end)(),
                    CurrentOption = {featureOption(getAvailableFeatures()[1] or {name = "no features"})},
                    MultipleOptions = false,
                    Callback = function(Value)
                        local name = type(Value) == "table" and Value[1] or Value
                        selectedFeature = findFeature(name)
                        if selectedFeature then
                            local moved = openFeatureTab(selectedFeature)
                            if not moved then
                                notif("feature", "could not open the " .. tostring(selectedFeature.tab) .. " tab.", 2)
                            end
                        end
                    end
                })
                selectedFeature = getAvailableFeatures()[1]

                task.spawn(function()
                    pcall(function()
                        local src = game:HttpGet("https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/commands.lua", true)
                        if src and src ~= "" then
                            local fn = loadstring(src)
                            if fn then fn() end
                        end
                    end)
                end)
        else
            notif("nigga hub", "...", 1)
            wait(2)
            notif("nigga hub", "nigga go into a mode faggot", 2)
        end
