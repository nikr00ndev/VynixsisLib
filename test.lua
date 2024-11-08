-- Locals

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local Root = {
	name = "VynixsisLib",
	creator = "nikr00n_dev",
	description = "",
}

local VynixsisLib = {
	Settings = {
		Main = {
			Menu_Main = Color3.fromRGB(25, 0, 0),
			Menu_Text = Color3.fromRGB(240, 240, 240),
			KeySystem_Background = Color3.fromRGB(25, 25, 25),
			KeySystem_ButtonsBackground = Color3.fromRGB(34, 34, 34),
			KeySystem_BorderColor = Color3.new(0, 0, 0),
			KeySystem_BorderSize = "0",
			KeySystem_Font = Enum.Font.Sarpanch,
			KeySystem_Font2 = Enum.Font.SciFi,
			KeySystem_BackgroundTransparency = "1",
			KeySystem_BackgroundTransparency2 = "0",
			KeySystem_FontBolded = true,
			KeySystem_TextRich = true,
			KeySystem_DestroyButtonTextColor = Color3.fromRGB(255, 0, 0),
			KeySystem_CheckButtonTextColor = Color3.fromRGB(255, 255, 255),
			KeySystem_GetKeyButtonTextColor = Color3.fromRGB(255, 255, 255),
			KeySystem_KeyEnterTextColor = Color3.fromRGB(255, 255, 255),
			KeySystem_TextScaled = true,
			KeySystem_DestroyButtonTextSize = 14,
			KeySystem_CheckButtonTextSize = 14,
			KeySystem_GetKeyButtonTextSize = 14,
			KeySystem_KeyEnterTextSize = 14,
			KeySystem_KeyEnterPlaceholderColor3 = Color3.fromRGB(255, 255, 255),
			KeySystem_KeyEnterPlaceholderText = "Key",
			KeySystem_DestroyButtonText = "X",
			KeySystem_DestroyButtonPosition = UDim2.new(0.931, 0,0, 0),
			KeySystem_DestroyButtonSize = UDim2.new(0, 24,0, 21),
			KeySystem_CheckButtonPosition = UDim2.new(0.041, 0,0.327, 0),
			KeySystem_CheckButtonSize = UDim2.new(0, 151,0, 24),
			KeySystem_CheckButtonText = "Check Key",
			KeySystem_GetKeyButtonText = "Get Key",
			KeySystem_GetKeyButtonPosition = UDim2.new(0.041, 0,0.587, 0),
			KeySystem_GetKeyButtonSize = UDim2.new(0, 151,0, 24),
			KeySystem_Frame_ZIndex = 990,
			KeySystem_DestroyButton_ZIndex = 991,
			KeySystem_CheckKey_ZIndex = 991,
			KeySystem_GetKey_ZIndex = 991,
			KeySystem_Name_ZIndex = 991,
			KeySystem_KeyEnter_ZIndex = 991,
			KeySystem_FrameUICorner_CornerRadius = UDim.new(0.07, 1),
			KeySystem_CheckKeyUICorner_CornerRadius = UDim.new(0.18, 1),
			KeySystem_GetKeyUICorner_CornerRadius = UDim.new(0.18, 1),
			KeySystem_KeyEnterUICorner_CornerRadius = UDim.new(0.08, 1),
			KeySystem_KeyEnterPosition = UDim2.new(0.496, 0,0.329, 0),
			KeySystem_KeyEnterSize = UDim2.new(0, 163,0, 50),
			KeySystem_KeyEnterText = "",
			KeySystem_Frame_Draggable = true,
			KeySystem_NameText_Position = UDim2.new(-0.001, 0,-0.005, 0),
			KeySystem_NameText_Size = UDim2.new(0, 200,0, 22),
			KeySystem_NameText_TextColor = Color3.new(1, 1, 1),
			KeySystem_NameText_TextSize = 14,
			KeySystem_NameText_TextXAlignment = "Left",
		},
		Root = {
			VynixsisGUI_Name = "Vynixsis",
			VynixsisGUI_Parent = LocalPlayer.PlayerGui,
			VynixsisGUI_ResetOnSpawn = false,
			VynixsisGUI_Enabled = true,
		},
	},
	Variables = {
		Main = {
			Root = Root,
			SelectedSettings = "Main";
		},
	},
	
}

