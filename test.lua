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
Vynixsis.Parent = game.CoreGui

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
	
	local blackcolor = Color3.fromRGB(0, 0, 0)
	local redcolor = Color3.fromRGB(255, 0, 0)
	local ColorGradient = ColorSequence.new{
		ColorSequenceKeypoint.new(0, redcolor),
		ColorSequenceKeypoint.new(0.3, redcolor),
		ColorSequenceKeypoint.new(1, blackcolor),
	}
	
	MainFrame.ZIndex = 998
	UIFrame.ZIndex = 998
	ButtonsFrame.ZIndex = 998
	TabFrame.ZIndex = 998
	UIFrameLibName.ZIndex = 999
	UIFrameLibImage.ZIndex = 999
	
	
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
	MainFrameUIGradient.Color = ColorGradient
	
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
	UIFrameLibName.FontFace.Weight = Enum.FontWeight.ExtraBold
end

function VynixsisLib:MakeKeySystemWindow(Name, Key, CheckKeyButtonText, GetKeyButtonText)
	local Gui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local FrameUICorner = Instance.new("UICorner")
	local DestroyButton = Instance.new("TextButton")
	local CheckKey = Instance.new("TextButton")
	local CheckKeyUICorner = Instance.new("UICorner")
	local GetKey = Instance.new("TextButton")
	local GetKeyUICorner = Instance.new("UICorner")
	local Name = Instance.new("TextLabel")
	local KeyEnter = Instance.new("TextBox")
	local KeyEnterUICorner = Instance.new("UICorner")
	
	Frame.ZIndex = 990
	DestroyButton.ZIndex = 991
	CheckKey.ZIndex = 991
	GetKey.ZIndex = 991
	Name.ZIndex = 991
	KeyEnter.ZIndex = 991
	
	Gui.Name = Name
	Gui.Parent = game.Players.LocalPlayer.PlayerGui
	Gui.ResetOnSpawn = false
	Frame.Name = "Main"
	Frame.Parent = Gui
	Frame.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
	Frame.BorderColor3 = Color3.new(0, 0, 0)
	Frame.Position = UDim2.new(0.365, 0,0.415, 0)
	Frame.Size = UDim2.new(0, 0, 0, 0)
	Frame.BorderSizePixel = "0"
	FrameUICorner.Parent = Frame
	FrameUICorner.CornerRadius = UDim.new(0, 9)
	DestroyButton.Parent = Frame
	DestroyButton.BackgroundTransparency = "1"
	DestroyButton.BorderSizePixel = "0"
	DestroyButton.Position = UDim2.new(0.931, 0,0, 0)
	DestroyButton.Size = UDim2.new(0, 24,0, 21)
	DestroyButton.Font = Enum.Font.SourceSansBold
	DestroyButton.FontFace.Bold = true
	DestroyButton.RichText = true
	DestroyButton.Text = "X"
	DestroyButton.TextColor3 = Color3.new(1, 0, 0)
	DestroyButton.TextScaled = true
	DestroyButton.TextSize = "14"
	CheckKey.Parent = Frame
	CheckKey.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	CheckKey.BorderSizePixel = "0"
	CheckKey.Position = UDim2.new(0.041, 0,0.327, 0)
	CheckKey.Size = UDim2.new(0, 151,0, 24)
	CheckKey.Font = Enum.Font.SourceSansBold
	CheckKey.FontFace.Bold = true
	CheckKey.RichText = true
	CheckKey.Text = "Check Key"
	CheckKey.TextColor3 = Color3.new(1, 1, 1)
	CheckKey.TextScaled = true
	CheckKey.TextSize = "14"
	CheckKeyUICorner.Parent = CheckKey
	CheckKeyUICorner.CornerRadius = UDim.new(0, 9)
	GetKey.Parent = Frame
	GetKey.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	GetKey.BorderSizePixel = "0"
	GetKey.Position = UDim2.new(0.041, 0,0.587, 0)
	GetKey.Size = UDim2.new(0, 151,0, 24)
	GetKey.Font = Enum.Font.SourceSansBold
	GetKey.FontFace.Bold = true
	GetKey.RichText = true
	GetKey.Text = "Get Key"
	GetKey.TextColor3 = Color3.new(1, 1, 1)
	GetKey.TextScaled = true
	GetKey.TextSize = "14"
	GetKeyUICorner.Parent = GetKey
	GetKeyUICorner.CornerRadius = UDim.new(0, 9)
	KeyEnter.Parent = Frame
	KeyEnter.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	KeyEnter.BorderSizePixel = "0"
	KeyEnter.Position = UDim2.new(0.496, 0,0.329, 0)
	KeyEnter.Size = UDim2.new(0, 163,0, 50)
	KeyEnter.Font = Enum.Font.SourceSansBold
	KeyEnter.FontFace.Bold = true
	KeyEnter.PlaceholderColor3 = Color3.new(1, 1, 1)
	KeyEnter.PlaceholderText = "Key"
	KeyEnter.RichText = true
	KeyEnter.TextColor3 = Color3.new(0, 0, 0)
	KeyEnter.TextScaled = true
	KeyEnter.TextSize = "14"
	KeyEnter.Text = ""
	KeyEnterUICorner.Parent = KeyEnter
	KeyEnterUICorner.CornerRadius = UDim.new(0, 9)
	Name.Parent = Frame
	Name.BackgroundTransparency = 1
	Name.BorderSizePixel = "0"
	Name.Position = UDim2.new(-0.001, 0,-0.005, 0)
	Name.Size = UDim2.new(0, 200,0, 22)
	Name.Font = Enum.Font.SourceSansBold
	Name.FontFace.Bold = true
	Name.RichText = true
	Name.Text = "MultiYield KeySystem"
	Name.TextColor3 = Color3.new(1, 1, 1)
	Name.TextScaled = true
	Name.TextSize = "14"
	Name.TextXAlignment = "Left"
	
	local function GUILoadAnim()
		KeyEnter.Visible = false
		GetKey.Visible = false
		CheckKey.Visible = false
		Frame:TweenSize(
			UDim2.new(0, 350,0, 100),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Sine,
			2
		)
		wait(2)
		KeyEnter.Visible = true
		GetKey.Visible = true
		CheckKey.Visible = true
	end
	GUILoadAnim()
end

function VynixsisLib:MakeTab()
	
end

local function ChangeTheme()
	
end

--VynixsisLib:MakeMainWindow("sdsdg", false)
--VynixsisLib:MakeKeySystemWindow()
