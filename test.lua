-- Locals

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local VynixsisLibraryRoot = {
	name = "VynixsisLib",
	creator = "nikr00n_dev",
	description = "",
	protection = true,
}

local VynixsisLib = {
	Settings = {
		Main = {
			KeySystem = {
				Background = Color3.fromRGB(25, 25, 25),
				ButtonsBackground = Color3.fromRGB(40, 40, 40),
				BorderColor = Color3.new(0, 0, 0),
				BorderSize = "0",
				bFont = Enum.Font.Sarpanch,
				Font2 = Enum.Font.SciFi,
				BackgroundTransparency = "1",
				BackgroundTransparency2 = "0",
				FontBolded = true,
				TextRich = true,
				DestroyButtonTextColor = Color3.fromRGB(255, 0, 0),
				CheckButtonTextColor = Color3.fromRGB(255, 255, 255),
				GetKeyButtonTextColor = Color3.fromRGB(255, 255, 255),
				KeyEnterTextColor = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				DestroyButtonTextSize = 14,
				CheckButtonTextSize = 14,
				GetKeyButtonTextSize = 14,
				KeyEnterTextSize = 14,
				KeyEnterPlaceholderColor3 = Color3.fromRGB(255, 255, 255),
				KeyEnterPlaceholderText = "Key",
				DestroyButtonText = "X",
				DestroyButtonPosition = UDim2.new(0.931, 0,0, 0),
				DestroyButtonSize = UDim2.new(0, 24,0, 21),
				CheckButtonPosition = UDim2.new(0.041, 0,0.327, 0),
				CheckButtonSize = UDim2.new(0, 151,0, 24),
				CheckButtonText = "Check Key",
				GetKeyButtonText = "Get Key",
				GetKeyButtonPosition = UDim2.new(0.041, 0,0.587, 0),
				GetKeyButtonSize = UDim2.new(0, 151,0, 24),
				Frame_ZIndex = 990,
				DestroyButton_ZIndex = 991,
				CheckKey_ZIndex = 991,
				GetKey_ZIndex = 991,
				Name_ZIndex = 991,
				KeyEnter_ZIndex = 991,
				FrameUICorner_CornerRadius = UDim.new(0.07, 1),
				CheckKeyUICorner_CornerRadius = UDim.new(0.18, 1),
				GetKeyUICorner_CornerRadius = UDim.new(0.18, 1),
				KeyEnterUICorner_CornerRadius = UDim.new(0.08, 1),
				KeyEnterPosition = UDim2.new(0.496, 0,0.329, 0),
				KeyEnterSize = UDim2.new(0, 163,0, 50),
				KeyEnterText = "",
				Frame_Draggable = true,
				NameText_Position = UDim2.new(-0.001, 0,-0.005, 0),
				NameText_Size = UDim2.new(0, 318, 0, 22),
				NameText_TextColor = Color3.new(1, 1, 1),
				NameText_TextSize = 14,
				NameText_TextXAlignment = "Left",
			},
			Notifications = {
				Host = {
					FrameName = "VynixsisLibNotifications",
					BackgroundTransparency = 1,
					Position = UDim2.new(0.843, 0, 0.01, 0),
					Size = UDim2.new(0, 294, 0, 936),
					ListLayout_padding = UDim.new(0, 5),
					ListLayout_FillDirection = "Vertical",
					ListLayout_Wraps = false,
					ListLayout_SortOrder = "LayoutOrder",
					ListLayout_HorizontalAlignment = "Center",
					ListLayout_HorizontalFlex = "None",
					ListLayout_ItemLineAlignment = "Automatic",
					ListLayout_VerticalFlex = "None",
					ListLayout_VerticalAlignment = "Bottom",
				},
				Notification = {
					UICorner_CornerRadius = UDim.new(0.07, 1),
					BackgroundColor = Color3.fromRGB(25, 25, 25),
					Size = UDim2.new(0, 282,0, 82),
					BackgroundTransparency = 0,
					frameName = "Notification",
					labelName = "Title",
				}
			},
			Menu = {
				Main = Color3.fromRGB(25, 0, 0),
				Text = Color3.fromRGB(240, 240, 240),
			},
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
			libRoot = VynixsisLibraryRoot,
			SelectedSettings = "Main";
		},
	},
	Protection = {
		isProtect = VynixsisLibraryRoot.protection,
	},
	
}

