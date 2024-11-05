local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local VynixsisLib = {
	Elements = {},
	ThemeObjects = {},
	Connections = {},
	Flags = {},
	Themes = {
		Default = {
			Main = Color3.fromRGB(25, 25, 25),
			Second = Color3.fromRGB(32, 32, 32),
			Stroke = Color3.fromRGB(60, 60, 60),
			Divider = Color3.fromRGB(60, 60, 60),
			Text = Color3.fromRGB(240, 240, 240),
			TextDark = Color3.fromRGB(150, 150, 150)
		},
		Main = {
			Main = Color3.fromRGB(25, 0, 0),
			Second = Color3.fromRGB(32, 0, 0),
			Stroke = Color3.fromRGB(60, 0, 0),
			Divider = Color3.fromRGB(60, 0, 0),
			Text = Color3.fromRGB(240, 240, 240),
			TextDark = Color3.fromRGB(150, 150, 150)
		}
	},
	SelectedTheme = "Default",
	Folder = nil,
	SaveCfg = false
}

local Vynixsis = Instance.new("ScreenGui")
Vynixsis.Name = "Vynixsis"
Vynixsis.Parent = LocalPlayer.PlayerGui

function VynixsisLib:MakeMainWindow(Name, Icon)
	local MainFrame = Instance.new("Frame")
	local MainFrameUICorner = Instance.new("UICorner")
	local MainFrameUIGradient = Instance.new("UIGradient")
	local MainFrameUIStroke = Instance.new("UIStroke")
	local UIFrame = Instance.new("Frame")
	local UIFrameLibName = Instance.new("TextLabel")
	local UIFrameLibImage = Instance.new("ImageLabel")
	local ButtonsFrame = Instance.new("Frame")
	local ButtonsFrameScrollingFrame = Instance.new("ScrollingFrame")
	local ButtonsFrameSFUIListLayout = Instance.new("UIListLayout")
	local TabFrame = Instance.new("Frame")
	local TabFrameScrollingFrame = Instance.new("ScrollingFrame")
	local TabFrameSFUIListLayout = Instance.new("UIListLayout")
	
	MainFrame.Parent = Vynixsis
	MainFrame.Name = Name
	MainFrame.BackgroundColor3 = Color3.new(0.184314, 0.184314, 0.184314)
	MainFrame.BackgroundTransparency = 0
	MainFrame.Position = UDim2.new(0.161, 0,0.253, 0)
	MainFrame.Size = UDim2.new(0, 718,0, 423)
	MainFrame.Visible = true
	
	MainFrameUICorner.Parent = MainFrame
	MainFrameUICorner.CornerRadius = UDim.new(0.07, 1)
	
	MainFrameUIGradient.Parent = MainFrame
	MainFrameUIGradient.Enabled = true
	MainFrameUIGradient.Rotation = -63
	MainFrameUIGradient.Transparency = NumberSequence.new(0.06)
	
	MainFrameUIStroke.Parent = MainFrame
	MainFrameUIStroke.ApplyStrokeMode = "Border"
	MainFrameUIStroke.Color = Color3.new(0, 0, 0)
	MainFrameUIStroke.LineJoinMode = "Round"
	MainFrameUIStroke.Thickness = 1
	MainFrameUIStroke.Transparency = 0
	MainFrameUIStroke.Enabled = true
	
	UIFrame.Parent = MainFrame
	UIFrame.Name = "Main"
	UIFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	UIFrame.BackgroundTransparency = 1
	UIFrame.Position = UDim2.new(-0.001, 0,-0, 0)
	UIFrame.Size = UDim2.new(0, 718,0, 40)
	UIFrame.Visible = true
	
	UIFrameLibName.Parent = UIFrame
	UIFrameLibName.BackgroundTransparency = 1
	UIFrameLibName.Name = "LibName"
	UIFrameLibName.Position = UDim2.new(0.103, 0,-0.002, 0)
	UIFrameLibName.Size = UDim2.new(0, 211,0, 41)
	UIFrameLibName.Visible = true
	UIFrameLibName.Font = Enum.Font.Sarpanch
	UIFrameLibName.FontFace.Bold = true
	UIFrameLibName.RichText = false
	UIFrameLibName.Text = "Vynixsis Library"
	UIFrameLibName.TextColor3 = Color3.new(1, 1, 1)
	UIFrameLibName.TextDirection = "Auto"
	UIFrameLibName.TextScaled = false
	UIFrameLibName.TextSize = 32
	UIFrameLibName.TextStrokeColor3 = Color3.new(1, 0, 0)
	UIFrameLibName.TextStrokeTransparency = 1
	UIFrameLibName.TextWrapped = false
	UIFrameLibName.TextXAlignment = "Left"
	UIFrameLibName.TextYAlignment = "Center"
end

function VynixsisLib:MakeKeySystemWindow()
	
end

function VynixsisLib:MakeTab()
	
end

local function ChangeTheme()
	
end

VynixsisLib:MakeMainWindow("sdsdg", false)
