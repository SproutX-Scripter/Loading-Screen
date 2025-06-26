local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("AeonXLoading") then
    playerGui.AeonXLoading:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AeonXLoading"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.Parent = playerGui

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
background.BorderSizePixel = 0
background.Parent = screenGui

local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, 0, 0.1, 0)
header.Position = UDim2.new(0, 0, 0.3, 0)
header.BackgroundTransparency = 1
header.Text = "Aeon X Dark"
header.TextColor3 = Color3.new(1, 1, 1)
header.Font = Enum.Font.SourceSansBold
header.TextScaled = true
header.Parent = background

local loadingBarBg = Instance.new("Frame")
loadingBarBg.Size = UDim2.new(0.6, 0, 0.05, 0)
loadingBarBg.Position = UDim2.new(0.2, 0, 0.45, 0)
loadingBarBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
loadingBarBg.BorderSizePixel = 0
loadingBarBg.Parent = background

local loadingBar = Instance.new("Frame")
loadingBar.Size = UDim2.new(0, 0, 1, 0)
loadingBar.BackgroundColor3 = Color3.new(1, 1, 1)
loadingBar.BorderSizePixel = 0
loadingBar.Parent = loadingBarBg

local followText = Instance.new("TextLabel")
followText.Size = UDim2.new(1, 0, 0.05, 0)
followText.Position = UDim2.new(0, 0, 0.55, 0)
followText.BackgroundTransparency = 1
followText.Text = "Follow Aeonix on TikTok"
followText.TextColor3 = Color3.new(1, 1, 1)
followText.Font = Enum.Font.SourceSans
followText.TextScaled = true
followText.Parent = background

local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 80, 0, 80)
image.Position = UDim2.new(0.02, 0, 0.02, 0)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://REPLACE_WITH_YOUR_IMAGE_ID"
image.Parent = background

-- Smooth loading animation
for i = 5, 100 do
    loadingBar.Size = UDim2.new(i / 100, 0, 1, 0)
    task.wait(15.00)
end

-- Remove after loading
screenGui:Destroy()