local VynixsisGUI = Instance.new("ScreenGui")
VynixsisGUI.Name = VynixsisLib.Settings.Root.VynixsisGUI_Name
VynixsisGUI.Parent = VynixsisLib.Settings.Root.VynixsisGUI_Parent
VynixsisGUI.ResetOnSpawn = VynixsisLib.Settings.Root.VynixsisGUI_ResetOnSpawn
VynixsisGUI.Enabled = VynixsisLib.Settings.Root.VynixsisGUI_Enabled
local NotificationsHost = Instance.new("Frame")
NotificationsHost.Name = VynixsisLib.Settings.Main.Notifications.Host.FrameName
NotificationsHost.Parent = VynixsisGUI
NotificationsHost.BackgroundTransparency = VynixsisLib.Settings.Main.Notifications.Host.BackgroundTransparency
NotificationsHost.Position = VynixsisLib.Settings.Main.Notifications.Host.Position
NotificationsHost.Size = VynixsisLib.Settings.Main.Notifications.Host.Size
local NHostListLayout = Instance.new("UIListLayout")
NHostListLayout.Parent = NotificationsHost
NHostListLayout.Padding = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_padding
NHostListLayout.FillDirection = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_FillDirection
NHostListLayout.Wraps = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_Wraps
NHostListLayout.SortOrder = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_SortOrder
NHostListLayout.HorizontalFlex = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_HorizontalFlex
NHostListLayout.HorizontalAlignment = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_HorizontalAlignment
NHostListLayout.ItemLineAlignment = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_ItemLineAlignment
NHostListLayout.VerticalFlex = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_VerticalFlex
NHostListLayout.VerticalAlignment = VynixsisLib.Settings.Main.Notifications.Host.ListLayout_VerticalAlignment

function VynixsisLib:Init()
	if isfolder("Vynixsis") == true then
		print("inited")
	else
		makefolder("Vynixsis")
		VynixsisLib:Init()
	end
end

function DestroyLib()
	VynixsisGUI:Destroy()
	script:Destroy()
end

function VynixsisLib:SendNotification(Title, Content, TimeDelay)
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Content = Instance.new("TextButton")
	
	UICorner.Parent = Frame
	UICorner.CornerRadius = VynixsisLib.Settings.Main.Notifications.Notification.UICorner_CornerRadius
	
	Frame.Parent = NotificationsHost
	Frame.Name = VynixsisLib.Settings.Main.Notifications.Notification.frameName
	Frame.BackgroundColor3 = VynixsisLib.Settings.Main.Notifications.Notification.BackgroundColor
	Frame.BackgroundTransparency = VynixsisLib.Settings.Main.Notifications.Notification.BackgroundTransparency
	Frame.Size = VynixsisLib.Settings.Main.Notifications.Notification.Size
	Frame.Visible = true
	Frame.Transparency = 1
	
	Title.Parent = Frame
	Title.Name = VynixsisLib.Settings.Main.Notifications.Notification.labelName
	
	local function nSendAnim()
		while Frame.Transparency > 0 do
			Frame.Transparency -= 0.1
			wait(0.04)
		end
	end
	local function nCloseAnim()
		while Frame.Transparency < 1 do
			Frame.Transparency += 0.1
			wait(0.03)
		end
	end
	
	nSendAnim()
	wait(TimeDelay)
	nCloseAnim()
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

