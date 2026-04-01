local UIS = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local CombatEvent = ReplicatedStorage:WaitForChild("BetweenSides"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("CombatEvent")

local isHolding = false
local isAutoSlipperHolding = false

local function startSlapping()
    while isHolding do
        CombatEvent:FireServer("Slipper")
        task.wait(0.1)
    end
end

local function startAutoSlipper()
    while isAutoSlipperHolding do
        CombatEvent:FireServer("Slipper")
        task.wait(0.1)
    end
end

-- [[ GUI ]] --
local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "SlapWareGUI"
screenGui.ResetOnSpawn = false

-- Frame رئيسي
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 240, 0, 280)
mainFrame.Position = UDim2.new(0, 16, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(10, 14, 26)
mainFrame.BorderSizePixel = 0

local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0, 14)

local stroke = Instance.new("UIStroke", mainFrame)
stroke.Color = Color3.fromRGB(30, 45, 70)
stroke.Thickness = 1.5

-- Title Bar
local titleBar = Instance.new("Frame", mainFrame)
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(14, 20, 38)
titleBar.BorderSizePixel = 0

local titleCorner = Instance.new("UICorner", titleBar)
titleCorner.CornerRadius = UDim.new(0, 14)

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Size = UDim2.new(1, -50, 1, 0)
titleLabel.Position = UDim2.new(0, 14, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚡ SLAPWARE v2.0"
titleLabel.TextColor3 = Color3.fromRGB(226, 232, 240)
titleLabel.FontFace = Font.fromEnum(Enum.Font.GothamBold)
titleLabel.TextSize = 13
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- زر التصغير
local minimizeBtn = Instance.new("TextButton", titleBar)
minimizeBtn.Size = UDim2.new(0, 28, 0, 28)
minimizeBtn.Position = UDim2.new(1, -36, 0.5, -14)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(230, 57, 70)
minimizeBtn.Text = "—"
minimizeBtn.TextColor3 = Color3.new(1, 1, 1)
minimizeBtn.FontFace = Font.fromEnum(Enum.Font.GothamBold)
minimizeBtn.TextSize = 14
minimizeBtn.BorderSizePixel = 0

local minCorner = Instance.new("UICorner", minimizeBtn)
minCorner.CornerRadius = UDim.new(0, 6)

-- Content Frame
local content = Instance.new("Frame", mainFrame)
content.Size = UDim2.new(1, 0, 1, -40)
content.Position = UDim2.new(0, 0, 0, 40)
content.BackgroundTransparency = 1

-- Info Labels
local infoLabel = Instance.new("TextLabel", content)
infoLabel.Size = UDim2.new(1, -20, 0, 30)
infoLabel.Position = UDim2.new(0, 10, 0, 8)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "E = SLAP    Q = Auto Slipper"
infoLabel.TextColor3 = Color3.fromRGB(100, 116, 139)
infoLabel.FontFace = Font.fromEnum(Enum.Font.Gotham)
infoLabel.TextSize = 11
infoLabel.TextXAlignment = Enum.TextXAlignment.Center

-- زر SLAP
local slapBtn = Instance.new("TextButton", content)
slapBtn.Size = UDim2.new(1, -20, 0, 54)
slapBtn.Position = UDim2.new(0, 10, 0, 44)
slapBtn.BackgroundColor3 = Color3.fromRGB(230, 57, 70)
slapBtn.Text = "SLAP"
slapBtn.TextColor3 = Color3.new(1, 1, 1)
slapBtn.FontFace = Font.fromEnum(Enum.Font.GothamBold)
slapBtn.TextSize = 18
slapBtn.BorderSizePixel = 0

local slapCorner = Instance.new("UICorner", slapBtn)
slapCorner.CornerRadius = UDim.new(0, 10)

-- زر AUTO
local autoBtn = Instance.new("TextButton", content)
autoBtn.Size = UDim2.new(1, -20, 0, 54)
autoBtn.Position = UDim2.new(0, 10, 0, 108)
autoBtn.BackgroundColor3 = Color3.fromRGB(12, 24, 46)
autoBtn.Text = "AUTO SLIPPER"
autoBtn.TextColor3 = Color3.fromRGB(0, 180, 216)
autoBtn.FontFace = Font.fromEnum(Enum.Font.GothamBold)
autoBtn.TextSize = 16
autoBtn.BorderSizePixel = 0

local autoCorner = Instance.new("UICorner", autoBtn)
autoCorner.CornerRadius = UDim.new(0, 10)

local autoStroke = Instance.new("UIStroke", autoBtn)
autoStroke.Color = Color3.fromRGB(0, 150, 200)
autoStroke.Thickness = 1.5

-- Credit Label
local creditLabel = Instance.new("TextLabel", content)
creditLabel.Size = UDim2.new(1, -20, 0, 24)
creditLabel.Position = UDim2.new(0, 10, 0, 174)
creditLabel.BackgroundTransparency = 1
creditLabel.Text = ""
creditLabel.TextColor3 = Color3.fromRGB(80, 100, 130)
creditLabel.FontFace = Font.fromEnum(Enum.Font.Gotham)
creditLabel.TextSize = 11
creditLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Discord Label
local discordLabel = Instance.new("TextLabel", content)
discordLabel.Size = UDim2.new(1, -20, 0, 22)
discordLabel.Position = UDim2.new(0, 10, 0, 200)
discordLabel.BackgroundTransparency = 1
discordLabel.Text = "💬 discord.gg/QXdJtmGB"
discordLabel.TextColor3 = Color3.fromRGB(100, 120, 200)
discordLabel.FontFace = Font.fromEnum(Enum.Font.Gotham)
discordLabel.TextSize = 11
discordLabel.TextXAlignment = Enum.TextXAlignment.Center

-- [[ Minimize Logic ]] --
local isMinimized = false
minimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    content.Visible = not isMinimized
    mainFrame.Size = isMinimized and UDim2.new(0, 240, 0, 40) or UDim2.new(0, 240, 0, 280)
    minimizeBtn.Text = isMinimized and "+" or "—"
end)

