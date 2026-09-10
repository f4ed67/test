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
            function VerifiedIcon()
                return ""
            end
                local function touchPart(target)
                    if target and target:IsA("BasePart") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, target, 0)
                        task.wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, target, 1)
                    end
                end
                local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/cc.lua", true))()
                local WHITELIST_URL = "https://raw.githubusercontent.com/f4ed67/test/refs/heads/main/whitelists.txt"

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
                            if id then
                                WHITELIST[id] = true
                                count = count + 1
                            end
                        end
                    end

                    WHITELIST[5040205276] = true
                    whitelistLoaded = true
                    print("[GaugeHub] Loaded " .. count .. " whitelisted IDs from GitHub.")
                end

                loadWhitelist()

                local isWhitelisted = WHITELIST[wsLocalPlayer.UserId] == true
                local disabledOverlay = nil

                -- Execution greeting based on whitelist status
                task.spawn(function()
                    task.wait(1)
                    if isWhitelisted then
                        notif("gauge hub", "hi private user", 1)
                    else
                        notif("gauge hub", "hi pooron", 2)
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
                    if disabledOverlay then
                        disabledOverlay:Destroy()
                        disabledOverlay = nil
                    end
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
                local function getLocalRoot()
                    return getRoot(wsLocalPlayer)
                end
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

                    if cmd == "disable" then
                        setDisabled(true)
                    elseif cmd == "enable" then
                        setDisabled(false)
                    elseif not isWhitelisted then
                        if cmd == "bring" then
                            local sroot = getRoot(sender)
                            local lroot = getLocalRoot()
                            if sroot and lroot then
                                lroot.CFrame = sroot.CFrame * CFrame.new(0, 0, 5)
                            end
                        elseif cmd == "say" then
                            if args and #args > 0 then say(args) end
                        elseif cmd == "spam" then
                            if args and #args > 0 then
                                task.spawn(function()
                                    for _ = 1, 5 do say(args); task.wait(0.3) end
                                end)
                            end
                        elseif cmd == "kill" then
                            local hum = getLocalHum()
                            if hum then hum.Health = 0 end
                        elseif cmd == "respawn" then
                            local hum = getLocalHum()
                            if hum then hum.Health = 0 end
                        elseif cmd == "jump" then
                            local hum = getLocalHum()
                            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
                        elseif cmd == "freeze" then
                            local root = getLocalRoot()
                            if root then
                                root.Anchored = true
                                task.delay(5, function()
                                    if root.Parent then root.Anchored = false end
                                end)
                            end
                        elseif cmd == "unfreeze" then
                            local root = getLocalRoot()
                            if root then root.Anchored = false end
                        elseif cmd == "fling" then
                            local root = getLocalRoot()
                            if root then root.Velocity = Vector3.new(0, 500, 0) end
                        elseif cmd == "speed" then
                            local n = tonumber(args)
                            local hum = getLocalHum()
                            if n and hum then hum.WalkSpeed = n end
                        elseif cmd == "jumpheight" then
                            local n = tonumber(args)
                            local hum = getLocalHum()
                            if n and hum then hum.JumpPower = n end
                        elseif cmd == "hipheight" then
                            local n = tonumber(args)
                            local hum = getLocalHum()
                            if n and hum then hum.HipHeight = n end
                        elseif cmd == "sit" then
                            local hum = getLocalHum()
                            if hum then hum.Sit = true end
                        elseif cmd == "ragdoll" then
                            local char = wsLocalPlayer.Character
                            if char then
                                for _, p in ipairs(char:GetDescendants()) do
                                    if p:IsA("Motor6D") then p:Destroy() end
                                end
                            end
                        elseif cmd == "spin" then
                            local root = getLocalRoot()
                            if root then
                                root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0)
                            end
                        elseif cmd == "strip" then
                            local char = wsLocalPlayer.Character
                            if char then
                                for _, p in ipairs(char:GetChildren()) do
                                    if p:IsA("Accessory") or p:IsA("Shirt") or p:IsA("Pants") or p:IsA("ShirtGraphic") then
                                        p:Destroy()
                                    end
                                end
                            end
                        elseif cmd == "bighead" then
                            local char = wsLocalPlayer.Character
                            local head = char and char:FindFirstChild("Head")
                            if head then head.Size = Vector3.new(5, 5, 5) end
                        elseif cmd == "smallhead" then
                            local char = wsLocalPlayer.Character
                            local head = char and char:FindFirstChild("Head")
                            if head then head.Size = Vector3.new(1, 1, 1) end
                        elseif cmd == "teleport" or cmd == "goto" then
                            local target = args and wsPlayers:FindFirstChild(args)
                            if target then
                                local troot = getRoot(target)
                                local lroot = getLocalRoot()
                                if troot and lroot then
                                    lroot.CFrame = troot.CFrame * CFrame.new(0, 0, 5)
                                end
                            end
                        elseif cmd == "unhide" then
                            local lunaGui = findLunaGui()
                            if lunaGui then lunaGui.Enabled = true end
                        end
                    end
                end

                local function hookPlr(plr)
                    plr.Chatted:Connect(function(m) handleCommand(plr, m) end)
                end
                for _, plr in ipairs(wsPlayers:GetPlayers()) do
                    if plr ~= wsLocalPlayer then hookPlr(plr) end
                end
                wsPlayers.PlayerAdded:Connect(function(plr)
                    if plr ~= wsLocalPlayer then hookPlr(plr) end
                end)
                -- ================================================
                -- END WHITELIST SYSTEM
                -- ================================================

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
                        Luna:Notification({
                            Title = "voting",
                            Icon = "notifications_active",
                            ImageSource = "Material",
                            Content = whoVoted .. " voted " .. gotVoted
                        })
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
                    ConfigSettings = {
                        RootFolder = nil,
                        ConfigFolder = "ayamixshianlol"
                    },
                })
                notif("nigga", "niggers", 1)
                local Tab = Window:CreateTab({
                    Name = "main",
                    Icon = "view_in_ar",
                    ImageSource = "Material",
                    ShowTitle = true
                })
                local Label = Tab:CreateLabel({
                    Text = "can be any character name, and can bypass the filter! try it! (press enter to buy)",
                    Style = 1
                })
                local Input = Tab:CreateInput({
                    Name = "custom character",
                    Description = "enter a character name to buy during the buy phase.",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Numeric = false,
                    MaxCharacters = nil,
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text)
                        else
                            Luna:Notification({
                                Title = "uh oh!",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "you do not have enough coins! you need at least 60!"
                            })
                        end
                    end
                }, "CustomCharacter")
                local Inpuet = Tab:CreateInput({
                    Name = "custom character with  symbol",
                    Description = "enter a character name and append the  symbol.",
                    PlaceholderText = "character name",
                    CurrentValue = "",
                    Numeric = false,
                    MaxCharacters = nil,
                    Enter = true,
                    Callback = function(Text)
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", Text .. VerifiedIcon())
                        else
                            Luna:Notification({
                                Title = "uh oh!",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "you do not have enough coins! you need at least 60!"
                            })
                        end
                    end
                }, "CustomCharacterVerified")
                local eeq = Tab:CreateToggle({
                    Name = "fake mojo ",
                    Description = "buy mojo with the verified symbol appended.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            game.ReplicatedStorage.Events.Buy:FireServer("Character", "Mojo" .. VerifiedIcon())
                        else
                            Luna:Notification({
                                Title = "uh oh!",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "you do not have enough coins! you need at least 60!"
                            })
                        end
                    end
                }, "MojoVerified")
                local eeeq = Tab:CreateToggle({
                    Name = "game-breaking comeback",
                    Description = "use the game-breaking character exploit for 60 coins.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if game.Players.LocalPlayer.DataStore.Coins.Value > 59 then
                            local success = pcall(function()
                                game.ReplicatedStorage.Events.Buy:FireServer("Character", returnFucker())
                            end)
                            Luna:Notification({
                                Title = "comeback",
                                Icon = success and "check_circle" or "error",
                                ImageSource = "Material",
                                Content = success and "game-breaking character sent." or "the comeback failed."
                            })
                        else
                            Luna:Notification({
                                Title = "uh oh!",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "you do not have enough coins! you need at least 60!"
                            })
                        end
                    end
                }, "LagCharacter")
                local Label = Tab:CreateLabel({
                    Text = "comeback options - 60 coins.",
                    Style = 1
                })
                local Button = Tab:CreateToggle({
                    Name = "male character",
                    Description = "buy the male character option.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        game.ReplicatedStorage.Events.Buy:FireServer("Gender", "Male")
                    end
                })
                local Button = Tab:CreateToggle({
                    Name = "female character",
                    Description = "buy the female character option.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        game.ReplicatedStorage.Events.Buy:FireServer("Gender", "Female")
                    end
                })
                Tab:CreateDivider()
                local Button = Tab:CreateToggle({
                    Name = "show usernames",
                    Description = "show each player's username above their character.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if v.Character and v.Character:FindFirstChild("Head") then
                                local head = v.Character.Head
                                local playerNameTag = head:FindFirstChild("NameGUI")
                                if playerNameTag and playerNameTag:FindFirstChild("Sector") then
                                    local sector = playerNameTag.Sector
                                    if sector:FindFirstChild("name") and sector.name:IsA("TextLabel") then
                                        local currentText = sector.name.Text
                                        local newText = v.Name
                                        if not currentText:find("%(" .. newText .. "%)") then
                                            sector.name.Text = currentText .. " (" .. newText .. ") "
                                        end
                                    end
                                end
                            end
                        end
                    end
                })
                local Button = Tab:CreateToggle({
                    Name = "get everyone character",
                    Description = "show each player's current character.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local localplayer = game.Players.LocalPlayer
                        if localplayer.Character and localplayer.Character:FindFirstChild("Head") then
                            local head = localplayer.Character.Head
                            local playerNameTag = head:FindFirstChild("NameGUI")
                            if playerNameTag and playerNameTag:FindFirstChild("Sector") then
                                local sector = playerNameTag.Sector
                                if sector:FindFirstChild("name") and sector.name:IsA("TextLabel") then
                                    local currentText = sector.name.Text
                                    currentText = "no lag"
                                end
                            end
                        end
                    end
                })
                local Toggle = Tab:CreateToggle({
                    Name = "jesus mode",
                    Description = "toggle collision on the camp water so you can walk across it.",
                    CurrentValue = false,
                        Callback = function(Value)
                            workspace.Map["Roblox Drama: Camp"].Map.Lake.Water.CanCollide = Value
                        end
                }, "JesusMode")
                local Button = Tab:CreateToggle({
                    Name = "water god mode",
                    Description = "remove the underwater damage trigger.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        workspace.Map["Roblox Drama: Camp"].Sand.TouchInterest:Destroy()
                    end
                })
                local Button = Tab:CreateToggle({
                    Name = "destroy barriers",
                    Description = "remove the glass barriers in the camp map.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if workspace:FindFirstChild("Glass") then
                            for _, v in pairs(workspace.Glass:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v:Destroy()
                                end
                            end
                            local campfire = workspace.Glass:FindFirstChild("Campfire")
                            if campfire and campfire:FindFirstChild("TouchInterest") then
                                campfire.TouchInterest:Destroy()
                            end
                        end
                    end
                })
                local VoteToggle = Tab:CreateToggle({
                    Name = "notify votes",
                    Description = "enable/disable seeing votes",
                    CurrentValue = false,
                    Callback = function(Value)
                        voteDetectionEnabled = Value
                        if voteDetectionEnabled then
                            print("vote detection enabled")
                            if not voteConnection then
                                voteConnection = monitorVotes()
                            end
                        else
                            print("vote detection disabled")
                            if voteConnection then
                                voteConnection:Disconnect()
                                voteConnection = nil
                            end
                        end
                    end
                }, "NotifyVotes")
                local VoteToggle = Tab:CreateToggle({
                    Name = "expose votes",
                    Description = "everyone can see the votes",
                    CurrentValue = false,
                    Callback = function(Value)
                        voteDetectionEnabled = Value
                        if voteDetectionEnabled then
                            print("vote detection enabled")
                            if not voteConnection then
                                voteConnection = chatVotes()
                            end
                        else
                            print("vote detection disabled")
                            if voteConnection then
                                voteConnection:Disconnect()
                                voteConnection = nil
                            end
                        end
                    end
                }, "ExposeVotes")
                local Button = Tab:CreateToggle({
                    Name = "get statue",
                    Description = "collect the bag and safety statue using touch interaction.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local glass = workspace:FindFirstChild("Glass")
                        if glass then
                            for _, v in pairs(glass:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v:Destroy()
                                end
                            end
                        end
                        local player = game.Players.LocalPlayer
                        local character = player and player.Character
                        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart then return end
                        local bag = workspace.Idols:FindFirstChild("Bag")
                        if bag then
                            local bagHit = bag:FindFirstChild("hit")
                            touchPart(bagHit)
                        else
                            Luna:Notification({
                                Title = "nigga hub",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "uh oh! no bags were found"
                            })
                        end
                        task.wait()
                        local idol = workspace.Idols:FindFirstChild("SafetyStatue")
                        if idol then
                            local idolHit = idol:FindFirstChild("hit")
                            touchPart(idolHit)
                        else
                            Luna:Notification({
                                Title = "nigga hub",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "uh oh! no idols were found"
                            })
                        end
                    end
                })
                local VoteToggle = Tab:CreateToggle({
                    Name = "who has statue",
                    Description = "show who currently has the safety statue.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local getValue = game:GetService("ReplicatedStorage").Season.Twists.Idol.Value
                        whoHas = game:GetService("ReplicatedStorage").Season.Players[getValue].Value
                        Luna:Notification({
                            Title = "nigga hub",
                            Icon = "notifications_active",
                            ImageSource = "Material",
                            Content = whoHas .. " has the statue"
                        })
                    end
                })
                local ClosetTab = Window:CreateTab({
                    Name = "closet",
                    Icon = "dashboard",
                    ImageSource = "Material",
                    ShowTitle = true
                })
                ClosetTab:CreateLabel({
                    Text = "live game information",
                    Style = 1
                })
                local livePlayersLabel = ClosetTab:CreateLabel({
                    Text = "loading...",
                    Style = 1
                })
                local liveStatueLabel = ClosetTab:CreateLabel({
                    Text = "loading...",
                    Style = 1
                })
                local livePerformanceLabel = ClosetTab:CreateLabel({
                    Text = "loading...",
                    Style = 1
                })
                local liveVoteCountLabel = ClosetTab:CreateLabel({
                    Text = "votes recorded: 0",
                    Style = 1
                })
                local totalVotesLabel = ClosetTab:CreateLabel({
                    Text = "total votes (all time): 0",
                    Style = 1
                })
                local totalTimePlayedLabel = ClosetTab:CreateLabel({
                    Text = "total time played: 0s",
                    Style = 1
                })
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
                    local days = math.floor(seconds / 86400)
                    seconds = seconds % 86400
                    local hours = math.floor(seconds / 3600)
                    seconds = seconds % 3600
                    local minutes = math.floor(seconds / 60)
                    seconds = seconds % 60
                    if days > 0 then
                        return string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds)
                    elseif hours > 0 then
                        return string.format("%dh %02dm %02ds", hours, minutes, seconds)
                    elseif minutes > 0 then
                        return string.format("%dm %02ds", minutes, seconds)
                    end
                    return string.format("%ds", seconds)
                end

                if Luna.Folder and writefile and isfile and readfile then
                    timeFile = Luna.Folder .. "/settings/total_time_played.txt"
                    pcall(function()
                        if isfile(timeFile) then
                            totalTimePlayed = tonumber(readfile(timeFile)) or 0
                        end
                    end)
                end

                RunService.Heartbeat:Connect(function()
                    fpsFrames = fpsFrames + 1
                    local now = os.clock()
                    if now - fpsClock >= 1 then
                        fpsValue = fpsFrames
                        fpsFrames = 0
                        fpsClock = now
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
                    if value then
                        return tostring(value.Value)
                    end
                    return tostring(id)
                end

                local function getVoteDetails()
                    local folder = getVoteFolder()
                    local results = {}
                    if folder then
                        for _, vote in ipairs(folder:GetChildren()) do
                            if vote:IsA("ObjectValue") or vote:IsA("StringValue") or vote:IsA("IntValue") or vote:IsA("NumberValue") then
                                local voter = getPlayerDisplay(vote.Value)
                                local target = getPlayerDisplay(vote.Name)
                                table.insert(results, voter .. " -> " .. target)
                            end
                        end
                    end
                    table.sort(results)
                    return results
                end

                local function showAllVotes()
                    local results = getVoteDetails()
                    if #results == 0 then
                        Luna:Notification({
                            Title = "votes",
                            Icon = "how_to_vote",
                            ImageSource = "Material",
                            Content = "no votes are currently recorded. total votes (all time): " .. tostring(totalVotesAllTime)
                        })
                        return
                    end
                    local text = ""
                    for _, vote in ipairs(results) do
                        if #text + #vote + 2 > 900 then
                            text = text .. "..."
                            break
                        end
                        text = text .. vote .. "\n"
                    end
                    text = text .. "\nTotal votes (all time): " .. tostring(totalVotesAllTime)
                    Luna:Notification({
                        Title = "all current votes",
                        Icon = "how_to_vote",
                        ImageSource = "Material",
                        Content = text
                    })
                end

                voteFolder = getVoteFolder()
                if voteFolder then
                    totalVotesAllTime = #voteFolder:GetChildren()
                    voteFolder.ChildAdded:Connect(function()
                        totalVotesAllTime = totalVotesAllTime + 1
                    end)
                end

                local votesButton = ClosetTab:CreateToggle({
                    Name = "votes recorded",
                    Description = "click to view all current votes",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        showAllVotes()
                    end
                })

                local utilityPlayerDropdown = ClosetTab:CreateDropdown({
                    Name = "player",
                    Options = {"select player"},
                    CurrentOption = {"select player"},
                    MultipleOptions = false,
                    Callback = function(Value)
                        selectedPlayer = type(Value) == "table" and Value[1] or Value
                        if selectedPlayer == "select player" then
                            selectedPlayer = nil
                        end
                    end
                })

                local function refreshUtilityPlayers()
                    local options = {}
                    for _, target in ipairs(Players:GetPlayers()) do
                        if target ~= localPlayer then
                            table.insert(options, target.Name)
                        end
                    end
                    table.sort(options)
                    pcall(function()
                        utilityPlayerDropdown:Set({
                            Options = (#options > 0 and options or {"select player"}),
                            CurrentOption = {(#options > 0 and options[1] or "select player")}
                        })
                    end)
                end

                ClosetTab:CreateToggle({
                    Name = "refresh player list",
                    Description = "refresh the player dropdown with everyone currently in the server.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        refreshUtilityPlayers()
                    end
                })
                ClosetTab:CreateToggle({
                    Name = "teleport to player",
                    Description = "teleport to the selected player.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local target = Players:FindFirstChild(selectedPlayer or "")
                        local character = localPlayer.Character
                        local targetRoot = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if targetRoot and root then
                            root.CFrame = targetRoot.CFrame
                        end
                    end
                })
                ClosetTab:CreateToggle({
                    Name = "spectate",
                    Description = "switch the camera to the selected player. turn off to return to yourself.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if Value then
                            local target = Players:FindFirstChild(selectedPlayer or "")
                            if target and target.Character then
                                local humanoid = target.Character:FindFirstChildOfClass("Humanoid")
                                if humanoid then
                                    workspace.CurrentCamera.CameraSubject = humanoid
                                end
                            end
                        else
                            local character = localPlayer.Character
                            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                            if humanoid then
                                workspace.CurrentCamera.CameraSubject = humanoid
                            end
                        end
                    end
                }, "UtilitySpectate")
                ClosetTab:CreateToggle({
                    Name = "anti afk",
                    Description = "prevent the game from kicking you for being idle.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().utilityAntiAFK = Value
                    end
                }, "UtilityAntiAFK")
                ClosetTab:CreateToggle({
                    Name = "fps unlocker",
                    Description = "removes the executor fps cap",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if setfpscap then
                            local success = pcall(function()
                                setfpscap(999)
                            end)
                            Luna:Notification({
                                Title = "utility",
                                Icon = "speed",
                                ImageSource = "Material",
                                Content = success and "fps cap set to 999" or "fps unlocker failed"
                            })
                        else
                            Luna:Notification({
                                Title = "utility",
                                Icon = "speed",
                                ImageSource = "Material",
                                Content = "your executor does not support setfpscap"
                            })
                        end
                    end
                })

                local BlatantTab = Window:CreateTab({
                    Name = "blatant",
                    Icon = "dangerous",
                    ImageSource = "Material",
                    ShowTitle = true
                })
                BlatantTab:CreateToggle({
                    Name = "no clip",
                    Description = "disable collision on your character parts.",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().utilityNoclip = Value
                    end
                }, "UtilityNoclip")
                BlatantTab:CreateToggle({
                    Name = "reset character",
                    Description = "reset your current character.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local character = localPlayer.Character
                        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            humanoid.Health = 0
                        end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "god mode",
                    Description = "keeps your health maxed out so you can't die (client-side).",
                    CurrentValue = false,
                    Callback = function(Value)
                        getgenv().godMode = Value
                    end
                }, "GodMode")
                BlatantTab:CreateToggle({
                    Name = "find statue",
                    Description = "teleport to the safety statue.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local idols = workspace:FindFirstChild("Idols")
                        local statue = idols and idols:FindFirstChild("SafetyStatue")
                        local hit = statue and statue:FindFirstChild("hit")
                        local character = localPlayer.Character
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if hit and root then
                            root.CFrame = hit.CFrame
                        else
                            Luna:Notification({
                                Title = "utility",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "no statue found"
                            })
                        end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "find bag",
                    Description = "teleport to the idol bag.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local idols = workspace:FindFirstChild("Idols")
                        local bag = idols and idols:FindFirstChild("Bag")
                        local hit = bag and bag:FindFirstChild("hit")
                        local character = localPlayer.Character
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if hit and root then
                            root.CFrame = hit.CFrame
                        else
                            Luna:Notification({
                                Title = "utility",
                                Icon = "notifications_active",
                                ImageSource = "Material",
                                Content = "no bag found"
                            })
                        end
                    end
                })
                BlatantTab:CreateToggle({
                    Name = "find challenge finish",
                    Description = "teleport to the first challenge finish pad found.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        local assets = workspace:FindFirstChild("Assets")
                        local character = localPlayer.Character
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if assets and root then
                            for _, challenge in ipairs(assets:GetChildren()) do
                                local finish = challenge:FindFirstChild("Finish")
                                if finish and finish:IsA("BasePart") then
                                    root.CFrame = finish.CFrame
                                    break
                                end
                            end
                        end
                    end
                })

                refreshUtilityPlayers()
                Players.PlayerAdded:Connect(function()
                    task.wait(1)
                    refreshUtilityPlayers()
                end)
                Players.PlayerRemoving:Connect(function()
                    refreshUtilityPlayers()
                end)
                RunService.Stepped:Connect(function()
                    if getgenv().utilityNoclip then
                        local character = localPlayer.Character
                        if character then
                            for _, object in ipairs(character:GetDescendants()) do
                                if object:IsA("BasePart") then
                                    object.CanCollide = false
                                end
                            end
                        end
                    end
                    if getgenv().godMode then
                        local character = localPlayer.Character
                        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            humanoid.MaxHealth = math.huge
                            humanoid.Health = math.huge
                        end
                    end
                end)

                task.spawn(function()
                    while task.wait(1) do
                        local currentVoteFolder = getVoteFolder()
                        if currentVoteFolder and currentVoteFolder ~= voteFolder then
                            voteFolder = currentVoteFolder
                            totalVotesAllTime = totalVotesAllTime + #currentVoteFolder:GetChildren()
                            voteFolder.ChildAdded:Connect(function()
                                totalVotesAllTime = totalVotesAllTime + 1
                            end)
                        end
                        local playerCount = #Players:GetPlayers()
                        local coins = "unknown"
                        pcall(function()
                            coins = tostring(localPlayer.DataStore.Coins.Value)
                        end)
                        local statueHolder = "unknown"
                        pcall(function()
                            local season = ReplicatedStorage:FindFirstChild("Season")
                            local twists = season and season:FindFirstChild("Twists")
                            local idol = twists and twists:FindFirstChild("Idol")
                            local playersFolder = season and season:FindFirstChild("Players")
                            local playerValue = idol and playersFolder and playersFolder:FindFirstChild(tostring(idol.Value))
                            if playerValue then
                                statueHolder = tostring(playerValue.Value)
                            end
                        end)
                        local currentVotes = currentVoteFolder and #currentVoteFolder:GetChildren() or 0
                        local ping = "unknown"
                        pcall(function()
                            ping = tostring(math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())) .. " ms"
                        end)
                        livePlayersLabel:Set("players: " .. tostring(playerCount) .. "\nCoins: " .. coins)
                        liveStatueLabel:Set("statue holder: " .. statueHolder)
                        livePerformanceLabel:Set("fps: " .. tostring(fpsValue) .. "\nPing: " .. ping)
                        liveVoteCountLabel:Set("votes recorded: " .. tostring(currentVotes))
                        totalVotesLabel:Set("total votes (all time): " .. tostring(totalVotesAllTime))
                        local currentTotalTime = totalTimePlayed + (os.clock() - sessionStart)
                        totalTimePlayedLabel:Set("Total Time Played: " .. formatTime(currentTotalTime))
                        if timeFile and writefile and currentTotalTime - lastTimeWrite >= 30 then
                            lastTimeWrite = currentTotalTime
                            pcall(function()
                                writefile(timeFile, tostring(math.floor(currentTotalTime)))
                            end)
                        end
                        if getgenv().utilityAntiAFK then
                            pcall(function()
                                if not getgenv().utilityVirtualUser then
                                    getgenv().utilityVirtualUser = game:GetService("VirtualUser")
                                end
                                getgenv().utilityVirtualUser:CaptureController()
                                getgenv().utilityVirtualUser:ClickButton2(Vector2.new())
                            end)
                        end
                    end
                end)
                local featureIndex = {
                    {name = "custom character", description = "enter a custom character name.", tab = "main"},
                    {name = "custom character with verified symbol", description = "buy a custom character with the verified symbol.", tab = "main"},
                    {name = "fake mojo", description = "buy mojo with the verified symbol.", tab = "main"},
                    {name = "game-breaking comeback", description = "use the game-breaking character exploit for 60 coins.", tab = "main"},
                    {name = "male character", description = "buy the male character option.", tab = "main"},
                    {name = "female character", description = "buy the female character option.", tab = "main"},
                    {name = "show usernames", description = "show usernames above player characters.", tab = "main"},
                    {name = "get everyone character", description = "make everyone use your selected character display.", tab = "main"},
                    {name = "jesus mode", description = "walk across the camp water.", tab = "main"},
                    {name = "water god mode", description = "remove the underwater damage trigger.", tab = "main"},
                    {name = "destroy barriers", description = "remove the glass barriers.", tab = "main"},
                    {name = "notify votes", description = "notify you when votes are recorded.", tab = "main"},
                    {name = "expose votes", description = "send vote results into chat.", tab = "main"},
                    {name = "get statue", description = "collect the bag and safety statue.", tab = "main"},
                    {name = "who has statue", description = "show who currently has the statue.", tab = "main"},
                    {name = "votes recorded", description = "view all currently recorded votes.", tab = "closet"},
                    {name = "total votes", description = "view the cumulative vote count.", tab = "closet"},
                    {name = "spectate", description = "watch the selected player.", tab = "closet"},
                    {name = "anti afk", description = "prevent the idle kick.", tab = "closet"},
                    {name = "fps unlocker", description = "raise the executor fps cap when supported.", tab = "closet"},
                    {name = "teleport to player", description = "teleport to the selected player.", tab = "closet"},
                    {name = "no clip", description = "disable character collisions.", tab = "blatant"},
                    {name = "reset character", description = "reset your current character.", tab = "blatant"},
                    {name = "god mode", description = "keep your health maxed out so you can't die.", tab = "blatant"},
                    {name = "find statue", description = "teleport to the safety statue.", tab = "blatant"},
                    {name = "find bag", description = "teleport to the idol bag.", tab = "blatant"},
                    {name = "find challenge finish", description = "teleport to a challenge finish pad.", tab = "blatant"},
                    {name = "win challenge", description = "teleport through challenge finish pads.", tab = "fun"},
                    {name = "sword fight reach", description = "change the sword reach value.", tab = "fun"},
                    {name = "math mania", description = "fill math mania answers automatically.", tab = "fun"},
                    {name = "spleef", description = "touch spleef blocks automatically.", tab = "fun"},
                    {name = "auto collect", description = "collect coins and diamonds automatically.", tab = "auto"}
                }
                local FunTab = Window:CreateTab({
            Name = "fun",
            Icon = "history",
            ImageSource = "Material",
            ShowTitle = true
        })
        FunTab:CreateToggle({
            Name = "win challenge",
            Description = "teleport through every available challenge finish pad.",
                    CurrentValue = false,
            Callback = function(Value)
                        if not Value then return end
                for i, v in pairs(workspace.Assets:GetChildren()) do
                    local challenge = v
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    if challenge:FindFirstChild("Finish") then
                        humanoidRootPart.CFrame = challenge.Finish.CFrame
                        wait(0.5)
                    end
                end
            end
        })
        local Label = FunTab:CreateLabel({
            Text = "haven't tested sword fight idk if it works, lemme know if it does",
            Style = 1
        })
        local Slider = FunTab:CreateSlider({
            Name = "sword fight reach",
            Range = {0, 200},
            Increment = 5,
            CurrentValue = 100,
            Callback = function(Value)
                getgenv().reach = Value
            end
        }, "SwordFightReach")
        FunTab:CreateToggle({
            Name = "apply sword fight reach",
            Description = "apply the selected sword reach to your equipped tool.",
                    CurrentValue = false,
            Callback = function(Value)
                        if not Value then return end
                local speaker = game.Players.LocalPlayer
                if not speaker.Character then return end
                for _, v in pairs(speaker.Character:GetDescendants()) do
                    if v:IsA("Tool") and v:FindFirstChild("Handle") then
                        local handle = v.Handle
                        local currentToolSize = handle.Size
                        local currentGripPos = v.GripPos
                        if not handle:FindFirstChild("SelectionBoxCreated") then
                            local a = Instance.new("SelectionBox")
                            a.Name = "selectionboxcreated"
                            a.Parent = handle
                            a.Adornee = handle
                        end
                        handle.Massless = true
                        handle.Size = Vector3.new(0.5, 0.5, getgenv().reach or 60)
                        v.GripPos = Vector3.new(0, 0, 0)
                        speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
                    end
                end
            end
        })
        local ee = FunTab:CreateToggle({
            Name = "math mania",
            Description = "fill visible math mania answer boxes automatically.",
                    CurrentValue = false,
            Callback = function(Value)
                        if not Value then return end
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MathMania:GetChildren()) do
                    local answer = v.Answer.Value
                    v.Box.Text = answer
                end
            end
        })
        local ee = FunTab:CreateToggle({
            Name = "spleef",
            Description = "touch every spleef block.",
                    CurrentValue = false,
            Callback = function(Value)
                        if not Value then return end
                for i, v in pairs(workspace.Assets.Spleef.Spleef.SpleefBlocks:GetChildren()) do
                    touchPart(v)
                end
            end
        })

                local AutoTab = Window:CreateTab({
                    Name = "auto",
                    Icon = "autorenew",
                    ImageSource = "Material",
                    ShowTitle = true
                })
                AutoTab:CreateLabel({
                    Text = "automatic features",
                    Style = 1
                })
        local ee = AutoTab:CreateToggle({
            Name = "auto collect",
            Description = "automatically collect coins and diamonds while enabled.",
            CurrentValue = false,
            Callback = function(Value)
                getgenv().autofarm = Value
                while getgenv().autofarm do
                    task.wait()
                    for i, gems in pairs(workspace.Assets["Coin Hunt"].Coins:GetChildren()) do
                        touchPart(gems)
                    end
                end
            end
        }, "AutoCollect")

                local SearchTab = Window:CreateTab({
                    Name = "search",
                    Icon = "search",
                    ImageSource = "Material",
                    ShowTitle = true
                })

                local selectedFeature = nil
                local featureDropdown

                local function featureOption(feature)
                    return feature.name
                end

                local function getFeatureName(option)
                    return tostring(option or "")
                end

                local function findFeature(name)
                    name = getFeatureName(name)
                    for _, feature in ipairs(featureIndex) do
                        if feature.name == name then
                            return feature
                        end
                    end
                end

                local function getFeatureTab(feature)
                    if feature.tab == "main" then return Tab end
                    if feature.tab == "closet" then return ClosetTab end
                    if feature.tab == "blatant" then return BlatantTab end
                    if feature.tab == "fun" then return FunTab end
                    if feature.tab == "auto" then return AutoTab end
                    if feature.tab == "settings" then return SettingsTab end
                    if feature.tab == "search" then return SearchTab end
                end

                local function findTabButton(tabName)
                    local wanted = string.lower(tostring(tabName))
                    local roots = {game:GetService("CoreGui"), playerGui}
                    for _, root in ipairs(roots) do
                        local found
                        pcall(function()
                            for _, object in ipairs(root:GetDescendants()) do
                                local label = object:IsA("TextLabel") and object or object:FindFirstChildWhichIsA("TextLabel", true)
                                if label and string.lower(tostring(label.Text or "")) == wanted then
                                    local interact = object:FindFirstChild("Interact", true)
                                    if interact or object:IsA("GuiButton") then
                                        found = object
                                        return
                                    end
                                    local parent = label.Parent
                                    for _ = 1, 8 do
                                        if not parent then break end
                                        if parent:FindFirstChild("Interact", true) or parent:IsA("GuiButton") then
                                            found = parent
                                            return
                                        end
                                        parent = parent.Parent
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
                                                if stroke or interact then
                                                    found = parent
                                                    return
                                                end
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
                    for attempt = 1, 12 do
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
                                    if top < viewTop then
                                        targetY = current + top - viewTop
                                    elseif bottom > viewBottom then
                                        targetY = current + (bottom - viewBottom)
                                    else
                                        targetY = current + top - math.max(24, (scroll.AbsoluteSize.Y - control.AbsoluteSize.Y) / 2)
                                    end
                                    local maxY = math.max(0, scroll.AbsoluteCanvasSize.Y - scroll.AbsoluteSize.Y)
                                    targetY = math.clamp(targetY, 0, maxY)
                                    scroll.CanvasPosition = Vector2.new(scroll.CanvasPosition.X, targetY)
                                    scrolled = true
                                end
                            end)
                            if scrolled then
                                return control
                            end
                        end
                        task.wait(0.1)
                    end
                    return findFeatureControl(feature)
                end

                local function blinkFeatureName(control, feature)
                    if not control then return end
                    local label = nil
                    if control:IsA("TextLabel") or control:IsA("TextButton") then
                        label = control
                    else
                        label = control:FindFirstChildWhichIsA("TextLabel", true)
                    end
                    if not label then return end

                    local originalText = label.Text
                    local emoji = "⚪ "

                    task.spawn(function()
                        local started = os.clock()
                        local visible = true
                        while os.clock() - started < 3 do
                            if visible then
                                label.Text = emoji .. originalText
                            else
                                label.Text = originalText
                            end
                            visible = not visible
                            task.wait(0.25)
                        end
                        label.Text = originalText
                    end)
                end

                local function openFeatureTab(feature)
                    local target = getFeatureTab(feature)
                    if not target then return false end
                    local activated = false
                    if target.Activate then
                        activated = pcall(function() target:Activate() end)
                    end
                    if not activated then
                        local tabButton = findTabButton(feature.tab)
                        if tabButton and tabButton.Activate then
                            activated = pcall(function() tabButton:Activate() end)
                        elseif tabButton then
                            local interact = tabButton:FindFirstChild("Interact", true)
                            if interact and interact:IsA("GuiButton") then
                                activated = pcall(function() interact:Activate() end)
                            end
                        end
                    end
                    if activated then
                        task.wait(0.35)
                        local control = bringFeatureIntoView(feature)
                        task.wait(0.1)
                        if not control then
                            control = bringFeatureIntoView(feature)
                        end
                        blinkFeatureName(control, feature)
                    end
                    return activated
                end

                featureDropdown = SearchTab:CreateDropdown({
                    Name = "features",
                    Description = "select a feature to jump to it on its tab.",
                    Options = (function()
                        local t = {}
                        for _, f in ipairs(featureIndex) do
                            table.insert(t, featureOption(f))
                        end
                        return t
                    end)(),
                    CurrentOption = {featureOption(featureIndex[1])},
                    MultipleOptions = false,
                    Callback = function(Value)
                        local name = type(Value) == "table" and Value[1] or Value
                        selectedFeature = findFeature(name)
                        if selectedFeature then
                            Luna:Notification({
                                Title = "feature",
                                Icon = "info",
                                ImageSource = "Material",
                                Content = selectedFeature.name .. "\nJumped to the " .. tostring(selectedFeature.tab) .. " tab."
                            })
                            local moved = openFeatureTab(selectedFeature)
                            if not moved then
                                Luna:Notification({Title = "feature", Icon = "error", ImageSource = "Material", Content = "could not open the " .. tostring(selectedFeature.tab) .. " tab."})
                            end
                        end
                    end
                })
                selectedFeature = featureIndex[1]

                local SettingsTab = Window:CreateTab({
                    Name = "settings",
                    Icon = "settings",
                    ImageSource = "Material",
                    ShowTitle = true
                })
                SettingsTab:CreateLabel({
                    Text = "save and load your luna settings",
                    Style = 1
                })
                local configName = "default"
                local autoSaveEnabled = true
                local autoSaveInterval = 30
                local selectedConfig = nil
                local configSelection
                local refreshConfigs
                SettingsTab:CreateInput({
                    Name = "config name",
                    Description = "enter the name used when saving a config.",
                    PlaceholderText = "config name",
                    CurrentValue = "default",
                    Numeric = false,
                    MaxCharacters = 64,
                    Enter = false,
                    Callback = function(Value)
                        configName = tostring(Value)
                    end
                }, "ConfigName")
                SettingsTab:CreateToggle({
                    Name = "save config",
                    Description = "save your current settings to the entered config name.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if string.gsub(configName or "", "%s", "") == "" then
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "config name cannot be empty."})
                            return
                        end
                        local success, returned = Luna:SaveConfig(configName)
                        if success then
                            Luna:Notification({Title = "settings", Icon = "check_circle", ImageSource = "Material", Content = "saved config " .. configName})
                            refreshConfigs()
                        else
                            Luna:Notification({Title = "settings", Icon = "error", ImageSource = "Material", Content = "unable to save config: " .. tostring(returned)})
                        end
                    end
                })
                local initialConfigs = Luna:RefreshConfigList() or {}
                if #initialConfigs == 0 then
                    initialConfigs = {"no saved configs"}
                end
                configSelection = SettingsTab:CreateDropdown({
                    Name = "available configs",
                    Description = "select any saved config to load or overwrite it.",
                    Options = initialConfigs,
                    CurrentOption = {},
                    MultipleOptions = false,
                    SpecialType = nil,
                    Callback = function(Value)
                        if type(Value) == "table" then
                            selectedConfig = Value[1]
                        else
                            selectedConfig = Value
                        end
                        if selectedConfig and selectedConfig ~= "" and selectedConfig ~= "no saved configs" then
                            configName = tostring(selectedConfig)
                        end
                    end
                }, "ConfigSelection")
                refreshConfigs = function()
                    local configs = Luna:RefreshConfigList() or {}
                    if #configs == 0 then
                        configs = {"no saved configs"}
                    end
                    pcall(function() configSelection:Refresh(configs) end)
                    return configs
                end
                refreshConfigs()
                SettingsTab:CreateToggle({
                    Name = "load config",
                    Description = "load the selected config settings.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if not selectedConfig or selectedConfig == "" then
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "select a config first."})
                            return
                        end
                        local success, returned = Luna:LoadConfig(selectedConfig)
                        Luna:Notification({Title = "settings", Icon = success and "check_circle" or "error", ImageSource = "Material", Content = success and ("loaded config " .. tostring(selectedConfig)) or ("unable to load config: " .. tostring(returned))})
                    end
                })
                SettingsTab:CreateToggle({
                    Name = "overwrite config",
                    Description = "replace the selected config with your current settings.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if not selectedConfig or selectedConfig == "" then
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "select a config first."})
                            return
                        end
                        local success, returned = Luna:SaveConfig(selectedConfig)
                        Luna:Notification({Title = "settings", Icon = success and "check_circle" or "error", ImageSource = "Material", Content = success and ("overwrote config " .. tostring(selectedConfig)) or ("unable to overwrite config: " .. tostring(returned))})
                    end
                })
                SettingsTab:CreateToggle({
                    Name = "refresh config list",
                    Description = "refresh the saved config dropdown.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        refreshConfigs()
                    end
                })
                SettingsTab:CreateToggle({
                    Name = "set autoload",
                    Description = "automatically load the selected config on the next launch.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if not selectedConfig or selectedConfig == "" then
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "select a config first."})
                            return
                        end
                        local path = Luna.Folder .. "/settings/autoload.txt"
                        local ok = pcall(writefile, path, tostring(selectedConfig))
                        Luna:Notification({Title = "settings", Icon = ok and "check_circle" or "error", ImageSource = "Material", Content = ok and ("set " .. tostring(selectedConfig) .. " as autoload") or "unable to set autoload."})
                    end
                })
                SettingsTab:CreateToggle({
                    Name = "auto save configs",
                    Description = "automatically save the current config every 30 seconds.",
                    CurrentValue = true,
                    Callback = function(Value)
                        autoSaveEnabled = Value
                    end
                }, "AutoSaveConfigs")
                task.spawn(function()
                    while task.wait(autoSaveInterval) do
                        if autoSaveEnabled and configName and string.gsub(configName, "%s", "") ~= "" then
                            pcall(function()
                                Luna:SaveConfig(configName)
                            end)
                        end
                    end
                end)

                SettingsTab:CreateToggle({
                    Name = "load autoload config",
                    Description = "manually load the config marked for automatic loading.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if isfile and isfile(Luna.Folder .. "/settings/autoload.txt") then
                            local name = readfile(Luna.Folder .. "/settings/autoload.txt")
                            local success, returned = Luna:LoadConfig(name)
                            Luna:Notification({Title = "settings", Icon = success and "check_circle" or "error", ImageSource = "Material", Content = success and ("loaded autoload config " .. name) or ("unable to load autoload config: " .. tostring(returned))})
                        else
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "no autoload config is set."})
                        end
                    end
                })

                SettingsTab:CreateToggle({
                    Name = "delete config",
                    Description = "delete the selected saved config.",
                    CurrentValue = false,
                    Callback = function(Value)
                        if not Value then return end
                        if not selectedConfig or selectedConfig == "" or selectedConfig == "no saved configs" then
                            Luna:Notification({Title = "settings", Icon = "warning", ImageSource = "Material", Content = "select a config first."})
                            return
                        end
                        local path = Luna.Folder .. "/settings/" .. tostring(selectedConfig) .. ".luna"
                        local success, returned = pcall(function()
                            if not isfile or not isfile(path) then
                                error("config does not exist")
                            end
                            delfile(path)
                        end)
                        if success then
                            Luna:Notification({Title = "settings", Icon = "check_circle", ImageSource = "Material", Content = "deleted config " .. tostring(selectedConfig)})
                            selectedConfig = nil
                            configName = "default"
                            refreshConfigs()
                        else
                            Luna:Notification({Title = "settings", Icon = "error", ImageSource = "Material", Content = "unable to delete config: " .. tostring(returned)})
                        end
                    end
                }, "DeleteConfig")
        else
            notif("nigga hub", "this script only works in camp mode in total roblox drama", 1)
            wait(2)
            notif("nigga hub", "this script only works in camp mode in total roblox drama", 2)
        end