function VynixsisLib:MakeKeySystemWindow(Title, ValidKey, OkCallback, GetKeyLink)
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
	
	Frame.ZIndex = VynixsisLib.Settings.Main.KeySystem.Frame_ZIndex
	DestroyButton.ZIndex = VynixsisLib.Settings.Main.KeySystem.DestroyButton_ZIndex
	CheckKey.ZIndex = VynixsisLib.Settings.Main.KeySystem.CheckKey_ZIndex
	GetKey.ZIndex = VynixsisLib.Settings.Main.KeySystem.GetKey_ZIndex
	Name.ZIndex = VynixsisLib.Settings.Main.KeySystem.Name_ZIndex
	KeyEnter.ZIndex = VynixsisLib.Settings.Main.KeySystem.KeyEnter_ZIndex
	
	Frame.Name = tostring(namelol) .. "_KeySystem"
	Frame.Parent = VynixsisGUI
	Frame.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem.Background
	Frame.BorderColor3 = VynixsisLib.Settings.Main.KeySystem.BorderColor
	Frame.Position = UDim2.new(0.365, 0,0.415, 0)
	Frame.Size = UDim2.new(0, 0, 0, 0)
	Frame.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	Frame.Draggable = VynixsisLib.Settings.Main.KeySystem.Frame_Draggable
	
	FrameUICorner.Parent = Frame
	FrameUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem.FrameUICorner_CornerRadius
	
	CheckKeyUICorner.Parent = CheckKey
	CheckKeyUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem.CheckKeyUICorner_CornerRadius
	
	GetKeyUICorner.Parent = GetKey
	GetKeyUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem.GetKeyUICorner_CornerRadius
	
	KeyEnterUICorner.Parent = KeyEnter
	KeyEnterUICorner.CornerRadius = VynixsisLib.Settings.Main.KeySystem.KeyEnterUICorner_CornerRadius
	
	DestroyButton.Parent = Frame
	DestroyButton.Name = "Close"
	DestroyButton.BackgroundTransparency = VynixsisLib.Settings.Main.KeySystem.BackgroundTransparency
	DestroyButton.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	DestroyButton.Position = VynixsisLib.Settings.Main.KeySystem.DestroyButtonPosition
	DestroyButton.Size = VynixsisLib.Settings.Main.KeySystem.DestroyButtonSize
	DestroyButton.Font = VynixsisLib.Settings.Main.KeySystem.bFont
	DestroyButton.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem.FontBolded
	DestroyButton.RichText = VynixsisLib.Settings.Main.KeySystem.TextRich
	DestroyButton.Text = VynixsisLib.Settings.Main.KeySystem.DestroyButtonText
	DestroyButton.TextColor3 = VynixsisLib.Settings.Main.KeySystem.DestroyButtonTextColor
	DestroyButton.TextScaled = VynixsisLib.Settings.Main.KeySystem.TextScaled
	DestroyButton.TextSize = VynixsisLib.Settings.Main.KeySystem.DestroyButtonTextSize
	
	CheckKey.Parent = Frame
	CheckKey.Name = "CheckKey"
	CheckKey.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem.ButtonsBackground
	CheckKey.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	CheckKey.Position = VynixsisLib.Settings.Main.KeySystem.CheckButtonPosition
	CheckKey.Size = VynixsisLib.Settings.Main.KeySystem.CheckButtonSize
	CheckKey.Font = VynixsisLib.Settings.Main.KeySystem.bFont
	CheckKey.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem.FontBolded
	CheckKey.RichText = VynixsisLib.Settings.Main.KeySystem.TextRich
	CheckKey.Text = VynixsisLib.Settings.Main.KeySystem.CheckButtonText
	CheckKey.TextColor3 = VynixsisLib.Settings.Main.KeySystem.CheckButtonTextColor
	CheckKey.TextScaled = VynixsisLib.Settings.Main.KeySystem.TextScaled
	CheckKey.TextSize = VynixsisLib.Settings.Main.KeySystem.CheckButtonTextSize
	
	GetKey.Parent = Frame
	GetKey.Name = "GetKey"
	GetKey.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem.ButtonsBackground
	GetKey.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	GetKey.Position = VynixsisLib.Settings.Main.KeySystem.GetKeyButtonPosition
	GetKey.Size = VynixsisLib.Settings.Main.KeySystem.GetKeyButtonSize
	GetKey.Font = VynixsisLib.Settings.Main.KeySystem.bFont
	GetKey.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem.FontBolded
	GetKey.RichText = VynixsisLib.Settings.Main.KeySystem.TextRich
	GetKey.Text = VynixsisLib.Settings.Main.KeySystem.GetKeyButtonText
	GetKey.TextColor3 = VynixsisLib.Settings.Main.KeySystem.GetKeyButtonTextColor
	GetKey.TextScaled = VynixsisLib.Settings.Main.KeySystem.TextScaled
	GetKey.TextSize = VynixsisLib.Settings.Main.KeySystem.GetKeyButtonTextSize
	
	KeyEnter.Parent = Frame
	KeyEnter.Name = "KeyEnter"
	KeyEnter.BackgroundColor3 = VynixsisLib.Settings.Main.KeySystem.ButtonsBackground
	KeyEnter.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	KeyEnter.Position = VynixsisLib.Settings.Main.KeySystem.KeyEnterPosition
	KeyEnter.Size = VynixsisLib.Settings.Main.KeySystem.KeyEnterSize
	KeyEnter.Font = VynixsisLib.Settings.Main.KeySystem.bFont
	KeyEnter.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem.FontBolded
	KeyEnter.PlaceholderColor3 = VynixsisLib.Settings.Main.KeySystem.KeyEnterPlaceholderColor3
	KeyEnter.PlaceholderText = VynixsisLib.Settings.Main.KeySystem.KeyEnterPlaceholderText
	KeyEnter.RichText = VynixsisLib.Settings.Main.KeySystem.TextRich
	KeyEnter.TextColor3 = VynixsisLib.Settings.Main.KeySystem.KeyEnterTextColor
	KeyEnter.TextScaled = VynixsisLib.Settings.Main.KeySystem.TextScaled
	KeyEnter.TextSize = VynixsisLib.Settings.Main.KeySystem.KeyEnterTextSize
	KeyEnter.Text = VynixsisLib.Settings.Main.KeySystem.KeyEnterText
	
	Name.Parent = Frame
	Name.Name = "Name"
	Name.BackgroundTransparency = VynixsisLib.Settings.Main.KeySystem.BackgroundTransparency
	Name.BorderSizePixel = VynixsisLib.Settings.Main.KeySystem.BorderSize
	Name.Position = VynixsisLib.Settings.Main.KeySystem.NameText_Position
	Name.Size = VynixsisLib.Settings.Main.KeySystem.NameText_Size
	Name.Font = VynixsisLib.Settings.Main.KeySystem.bFont
	Name.FontFace.Bold = VynixsisLib.Settings.Main.KeySystem.FontBolded
	Name.RichText = VynixsisLib.Settings.Main.KeySystem.TextRich
	Name.Text = tostring(namelol)
	Name.TextColor3 = VynixsisLib.Settings.Main.KeySystem.NameText_TextColor
	Name.TextScaled = VynixsisLib.Settings.Main.KeySystem.TextScaled
	Name.TextSize = VynixsisLib.Settings.Main.KeySystem.NameText_TextSize
	Name.TextXAlignment = VynixsisLib.Settings.Main.KeySystem.NameText_TextXAlignment
	
	local function GUILoadAnim()
		KeyEnter.Visible = false
		GetKey.Visible = false
		CheckKey.Visible = false
		Name.Visible = false
		DestroyButton.Visible = false
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
		Name.Visible = true
		DestroyButton.Visible = true
	end
	
	local function DragableGUIStart()
		local UserInputService = game:GetService("UserInputService")

		local gui = Frame

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

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

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	
	CheckKey.MouseButton1Click:Connect(function()
		if KeyEnter.Text == validedkey then
			if OkCallback == nil then
				print("Key: ok")
				wait(1)
				Frame:Destroy()
			else
				OkCallback()
				wait(1)
				Frame:Destroy()
			end
		else
			KeyEnter.Text = "Invalid Key!"
		end
	end)
	
	GetKey.MouseButton1Click:Connect(function()
		
	end)
	
	DestroyButton.MouseButton1Click:Connect(function()
		Frame:Destroy()
	end)
	
	GUILoadAnim()
	DragableGUIStart()
	
end

function VynixsisLib:MakeTab()
	
end

-- Code

--VynixsisLib:MakeMainWindow("sdsdg", false)
--VynixsisLib:MakeKeySystemWindow("MegaKeySystemMarkmok321lolSigmav2.0", "test")
--VynixsisLib:SendNotification("sfafs", "sdfasf", 9999999)