-- [[ Draggable ]] --
local dragging, dragStart, startPos
titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)
UIS.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)

-- [[ SLAP Button ]] --
slapBtn.MouseButton1Down:Connect(function()
    if not isHolding then
        isHolding = true
        slapBtn.BackgroundColor3 = Color3.fromRGB(150, 20, 30)
        task.spawn(startSlapping)
    end
end)
slapBtn.MouseButton1Up:Connect(function()
    isHolding = false
    slapBtn.BackgroundColor3 = Color3.fromRGB(230, 57, 70)
end)

-- [[ AUTO Button ]] --
autoBtn.MouseButton1Down:Connect(function()
    if not isAutoSlipperHolding then
        isAutoSlipperHolding = true
        autoBtn.BackgroundColor3 = Color3.fromRGB(0, 60, 100)
        task.spawn(startAutoSlipper)
    end
end)
autoBtn.MouseButton1Up:Connect(function()
    isAutoSlipperHolding = false
    autoBtn.BackgroundColor3 = Color3.fromRGB(12, 24, 46)
end)

-- [[ Keyboard ]] --
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.E and not isHolding then
        isHolding = true
        slapBtn.BackgroundColor3 = Color3.fromRGB(150, 20, 30)
        task.spawn(startSlapping)
    end
    if input.KeyCode == Enum.KeyCode.Q and not isAutoSlipperHolding then
        isAutoSlipperHolding = true
        autoBtn.BackgroundColor3 = Color3.fromRGB(0, 60, 100)
        task.spawn(startAutoSlipper)
    end
end)
UIS.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        isHolding = false
        slapBtn.BackgroundColor3 = Color3.fromRGB(230, 57, 70)
    end
    if input.KeyCode == Enum.KeyCode.Q then
        isAutoSlipperHolding = false
        autoBtn.BackgroundColor3 = Color3.fromRGB(12, 24, 46)
    end
end)

print("✅ SlapWare v2.0 — xbxx235 & mix_n4x")
local function showNotification(msg, duration)
    local player = game:GetService("Players").LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local TweenService = game:GetService("TweenService")
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = playerGui
    
    local notification = Instance.new("Frame")
    notification.Size = UDim2.new(0, 300, 0, 60)
    notification.Position = UDim2.new(1, 0, 0, 10) -- خارج الشاشة
    notification.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    notification.BackgroundTransparency = 0.1
    notification.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = notification
    
    -- أيقونة
    local icon = Instance.new("TextLabel")
    icon.Text = "✅"
    icon.Size = UDim2.new(0, 40, 1, 0)
    icon.BackgroundTransparency = 1
    icon.TextColor3 = Color3.fromRGB(100, 255, 100)
    icon.Font = Enum.Font.GothamBold
    icon.TextSize = 24
    icon.TextXAlignment = Enum.TextXAlignment.Center
    icon.Parent = notification
    
    -- النص
    local text = Instance.new("TextLabel")
    text.Text = msg
    text.Size = UDim2.new(1, -50, 1, 0)
    text.Position = UDim2.new(0, 45, 0, 0)
    text.BackgroundTransparency = 1
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.Font = Enum.Font.Gotham
    text.TextSize = 13
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.Parent = notification
    
    -- تأثير الدخول (انزلاق)
    local tweenIn = TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
        Position = UDim2.new(1, -320, 0, 10)
    })
    tweenIn:Play()
    
    -- انتظار ثم تأثير الخروج
    task.wait(duration or 3)
    
    local tweenOut = TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
        Position = UDim2.new(1, 0, 0, 10)
    })
    tweenOut:Play()
    
    tweenOut.Completed:Wait()
    screenGui:Destroy()
end

-- استخدام الدالة
showNotification("✅ تم تشغيل السكريبت!", 3)
showNotification("لا تستعمل مطول عشان الباند", 2)
showNotification("🎯 اضغط E للضرب", 3)