local VynixsisGUI = Instance.new("ScreenGui")
VynixsisGUI.Name = VynixsisLib.Settings.Root.VynixsisGUI_Name
VynixsisGUI.Parent = VynixsisLib.Settings.Root.VynixsisGUI_Parent
VynixsisGUI.ResetOnSpawn = VynixsisLib.Settings.Root.VynixsisGUI_ResetOnSpawn
VynixsisGUI.Enabled = VynixsisLib.Settings.Root.VynixsisGUI_Enabled

function Init()
	if isfolder("Vynixsis") == true then
		print("qq")
	else
		makefolder("Vynixsis")
	end
end

function ChangeTheme()

end

function VynixsisLib:SendNotification(Title, Content, Time)
	
end

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
	
	
	MainFrame.Parent = VynixsisGUI
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

function MakeKeySystemWindow(Title, ValidKey, OkCallback, GetKeyLink)
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
	
	local namelol = Title
	local validedkey = ValidKey
	local getkeybuttonlink = GetKeyLink
	
	Frame.ZIndex = VynixsisLib.Settings.Main.KeySystem_Frame_ZIndex
	DestroyButton.ZIndex = VynixsisLib.Settings.Main.KeySystem_DestroyButton_ZIndex
	CheckKey.ZIndex = VynixsisLib.Settings.Main.KeySystem_CheckKey_ZIndex
	GetKey.ZIndex = VynixsisLib.Settings.Main.KeySystem_GetKey_ZIndex
	Name.ZIndex = VynixsisLib.Settings.Main.KeySystem_Name_ZIndex
	KeyEnter.ZIndex = VynixsisLib.Settings.Main.KeySystem_KeyEnter_ZIndex
	
	Frame.Name = tostring(namelol) .. "_KeySystem"
	Frame.Parent = VynixsisGUI
	Frame.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem_Background
	Frame.BorderColor3 = VynixsisLib.Settings.Main.KeySystem_BorderColor
	Frame.Position = UDim2.new(0.365, 0,0.415, 0)
	Frame.Size = UDim2.new(0, 0, 0, 0)
	Frame.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	Frame.Draggable = VynixsisLib.Settings.Main.KeySystem_Frame_Draggable
	
	FrameUICorner.Parent = Frame
	FrameUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem_FrameUICorner_CornerRadius
	
	CheckKeyUICorner.Parent = CheckKey
	CheckKeyUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem_CheckKeyUICorner_CornerRadius
	
	GetKeyUICorner.Parent = GetKey
	GetKeyUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem_GetKeyUICorner_CornerRadius
	
	KeyEnterUICorner.Parent = KeyEnter
	KeyEnterUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem_KeyEnterUICorner_CornerRadius
	
	DestroyButton.Parent = Frame
	DestroyButton.Name = "Close"
	DestroyButton.BackgroundTransparency = VynixsisLib.Settings.Main.KeySystem_BackgroundTransparency
	DestroyButton.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	DestroyButton.Position = VynixsisLib.Settings.Main.KeySystem_DestroyButtonPosition
	DestroyButton.Size = VynixsisLib.Settings.Main.KeySystem_DestroyButtonSize
	DestroyButton.Font = VynixsisLib.Settings.Main.KeySystem_Font
	DestroyButton.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem_FontBolded
	DestroyButton.RichText = VynixsisLib.Settings.Main.KeySystem_TextRich
	DestroyButton.Text = VynixsisLib.Settings.Main.KeySystem_DestroyButtonText
	DestroyButton.TextColor3 = VynixsisLib.Settings.Main.KeySystem_DestroyButtonTextColor
	DestroyButton.TextScaled = VynixsisLib.Settings.Main.KeySystem_TextScaled
	DestroyButton.TextSize = VynixsisLib.Settings.Main.KeySystem_DestroyButtonTextSize
	
	CheckKey.Parent = Frame
	CheckKey.Name = "CheckKey"
	CheckKey.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem_ButtonsBackground
	CheckKey.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	CheckKey.Position = VynixsisLib.Settings.Main.KeySystem_CheckButtonPosition
	CheckKey.Size = VynixsisLib.Settings.Main.KeySystem_CheckButtonSize
	CheckKey.Font = VynixsisLib.Settings.Main.KeySystem_Font
	CheckKey.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem_FontBolded
	CheckKey.RichText = VynixsisLib.Settings.Main.KeySystem_TextRich
	CheckKey.Text = VynixsisLib.Settings.Main.KeySystem_CheckButtonText
	CheckKey.TextColor3 = VynixsisLib.Settings.Main.KeySystem_CheckButtonTextColor
	CheckKey.TextScaled = VynixsisLib.Settings.Main.KeySystem_TextScaled
	CheckKey.TextSize = VynixsisLib.Settings.Main.KeySystem_CheckButtonTextSize
	
	GetKey.Parent = Frame
	GetKey.Name = "GetKey"
	GetKey.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem_ButtonsBackground
	GetKey.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	GetKey.Position = VynixsisLib.Settings.Main.KeySystem_GetKeyButtonPosition
	GetKey.Size = VynixsisLib.Settings.Main.KeySystem_GetKeyButtonSize
	GetKey.Font = VynixsisLib.Settings.Main.KeySystem_Font
	GetKey.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem_FontBolded
	GetKey.RichText = VynixsisLib.Settings.Main.KeySystem_TextRich
	GetKey.Text = VynixsisLib.Settings.Main.KeySystem_GetKeyButtonText
	GetKey.TextColor3 = VynixsisLib.Settings.Main.KeySystem_GetKeyButtonTextColor
	GetKey.TextScaled = VynixsisLib.Settings.Main.KeySystem_TextScaled
	GetKey.TextSize = VynixsisLib.Settings.Main.KeySystem_GetKeyButtonTextSize
	
	KeyEnter.Parent = Frame
	KeyEnter.Name = "KeyEnter"
	KeyEnter.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem_ButtonsBackground
	KeyEnter.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	KeyEnter.Position = VynixsisLib.Settings.Main.KeySystem_KeyEnterPosition
	KeyEnter.Size = VynixsisLib.Settings.Main.KeySystem_KeyEnterSize
	KeyEnter.Font = VynixsisLib.Settings.Main.KeySystem_Font
	KeyEnter.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem_FontBolded
	KeyEnter.PlaceholderColor3 = VynixsisLib.Settings.Main.KeySystem_KeyEnterPlaceholderColor3
	KeyEnter.PlaceholderText = VynixsisLib.Settings.Main.KeySystem_KeyEnterPlaceholderText
	KeyEnter.RichText = VynixsisLib.Settings.Main.KeySystem_TextRich
	KeyEnter.TextColor3 = VynixsisLib.Settings.Main.KeySystem_KeyEnterTextColor
	KeyEnter.TextScaled = VynixsisLib.Settings.Main.KeySystem_TextScaled
	KeyEnter.TextSize = VynixsisLib.Settings.Main.KeySystem_KeyEnterTextSize
	KeyEnter.Text = VynixsisLib.Settings.Main.KeySystem_KeyEnterText
	
	Name.Parent = Frame
	Name.Name = "Name"
	Name.BackgroundTransparency = VynixsisLib.Settings.Main.KeySystem_BackgroundTransparency
	Name.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem_BorderSize
	Name.Position = VynixsisLib.Settings.Main.KeySystem_NameText_Position
	Name.Size = VynixsisLib.Settings.Main.KeySystem_NameText_Size
	Name.Font = VynixsisLib.Settings.Main.KeySystem_Font
	Name.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem_FontBolded
	Name.RichText = VynixsisLib.Settings.Main.KeySystem_TextRich
	Name.Text = tostring(namelol)
	Name.TextColor3 = VynixsisLib.Settings.Main.KeySystem_NameText_TextColor
	Name.TextScaled = VynixsisLib.Settings.Main.KeySystem_TextScaled
	Name.TextSize = VynixsisLib.Settings.Main.KeySystem_NameText_TextSize
	Name.TextXAlignment = VynixsisLib.Settings.Main.KeySystem_NameText_TextXAlignment
	
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
	
	CheckKey.MouseButton1Click:Connect(function()
		if KeyEnter.Text == validedkey then
			
		else
			KeyEnter.Text = "Invalid Key!"
		end
	end)
	
	GetKey.MouseButton1Click:Connect(function()
		
	end)
	
	GUILoadAnim()
end

function VynixsisLib:MakeTab()
	
end

-- Code

--VynixsisLib:MakeMainWindow("sdsdg", false)
MakeKeySystemWindow("sfgasf")
