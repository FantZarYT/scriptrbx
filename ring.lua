local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }

    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end

    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(Workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end

    EnablePartControl()
end

local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local TextChatService = game:GetService("TextChatService")

local LocalPlayer = Players.LocalPlayer

-- daaaaa

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Line = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Hide = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local credits = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local plus = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local mine = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local RadiusDisplay = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.140065148, 0, 0.433823526, 0)
Frame.Size = UDim2.new(0, 216, 0, 201)

Line.Name = "Line"
Line.Parent = Frame
Line.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.203440353, 0)
Line.Size = UDim2.new(0, 216, 0, 1)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 216, 0, 41)
Title.Font = Enum.Font.Gotham
Title.Text = "Ring by spr0ud4"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Title
UIPadding.PaddingLeft = UDim.new(0, 8)

UICorner.Parent = Title

UICorner_2.Parent = Frame

Hide.Name = "Hide"
Hide.Parent = Frame
Hide.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Hide.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(0, 0, 0.147787362, 0)
Hide.Size = UDim2.new(0, 216, 0, 11)

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.0370370373, 0, 0.239134371, 0)
ToggleButton.Size = UDim2.new(0, 200, 0, 35)
ToggleButton.Font = Enum.Font.Gotham
ToggleButton.Text = "Ring off"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 15.000

UICorner_3.Parent = ToggleButton

credits.Name = "credits"
credits.Parent = Frame
credits.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0.0370370373, 0, 0.777707994, 0)
credits.Size = UDim2.new(0, 200, 0, 35)
credits.Font = Enum.Font.Gotham
credits.Text = "credits undersky"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 14.000

UICorner_4.Parent = credits

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
plus.BorderColor3 = Color3.fromRGB(0, 0, 0)
plus.BorderSizePixel = 0
plus.Position = UDim2.new(0.0370370373, 0, 0.433164388, 0)
plus.Size = UDim2.new(0, 90, 0, 30)
plus.Font = Enum.Font.Gotham
plus.Text = "+2"
plus.TextColor3 = Color3.fromRGB(255, 255, 255)
plus.TextSize = 15.000

UICorner_5.Parent = plus

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
mine.BorderColor3 = Color3.fromRGB(0, 0, 0)
mine.BorderSizePixel = 0
mine.Position = UDim2.new(0.0370000191, 0, 0.604074657, 0)
mine.Size = UDim2.new(0, 90, 0, 30)
mine.Font = Enum.Font.Gotham
mine.Text = "-2"
mine.TextColor3 = Color3.fromRGB(255, 255, 255)
mine.TextSize = 15.000

UICorner_6.Parent = mine

RadiusDisplay.Name = "RadiusDisplay"
RadiusDisplay.Parent = Frame
RadiusDisplay.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
RadiusDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
RadiusDisplay.BorderSizePixel = 0
RadiusDisplay.Position = UDim2.new(0.509259284, 0, 0.433164388, 0)
RadiusDisplay.Size = UDim2.new(0, 90, 0, 65)
RadiusDisplay.Font = Enum.Font.Gotham
RadiusDisplay.Text = "50"
RadiusDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
RadiusDisplay.TextSize = 22.000

UICorner_7.Parent = RadiusDisplay

local function BGLCQ_fake_script() -- Frame.Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_RadiusDisplay = (8); -- // The RadiusDisplay of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_RadiusDisplay), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_RadiusDisplay))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_RadiusDisplay), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_RadiusDisplay))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(BGLCQ_fake_script)()

RadiusDisplays = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

Frame.Active = true -- main = gui

--ringPartsEnabled

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end
    EnablePartControl()
end

local radius = 50
local height = 100
local rotationSpeed = 1
local attractionStrength = 1000
local ringPartsEnabled = false

local function RetainPart(Part)
    if Part:IsA("BasePart") and not Part.Anchored and Part:IsDescendantOf(workspace) then
        if Part.Parent == LocalPlayer.Character or Part:IsDescendantOf(LocalPlayer.Character) then
            return false
        end

        Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
        Part.CanCollide = false
        return true
    end
    return false
end

local parts = {}
local function addPart(part)
    if RetainPart(part) then
        if not table.find(parts, part) then
            table.insert(parts, part)
        end
    end
end

local function removePart(part)
    local index = table.find(parts, part)
    if index then
        table.remove(parts, index)
    end
end

for _, part in pairs(workspace:GetDescendants()) do
    addPart(part)
end

workspace.DescendantAdded:Connect(addPart)
workspace.DescendantRemoving:Connect(removePart)

RunService.Heartbeat:Connect(function()
    if not ringPartsEnabled then return end
    
    local humanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local tornadoCenter = humanoidRootPart.Position
        for _, part in pairs(parts) do
            if part.Parent and not part.Anchored then
                local pos = part.Position
                local distance = (Vector3.new(pos.X, tornadoCenter.Y, pos.Z) - tornadoCenter).Magnitude
                local angle = math.atan2(pos.Z - tornadoCenter.Z, pos.X - tornadoCenter.X)
                local newAngle = angle + math.rad(rotationSpeed)
                local targetPos = Vector3.new(
                    tornadoCenter.X + math.cos(newAngle) * math.min(radius, distance),
                    tornadoCenter.Y + (height * (math.abs(math.sin((pos.Y - tornadoCenter.Y) / height)))),
                    tornadoCenter.Z + math.sin(newAngle) * math.min(radius, distance)
                )
                local directionToTarget = (targetPos - part.Position).unit
                part.Velocity = directionToTarget * attractionStrength
            end
        end
    end
end)

-- butt

ToggleButton.MouseButton1Down:connect(function()
    ringPartsEnabled = not ringPartsEnabled
    ToggleButton.Text = ringPartsEnabled and "Ring On" or "Ring Off"
    ToggleButton.BackgroundColor3 = ringPartsEnabled and Color3.fromRGB(71, 71, 71) or Color3.fromRGB(71, 71, 71)
end)

plus.MouseButton1Down:connect(function()
    radius = math.min(1000, radius + 2)
    RadiusDisplay.Text = "Rad: " .. radius
end)

mine.MouseButton1Down:connect(function()
    radius = math.max(1, radius - 2)
    RadiusDisplay.Text = "Rad: " .. radius
end)


