UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
	getgenv().Mobile = true
	print("Mobile User : Enabled")
elseif UserInputService.KeyboardEnabled then
	getgenv().PC = true
	print("PC User : Enabled")
else
	getgenv().Mobile = true
	print("Unknow : nill")
end
_id = game.PlaceId
Player = game:GetService("Players").LocalPlayer
if _id == 6296321810 or _id == 6479231833 or _id == 6301638949 or _id == 6480994221 then --Book1ch1
	B1C1=true
elseif _id == 6373539583 or _id == 6485055338 or _id == 6406571212 or _id == 6485055836 or _id == 6425178683 or _id == 6485056556 then --book1ch2
	B1C2=true
elseif _id == 6472459099 or _id == 6688734180 or _id == 6682163754 or _id == 6688734313 or _id == 6682164423 or _id == 6688734395 then --book1ch3
	B1C3=true
elseif _id == 7265396387 or _id == 7251865082 then --4.1
	B1C4_1=true
elseif _id == 7265396805 or _id == 7251866503 then --4.2
	B1C4_2=true
elseif _id == 7265397072 or _id == 7251867155 then --4.3
	B1C4_3=true
elseif _id == 7265397848 or _id == 7251867574 then --4.4
	B1C4_4=true
elseif _id == 6243699076 or _id == 15989427413 or _id == 7068737459 then --Lobby
	Lobby=true
elseif _id == 7068738088 or _id == 7068951438 or _id == 7068951914 or _id == 7068739000 then --Twt1
	TWT1=true
elseif _id == 7068740106 or _id == 7068952294 then --twtend
	TWT_END=true
elseif _id == 15996404472 or _id == 15996407335 or _id == 15996411979 or _id == 15996410294 or _id == 15996413469 or _id == 15996414738 or _id == 15996416081 or _id == 15996417416 then --classic
	Classic=true
elseif _id == 8056702588 then --Book2ch1
	B2C1=true
	loadstring(game:HttpGet("https://pastebin.com/raw/pCbf1vCX"))()
elseif _id == 13489800654 then --Book2ch2
	B2C2=true
	loadstring(game:HttpGet("https://pastebin.com/raw/pCbf1vCX"))()
elseif _id == 15962819441 then --Book2ch3
	B2C3=true
	loadstring(game:HttpGet("https://pastebin.com/raw/hYNt1wWN"))()
elseif _id == 8311302084 or _id == 8311299084 then --Xmas
	XMAS=true
elseif _id == 11126398230 then --NC
	Circus=true
elseif _id == 7618863566 then --Hell
	Hell=true
elseif _id == 7633631103 then --HW1
	HW1=true
elseif _id == 7633631351 then --HW2
	HW2=true
elseif _id == 7633631511 then --HW3
	HW3=true
elseif _id == 537413528 then
	BuildBoat = true
elseif 16732694052 then
	Fisch = true
	loadstring(game:HttpGet("https://pastebin.com/raw/XbFS3MnL"))()
end
if game.CoreGui:FindFirstChild("Synack") then
	game.CoreGui.Synack:Destroy()
end
wait(2)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/G1GX/Fetching/main/Master/Fetch%25ngUI"))()
ESP = function(obj, Color)
	if not obj:FindFirstChild(";-;") then
		local H = Instance.new("Highlight")
		H.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		H.FillTransparency = 0.5
		H.Name = ";-;"
		H.FillColor = Color
		H.OutlineColor = Color3.fromRGB(255, 255, 255)
		H.OutlineTransparency = 0
		H.Adornee = obj
		H.Parent = obj
	end
end
GameAI = function()
	pcall(function()
		for _, ai1 in pairs(workspace.GameAI:GetChildren()) do
			if ai1:IsA("Model") then
				ESP(ai1, Color3.fromRGB(255, 0, 0))
			end
		end
	end)
end
GameAI2 = function()
	pcall(function()
		for _, ai1 in pairs(workspace.GameAI2:GetChildren()) do
			if ai1:IsA("Model") then
				ESP(ai1, Color3.fromRGB(255, 0, 0))
			end
		end
	end)
end
TWT = function()
	pcall(function()
		for _, ai in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if ai.Name == "AI" and ai:IsA("Model") then
				ESP(ai, Color3.fromRGB(255, 0, 0))
			end
		end
	end)
end
TWT2 = function()
	pcall(function()
		TWTAI = game:GetService("Workspace"):FindFirstChild("SamaAI", true)
		TWTAI2 = game:GetService("Workspace"):FindFirstChild("CrawlAI", true)
		ESP(TWTAI, Color3.fromRGB(255, 0, 0))
		ESP(TWTAI2, Color3.fromRGB(255, 0, 0))
	end)
end
Book1Ch3 = function()
	pcall(function()
		Omukade = game:GetService("Workspace"):FindFirstChild("omukadeMAIN", true)
		ESP(Omukade, Color3.fromRGB(255, 0, 0))
	end)
end
Saigomo = function()
	pcall(function()
		Saigomo = game:GetService("Workspace"):FindFirstChild("Saigomo", true)
		ESP(Saigomo, Color3.fromRGB(255, 0, 0))
	end)
end
Book2Ch1 = function()
	pcall(function()
		for _, met in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if met:IsA("Model") and met:FindFirstChild("HumanoidRootPart") then
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://8985768301" then	--Rin
						ESP(v, Color3.fromRGB(255, 0, 0))
					end
				end
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://8028359449" then	--OldmanMonster
						ESP(v, Color3.fromRGB(255, 0, 0))
					end
				end
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://821007978" then	--Tsuya
						ESP(v, Color3.fromRGB(255, 0, 0))
					end
				end
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://9104396416" then	--Hyukume
						ESP(v, Color3.fromRGB(255, 0, 0))

					end
				end
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://9036476435" then	--kishin
						ESP(v, Color3.fromRGB(255, 0, 0))

					end
				end
				for _, v in pairs(met:GetChildren()) do
					if v:IsA("MeshPart") and v.TextureID == "rbxassetid://8208335769" then		--tenome
						ESP(v, Color3.fromRGB(255, 0, 0))
					end
				end
			end
		end
	end)
end
Book2Ch2 = function()
	pcall(function()
		for _, met in ipairs(workspace:GetDescendants()) do
			if string.find(met.Name, "FleshEaters") then
				ESP(met, Color3.fromRGB(255, 0, 0))
			end
		end
		ashina = workspace:FindFirstChild("Ashina", true)
		Mother = workspace:FindFirstChild("Mother", true)
		Nure1 = workspace:FindFirstChild("NureMain", true)
		Nure2 = workspace:FindFirstChild("NureStage2", true)
		ESP(ashina, Color3.fromRGB(255, 0, 0))
		ESP(Mother, Color3.fromRGB(255, 0, 0))
		ESP(Nure1, Color3.fromRGB(255, 0, 0))
		ESP(Nure2, Color3.fromRGB(255, 0, 0))
	end)
end
Book2Ch3 = function()
	pcall(function()
		for _, met in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if met.Name == "GrinDemon" or met.Name == "GrinDemonNM" then
				ESP(met, Color3.fromRGB(255, 0, 0))
			end
		end
		for _, met2 in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if met2.Name == "UndergroundMonster" then
				ESP(met2, Color3.fromRGB(255, 0, 0))
			end
		end
		for _, met3 in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if met3.Name == "CorrupedOne" then
				ESP(met3, Color3.fromRGB(255, 0, 0))
			end
		end
		Dodo = workspace.Section2.Monster.Dodomeki
		Father = workspace.Section3.FatherAI
		Bod = workspace:FindFirstChild("BoogeymanAI", true)
		Yurie = workspace.Section5.Boss.MonsterFolder.Yurei
		ESP(Dodo, Color3.fromRGB(255, 0, 0))
		ESP(Father, Color3.fromRGB(255, 0, 0))
		ESP(Bod, Color3.fromRGB(255, 0, 0))
		ESP(Yurie, Color3.fromRGB(255, 0, 0))
		Isamu = workspace.Section3:FindFirstChild("IsamuAI")
		ESP(Isamu, Color3.fromRGB(255, 0, 0))
	end)
end
CircusSP = function()
	pcall(function()
		Clown = game:GetService("Workspace"):FindFirstChild("Clown", true)
		RingMaster = game:GetService("Workspace"):FindFirstChild("Yurei", true)
		ESP(RingMaster, Color3.fromRGB(255, 0, 0))
		ESP(Clown, Color3.fromRGB(255, 0, 0))
	end)
end
Players = function()
	for _, player in pairs(game:GetService("Players"):GetPlayers()) do
		if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			char = player.Character
			ESP(char, Color3.fromRGB(62, 181, 255))
		end
	end
end

XP = function()
	if B1C1 or B1C2 or HW1 or HW2 or HW3 or Hell or B1C4_1 or B1C4_2 or B1C4_3 or TWT_END or XMAS then
		GameAI()
		GameAI2()
	elseif B1C3 then
		GameAI()
		Book1Ch3()
	elseif B1C4_4 then
		GameAI()
		Saigomo()
	elseif TWT1 then
		TWT()
		TWT2()
	elseif B2C1 then
		Book2Ch1()
	elseif B2C2 then
		Book2Ch2()
	elseif B2C3 then
		Book2Ch3()
	elseif Circus then
		CircusSP()
	end
end
--Hop
HopServer = function(FullServer) -- Hop Server (Low)
	local FullServer = FullServer or false

	local Http = game:GetService("HttpService")
	local Api = "https://games.roblox.com/v1/games/"

	local _place = game.PlaceId
	local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
	local ListServers = function (cursor)
		local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
		return Http:JSONDecode(Raw)
	end

	local Server, Next; repeat
		local Servers = ListServers(Next)
		Server = Servers.data[1]
		Next = Servers.nextPageCursor
	until Server
	repeat
		if not FullServer then
			game:GetService("TeleportService"):TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
		else
			if request then
				local servers = {}
				local req = request(
					{
						Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)
					}
				).Body;
				local body = game:GetService("HttpService"):JSONDecode(req)
				if body and body.data then
					for i, v in next, body.data do
						if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
							table.insert(servers, 1, v.id)
						end
					end
				end
				if #servers > 0 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
				else
					return "Couldn't find a server."
				end
			end
		end
		wait()
	until game.PlaceId ~= game.PlaceId
end
--AntiKick
spawn(function()
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == Player and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == Player and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)
end)
--AntiAFK
spawn(function()
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Player.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		local VirtualUser = cloneref(game:GetService("VirtualUser"))
		Player.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
end)
--Fullbright
if getgenv().Fullbright then
	if not _G.FullBrightExecuted then
		_G.FullBrightEnabled = false
		_G.NormalLightingSettings = {
			Brightness = game:GetService("Lighting").Brightness,
			ClockTime = game:GetService("Lighting").ClockTime,
			FogEnd = game:GetService("Lighting").FogEnd,
			GlobalShadows = game:GetService("Lighting").GlobalShadows,
			Ambient = game:GetService("Lighting").Ambient
		}
		game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
			if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
				_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
				if not _G.FullBrightEnabled then
					repeat
						wait()
					until _G.FullBrightEnabled
				end
				game:GetService("Lighting").Brightness = 1
			end
		end)
		game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
			if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
				_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
				if not _G.FullBrightEnabled then
					repeat
						wait()
					until _G.FullBrightEnabled
				end
				game:GetService("Lighting").ClockTime = 12
			end
		end)
		game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
			if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
				_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
				if not _G.FullBrightEnabled then
					repeat
						wait()
					until _G.FullBrightEnabled
				end
				game:GetService("Lighting").FogEnd = 786543
			end
		end)
		game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
			if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
				_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
				if not _G.FullBrightEnabled then
					repeat
						wait()
					until _G.FullBrightEnabled
				end
				game:GetService("Lighting").GlobalShadows = false
			end
		end)
		game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
			if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
				_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
				if not _G.FullBrightEnabled then
					repeat
						wait()
					until _G.FullBrightEnabled
				end
				game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
			end
		end)
		game:GetService("Lighting").Brightness = 1
		game:GetService("Lighting").ClockTime = 12
		game:GetService("Lighting").FogEnd = 786543
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		local LatestValue = true
		spawn(function()
			repeat
				wait()
			until _G.FullBrightEnabled
			while wait() do
				if _G.FullBrightEnabled ~= LatestValue then
					if not _G.FullBrightEnabled then
						game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
						game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
						game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
						game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
						game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
					else
						game:GetService("Lighting").Brightness = 1
						game:GetService("Lighting").ClockTime = 12
						game:GetService("Lighting").FogEnd = 786543
						game:GetService("Lighting").GlobalShadows = false
						game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
					end
					LatestValue = not LatestValue
				end
			end
		end)
	end
end
--Tween
Tween = function(destination, speed)
	local distance = (destination.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	local tweenInfo = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
	local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
		CFrame = destination
	})
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 
		destination.Y, 
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
	)
	tween:Play()
end
--Teleport
tp = function(pos)
	pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	end)
end
--gametp
function gametp(id)
	teleportService = game:GetService("TeleportService")
	teleportService:Teleport(id, game.Players.LocalPlayer)
end
--tomodel
function tpmodel(model)
	character = Player.Character
	if character and model then
		character:SetPrimaryPartCFrame(model:GetPivot())
	end
end
--findprompt
findfire = function(obj)
	pcall(function()
		p=obj:FindFirstChildOfClass("ProximityPrompt", true)
		if p then
			fireproximityprompt(p)
		end
	end)
end
--doublefindfire
objectfindfire = function(obj)
	pcall(function()
		inc = workspace:FindFirstChild(obj, true)
		for _, v in ipairs(inc:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				fireproximityprompt(v)
			end
		end
	end)
end
--Noclip
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end
--instantfire
fire = function()
	for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
		if v:IsA("ProximityPrompt") and v.Enabled == true then
			fireproximityprompt(v)
		end
	end 
end
--Equip
equipTool = function(tool)
	pcall(function()
		a=Player.Backpack:FindFirstChild(tool)
		if a then
			Player.Character.Humanoid:EquipTool(a)
		end
	end)
end
--click
Click = function()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	task.wait(0.50)
end
--FPS
local function FPSBooster()
	local decalsyeeted = true
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
	sethiddenproperty(t, "Decoration", false)
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
	for _, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = Enum.Material.Plastic
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = Enum.Material.Plastic
			v.Reflectance = 0
		end
	end
	for _, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end
if getgenv().BoostFps then
	FPSBooster()
end
--Notify
Notify = function(Header, Desc, Time)
	Library:Notify({
		Title = Header,
		Desc = Desc,
		Logo = 83854127275050,
		Time = Time
	})
end

speeds = 1
local speaker = game:GetService("Players").LocalPlayer
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
nowe = false
function FLY()
	if nowe == true then
		nowe = false
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end

	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false
	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0
		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false
	end
end

CFspeed = 50
local CFloop
function cfly()
	local humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
	humanoid.PlatformStand = true
	local Head = Player.Character:WaitForChild("Head")
	Head.Anchored = true

	if CFloop then 
		CFloop:Disconnect() 
	end
	CFloop = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
		local moveDirection = humanoid.MoveDirection * (CFspeed * deltaTime)

		local headCFrame = Head.CFrame
		local cameraCFrame = workspace.CurrentCamera.CFrame
		local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
		cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)

		local cameraPosition = cameraCFrame.Position
		local headPosition = headCFrame.Position

		local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)

		Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
	end)
end

function uncfly()
	if CFloop then
		CFloop:Disconnect()
	end

	local humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
	humanoid.PlatformStand = false

	local Head = Player.Character:WaitForChild("Head")
	Head.Anchored = false
end


--game



--Skip
skipgame = function()
	if _id == 15996404472 then     --1.1
		tp(CFrame.new(3507.028564453125, 43.13663864135742, -1541.9735107421875))
	elseif _id == 15996407335 then --1.2
		tp(CFrame.new(1272.7239990234375, 200.04153442382812, -2537.25))
	elseif _id == 15996410294 then --2.1
		tp(CFrame.new(64.74767303466797, 60.94379806518555, -1622.5250244140625))
	elseif _id == 15996411979 then --2.2
		tp(CFrame.new(232.6605987548828, 100.84130096435547, -595.3074951171875))
	elseif _id == 15996413469 then --2.3
		tp(CFrame.new(1055.5179443359375, 78.26939392089844, -351.45831298828125))
	elseif _id == 15996414738 then --3.1
		tp(CFrame.new(2416.63671875, -23.031118392944336, 2294.332275390625))
	elseif _id == 15996416081 then --3.2
		tp(CFrame.new(-301.47650146484375, 88.01011657714844, -542.3770751953125))
	elseif _id == 15996417416 then --3.3
		tp(CFrame.new(431.4171142578125, 17.476003646850586, -846.1138916015625))
	elseif _id == 6296321810 or _id == 6479231833 then
		tp(CFrame.new(3507.028564453125, 43.13663864135742, -1541.9735107421875))  -- b1c1p1
	elseif _id == 6301638949 or _id == 6480994221 then
		tp(CFrame.new(1272.7239990234375, 200.04153442382812, -2537.25))           -- b1c1p2
	elseif _id == 6373539583 or _id == 6485055338 then
		tp(CFrame.new(64.74767303466797, 60.94379806518555, -1622.5250244140625))  -- b1c2p1
	elseif _id == 6406571212 or _id == 6485055836 then
		tp(CFrame.new(232.6605987548828, 100.84130096435547, -595.3074951171875))  -- b1c2p2
	elseif _id == 6425178683 or _id == 6485056556 then
		tp(CFrame.new(1055.5179443359375, 78.26939392089844, -351.45831298828125)) -- b1c2p3
	elseif _id == 6472459099 or _id == 6688734180 then
		tp(CFrame.new(2416.63671875, -23.031118392944336, 2294.332275390625))      -- b1c3p1
	elseif _id == 6682163754 or _id == 6688734313 then
		tp(CFrame.new(241.43087768554688, 33.24515914916992, 450.21502685546875))  -- b1c3p2
	elseif _id == 6682164423 or _id == 6688734395 then
		tp(CFrame.new(-654.1986694335938, 648.9832153320312, -1012.5780029296875)) -- b1c3p3
	elseif _id == 7265396387 or _id == 7251865082 then
		tp(CFrame.new(85.20524597167969, -51.00001525878906, -1415.0792236328125)) --b1c4
		--Gamemode
	elseif _id == 7068738088 or _id == 7068951438 then
		tp(CFrame.new(2528.98681640625, 8.164044380187988, -1184.1917724609375)) -- twt1
	elseif _id == 7068951914 or _id == 7068739000 then
		tp(CFrame.new(-439.1501770019531, 21.252744674682617, -1455.9263916015625)) -- twt2
	elseif _id == 7068740106 or _id == 7068952294 then
		tp(CFrame.new(2690.99169921875, 9.297460556030273, 649.3221435546875)) -- twt3
	end
end 
Window = Library:CreateWindow({
	Title = "",
	Logo = 83854127275050
})
--MainTAB
Tab_Information = Window:CreateTab({Title = "Information",Desc = "Update & Info",Icon = 115315406520018})
Tab_Setting = Window:CreateTab({Title = "Feature",Desc = "Functions & Misc",Icon = 127897217937601})
--Report/Info
Information_Section = Tab_Information:CreateSection({Title = "Information",Side = "Left"})
------------------------------------------------------------------------------------------
Information_Section:CreateLabel({Title = 'Required 400+ DPI',Side = "Center"})
Information_Section:CreateImage({Title = "ggigx",Desc = "Fetching Is Owner",Icon = 100618692787198})
Information_Section:CreateButton({Title = "Discord",Mode = 1,Callback = function()
	setclipboard("https://discord.gg/uy6TP4ew7d")
end})
--Setting
FunctionsSection = Tab_Setting:CreateSection({Title = "Functions",Side = "Left"})
Visual = Tab_Setting:CreateSection({Title = "ESP",Side = "Left"})
DisplaySection = Tab_Setting:CreateSection({Title = "Display",Side = "Left"})
--Functions
Visual:CreateButton({Title = "Players",Mode = 1,Callback = function()
	Players()
end})
Mob = Visual:CreateButton({Title = "Monster",Mode = 1,Callback = function()
	XP()
end})
FunctionsSection:CreateToggle({Title = "Lock Body",Value = _G.LockPY,Callback = function(value)
	_G.LockPY = value
end})
FunctionsSection:CreateToggle({Title = "Noclip",Value = false,Callback = function(value)
	if value  then
		noclip()
	else
		clip()
	end
end})
--Display
DisplaySection:CreateButton({Title = "Reduce CPU",Mode = 1,Callback = function()
	FPSBooster()
end})
DisplaySection:CreateButton({Title = "HOP Server",Mode = 1,Callback = function()
	HopServer(false)
end})
DisplaySection:CreateButton({Title = "HOP Server [ Less Player ]",Mode = 1,Callback = function()
	HopServer(true)
end})

Playerz = Tab_Setting:CreateSection({Title = "Players",Side = "Right"})
fly = Playerz:CreateSlider({
	Title = "Fly Speed",
	Desc = "Set Player Flying Speed.",
	Min = 2,
	Max = 15,
	Value = speeds,
	Callback = function(value)
		speeds = value
	end})
flyb = Playerz:CreateButton({Title = "Fly [ Toggle ]",Mode = 1,Callback = function()
	FLY()
end})
Playerz:CreateToggle({
	Title = "CFrame Fly",
	Value = false,
	Callback = function(value)
		if value then
			cfly()
		else
			uncfly()
		end
	end
})
Playerz:CreateSlider({
	Title = "Speed",
	Desc = "Set Player WalkSpeed.",
	Min = 16,
	Max = 150,
	Value = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end
})
--Teleport Player
_G.SelectPlayer = Player.Name
local Playerslist = {}
for _, player in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, player.Name)
end
local SelectedPlyDropdown = Playerz:CreateDropdown({
	Title = "Select Players",
	List = Playerslist,
	Value = _G.SelectPlayer,
	Multi = false,
	Callback = function(value)
		_G.SelectPlayer = value
	end})
Playerz:CreateButton({Title = "Teleport",Mode = 1,Callback = function()
	pcall(function()
		local player = workspace:FindFirstChild(_G.SelectPlayer, true)
		if player  and player:FindFirstChild("HumanoidRootPart") then
			tp(player.HumanoidRootPart.CFrame)
		else
			warn("Player not found or invalid!")
		end
	end)
end
})
Playerz:CreateButton({Title = "Refresh",Mode = 1,Callback = function()
	Playerslist = {}
	if type(SelectedPlyDropdown.Clear) == "function" then
		SelectedPlyDropdown:Clear()
	end
	for _, player in pairs(game:GetService("Players"):GetChildren()) do  
		table.insert(Playerslist, player.Name)
		if type(SelectedPlyDropdown.AddList) == "function" then
			SelectedPlyDropdown:AddList(player.Name)
		end
	end
end})



--Function Game




if B1C1 or B1C2 or B1C3 or TWT1 or B1C4_1 or Classic then
	General = Window:CreateTab({Title = "General",Desc = "Instant",Icon = 77027262361111})
	General_func = General:CreateSection({Title = "Instant",Side = "Left"})
	General_func:CreateButton({Title = "Skip", Desc = "Instant Win this part.",Mode = 2,Callback = function()
		skipgame()
	end})
elseif B1C4_2 then
	General = Window:CreateTab({Title = "Cursed School",Desc = "Section 2",Icon = 136647226583796})
	General_func = General:CreateSection({Title = "Automactic",Side = "Left"})
	General_func:CreateToggle({Title = "Automatic Butterflies",Value = _G.AutoButterfly,Callback = function(value)
		_G.AutoButterfly = value
	end})
	spawn(function()
		while task.wait() do
			if _G.AutoButterfly then
				for _, v in pairs(game:GetService("Workspace").Butterflies:GetChildren()) do
					if v.Name == "Butterfly" then
						tp(v.CFrame)
						findfire(v)
						break
					end
				end
			end
		end
	end)
elseif B1C4_3 then
	AutoburnA = function()
		pcall(function()
			_G.LockPY = true
			tp(CFrame.new(706.4743041992188, 14.950273513793945, 1929.3958740234375))
			for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v.Name == "Texture" or v.Name == "MeshPart" or v.Name == "TreeMeshTop" then
					v:Destroy()
				end
			end
			task.wait(0.5)
			tp(CFrame.new(860.1697998046875, 15.059876441955566, 2388.63427734375))
			fire()
			task.wait(0.5)
			tp(CFrame.new(839.8504028320312, 18.34674072265625, 2241.216552734375))
			fire()
			task.wait(0.5)
			tp(CFrame.new(668.060791015625, 18.767614364624023, 2099.3955078125))
			fire()
			task.wait(0.5)
			tp(CFrame.new(625.1378173828125, 17.63252830505371, 2345.30078125))
			fire()
			task.wait(0.5)
			tp(CFrame.new(759.3781127929688, 15.417532920837402, 2531.548583984375))
			fire()
			task.wait(0.5)
			tp(CFrame.new(864.6249389648438, 23.993000030517578, 2550.099853515625))
			fire()
			task.wait(0.5)
			tp(CFrame.new(860.1697998046875, 15.059876441955566, 2388.63427734375))
			fire()
			task.wait(1.5)
			tp(CFrame.new(687.65673828125, 13.798624038696289, 2253.633544921875))
			task.wait(0.5)
			fire()
			task.wait(0.1)
			fire()
			task.wait(0.1)
			fire()
			task.wait(0.1)
			fire()
			task.wait(0.1)
			fire()
			task.wait(0.1)
			fire()
			task.wait(0.1)
			fire()
		end)
	end
	General = Window:CreateTab({Title = "Massashige Mansion",Desc = "Section 3",Icon = 77536494874217})
	General_func = General:CreateSection({Title = "Automactic",Side = "Left"})
	General_func:CreateButton({Title = "Automatic",Desc = "Collect and Burn Armor.",Mode = 2,Callback = function()
		AutoburnA()
	end})
elseif B1C4_4 then
	character = Player.Character or Player.CharacterAdded:Wait()
	backpack = Player:WaitForChild("Backpack")
	function ModifyHandle(item)
		handle = item:FindFirstChild("Handle")
		if handle then
			handle.Size = Vector3.new(50, 50, 10)
			handle.Massless = true
		end
	end
	function CheckKatana()
		for _, item in pairs(character:GetChildren()) do
			if item.Name == "Katana" then
				ModifyHandle(item)
				break
			end
		end
		for _, item in pairs(backpack:GetChildren()) do
			if item.Name == "Katana" then
				ModifyHandle(item)
				break
			end
		end
	end
	if getgenv().Mobile then
		gameHearts = game:GetService("Workspace").GameHearts
		local RunService = game:GetService("RunService")
		local humanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
		local moving = false
		local targetPart = nil
		local speed = 1.7
		radius = 30
		local angle = 0
		local heartbeatConnection
		function moveAroundTarget()
			angle = angle + speed * RunService.Heartbeat:Wait()
			local xOffset = math.cos(angle) * radius
			local zOffset = math.sin(angle) * radius
			local newPosition = Vector3.new(targetPart.Position.X + xOffset, humanoidRootPart.Position.Y, targetPart.Position.Z + zOffset)
			humanoidRootPart.CFrame = CFrame.new(newPosition, targetPart.Position)
		end
		function TeleportOff()
			moving = false
			if heartbeatConnection then
				heartbeatConnection:Disconnect()
				heartbeatConnection = nil
			end
		end
		function TeleportOn()
			moving = true
			targetPart = nil
			foundHeart = false
			for _, v in pairs(gameHearts:GetChildren()) do
				if v.Name == "Heart" then
					foundHeart = true
					return
				end
			end
			if not foundHeart then
				boss = workspace.BossBattle:FindFirstChild("SpiderHitbox", true)
				boss.Rotation = Vector3.new(0, 0, 0)
				boss.Size = Vector3.new(30, 30, 30)
				boss.Transparency = 0.9
				targetPart = boss
				if targetPart then
					heartbeatConnection = RunService.Heartbeat:Connect(function()
						if moving then
							moveAroundTarget()
						end
					end)
				end
			end
		end
		function toHeart()
			for _, v in pairs(gameHearts.Heart:GetChildren()) do
				if v:IsA("UnionOperation") then
					v.Rotation = Vector3.new(0, 0, 0)
					v.Size = Vector3.new(58, 58, 58)
					Tween(v.CFrame * CFrame.new(0, 20, -3), 9e9)
				end
			end
		end
		function check()
			found = false
			for _, v in pairs(gameHearts:GetChildren()) do
				if v:IsA("Model") and v:FindFirstChildOfClass("BoolValue") then
					found = true
					v:Destroy()
					break
				end
			end
			if not found then
				toHeart()
			end
		end
		General = Window:CreateTab({Title = "The Control",Desc = "Boss",Icon = 117068825773483})
		General_func = General:CreateSection({Title = "Automactic",Side = "Left"})
		General_func:CreateToggle({Title = "Automatic Heart",Value = _G.AutoDHeart,Callback = function(value)
			_G.AutoDHeart = value
		end})
		General_func:CreateToggle({Title = "Automatic Boss",Value = _G.AutoSaigomo,Callback = function(value)
			_G.AutoSaigomo = value
			if value then
				TeleportOn()
				pcall(function()
					game.Workspace.BossMap:Destroy()
				end)
			else
				TeleportOff()
			end
		end})
		spawn(function()
			while task.wait(0.5) do
				if _G.AutoDHeart then
					check()
					equipTool("Katana")
					Click()
					Click()
				end
			end
		end)
		spawn(function()
			while task.wait(0.5) do
				if _G.AutoSaigomo then
					equipTool("Katana")
					CheckKatana()
					Click()
					Click()
				end
			end
		end)
	end
	if getgenv().PC then
		local RunService = game:GetService("RunService")
		local humanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
		local moving = false
		local targetPart = nil
		local speed = 1.7
		radius = 30
		local angle = 0
		local heartbeatConnection
		function moveAroundTarget()
			angle = angle + speed * RunService.Heartbeat:Wait()
			local xOffset = math.cos(angle) * radius
			local zOffset = math.sin(angle) * radius
			local newPosition = Vector3.new(targetPart.Position.X + xOffset, humanoidRootPart.Position.Y, targetPart.Position.Z + zOffset)
			humanoidRootPart.CFrame = CFrame.new(newPosition, targetPart.Position)
		end
		function TeleportOff()
			moving = false
			if heartbeatConnection then
				heartbeatConnection:Disconnect()
				heartbeatConnection = nil
			end
		end
		function TeleportOn()
			moving = true
			targetPart = nil
			foundHeart = false
			for _, v in pairs(workspace.GameHearts:GetChildren()) do
				if v.Name == "Heart" then
					foundHeart = true
					return
				end
			end
			if not foundHeart then
				boss = workspace.BossBattle:FindFirstChild("SpiderHitbox", true)
				boss.Rotation = Vector3.new(0, 0, 0)
				boss.Size = Vector3.new(30, 30, 30)
				boss.Transparency = 0.9
				targetPart = boss
				if targetPart then
					heartbeatConnection = RunService.Heartbeat:Connect(function()
						if moving then
							moveAroundTarget()
						end
					end)
				end
			end
		end
		General = Window:CreateTab({Title = "The Control",Desc = "Boss",Icon = 117068825773483})
		General_func = General:CreateSection({Title = "Automactic",Side = "Left"})
		General_func:CreateToggle({Title = "Automatic Heart",Value = _G.AutoDHeart_PC,Callback = function(value)
			_G.AutoDHeart_PC = value
		end})
		General_func:CreateToggle({Title = "Automatic Boss",Value = _G.AutoSaigomo_PC,Callback = function(value)
			_G.AutoSaigomo_PC = value
			if value then
				TeleportOn()
			else
				TeleportOff()
			end
		end})
		spawn(function()
			while task.wait() do
				if _G.AutoDHeart_PC then
					for _, v in pairs(workspace.GameHearts:GetChildren()) do
						if v.Name == "Heart" then
							if not v:FindFirstChildOfClass("BoolValue", true) then
								for _, heart in ipairs(v:GetDescendants()) do
									if heart:IsA("UnionOperation") then
										heart.Rotation = Vector3.new(0, 0, 0)
										heart.Size = Vector3.new(58, 58, 58)
										Tween(heart.CFrame * CFrame.new(0, 20, -3), 9e9)
									end
								end
							end
							if v:FindFirstChildOfClass("BoolValue", true) then
								v:Destroy()
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while task.wait() do
				if _G.AutoSaigomo_PC then
					equipTool("Katana")
					CheckKatana()
					Click()
					Click()
				end
			end
		end)
	end
elseif B2C1 then
	FindRat = function()
		for _, rat in ipairs(workspace:GetDescendants()) do
			if rat:IsA("MeshPart") then
				if rat.TextureID == "rbxassetid://8569135832" then
					local proximityPrompt = rat:FindFirstChildOfClass("ProximityPrompt")
					if proximityPrompt then
						tp(rat.CFrame)
						task.wait(0.45)
						fire()
						fire()
						fire()
						task.wait(0.2)
						tp(CFrame.new(-1539.063, -30.171, -3543.718))
						task.wait(0.1)
						equipTool("Poisoned Rat")
						task.wait(0.1)
						fire()
						fire()
						task.wait(6)
						tp(CFrame.new(-1563.528, -28.910, -3408.718))
						task.wait(0.45)
						fire()
						fire()
						task.wait(0.2)
						tp(CFrame.new(-1674.827, -21.010, -3402.391))
						break
					end
				end
			end
		end
	end
	S1 = Window:CreateTab({Title = "Who is Senzai?",Desc = "Section 1",Icon = 133611922620576})
	S2 = Window:CreateTab({Title = "Yoki Town",Desc = "Section 2",Icon = 74200810454626})
	S3 = Window:CreateTab({Title = "Shipwreck",Desc = "Section 3",Icon = 73629197298993})
	S1_city = S1:CreateSection({Title = "[1] Automactic",Side = "Left"})
	S1_rin = S1:CreateSection({Title = "[2] Rin & Mio",Side = "Right"})
	S1_mountain = S1:CreateSection({Title = "[3] Nagisa",Side = "Left"})
	S1_city:CreateButton({Title = "Enter Office",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-1778.0726318359375, 9.717201232910156, -4295.62109375))
		_G.LockPY = false
	end})
	S1_rin:CreateButton({Title = "Read Book",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-1674.8272705078125, -21.01018524169922, -3402.390869140625))
		task.wait(1)
		_G.LockPY = false
		fire()
	end})
	S1_rin:CreateButton({Title = "Automatic",Desc = "Poisoned Rat",Mode = 2,Callback = function()
		FindRat()
	end})
	S1_rin:CreateButton({Title = "Leave",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-1507.8475341796875, -29.25138282775879, -3418.783447265625))
		task.wait(1)
		_G.LockPY = false
		fire()
	end})
	S1_rin:CreateButton({Title = "Escape",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-961.4176635742188, -46.48267364501953, -3601.613525390625))
		_G.LockPY = false
	end})
	S1_mountain:CreateButton({Title = "[Mountain] Escape Nagisa",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(583.685546875, 567.3634643554688, -365.7061462402344))
		_G.LockPY = false
	end})
	S1_mountain:CreateButton({Title = "[Cave] Escape Nagisa",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(3866.74462890625, 140.48388671875, 10.994720458984375))
		_G.LockPY = false
	end})
	S2_town = S2:CreateSection({Title = "[1] Town",Side = "Left"})
	S2_pic = S2:CreateSection({Title = "[2] Picture and Candle",Side = "Right"})
	S2_town:CreateButton({Title = "Talk",Desc = "Start the Quests.",Mode = 2,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-323.47344970703125, 20.420881271362305, 3653.791748046875))
		task.wait(1)
		fire()
		_G.LockPY = false
	end})
	S2_town:CreateButton({Title = "Automatic",Desc = "Unlock Door.",Mode = 2,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-401.7100, 3069.5759, 3867.8293))
		task.wait(1)
		fire()
		task.wait(1)
		fire()
		tp(CFrame.new(-387.2115783691406, 19.296314239501953, 3780.984130859375))
		task.wait(1)
		fire()
		_G.LockPY = false
	end})
	selection_House = "[3] Drawing House"
	House = {"[1] House", "[2] House", "[3] Drawing House", "[4] House", "[5] House"}
	S2_town:CreateDropdown({Title = "Select House",List = House,Value = selection_House ,Multi = false,Callback = function(value)
		selection_House = value
	end})
	S2_town:CreateButton({Title = "Teleport",Mode = 1,Callback = function()
		if selection_House == "[1] House" then
			_G.LockPY = true
			tp(CFrame.new(-395.08563232421875, 3069.57568359375, 3891.535400390625))
			task.wait(1)
			_G.LockPY = false
		elseif selection_House == "[2] House" then
			_G.LockPY = true
			tp(CFrame.new(-4.784941673278809, 3067.82421875, 4712.5751953125))
			task.wait(1)
			_G.LockPY = false
		elseif selection_House == "[3] Drawing House"  then
			_G.LockPY = true
			tp(CFrame.new(-246.92311096191406, 3068.64306640625, 4219.79248046875))
			task.wait(1)
			_G.LockPY = false
		elseif selection_House == "[4] House" then
			_G.LockPY = true
			tp(CFrame.new(595.481689453125, 3069.576416015625, 4422.1923828125))
			task.wait(1)
			_G.LockPY = false
		elseif selection_House == "[5] House" then
			_G.LockPY = true
			tp(CFrame.new(-676.0106811523438, 3069.525146484375, 5002.66357421875))
			task.wait(1)
			_G.LockPY = false
		end
	end})
	S2_pic:CreateButton({Title = "Teleport to Main House",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-387.2115783691406, 19.296314239501953, 3780.984130859375))
		task.wait(0.5)
		_G.LockPY = false
	end})
	S2_pic:CreateLabel({Title = 'Please Turn On [Lock Body(On Feature TAB)] Before Teleport to Picture.',Side = "Center"})
	selection_pic = "Blue Samurai"
	pic = {"Blue Samurai", "Red Samurai", "Flute & Girl", "Fox Girl", "Old Man", "Husband & Wife", "Chicken & Girl", "Umbrella Girl", "Mother & Child In Snow"}
	S2_pic:CreateDropdown({Title = "Select Picture",List = pic,Value = selection_pic ,Multi = false,Callback = function(value)
		selection_pic = value
	end})
	S2_pic:CreateButton({Title = "Teleport [Safe All]",Mode = 1,Callback = function()
		if selection_pic == "Blue Samurai" then
			tp(CFrame.new(209.63929748535156, 3084.15478515625, 3832.36279296875))
		elseif selection_pic == "Red Samurai" then
			tp(CFrame.new(152.81671142578125, 3060.99365234375, 3861.497802734375))
		elseif selection_pic == "Flute & Girl"  then
			tp(CFrame.new(184.19967651367188, 3072.50390625, 3925.464111328125))
		elseif selection_pic == "Fox Girl" then
			tp(CFrame.new(247.91357421875, 3061.43408203125, 3851.5556640625))
		elseif selection_pic == "Old Man" then
			tp(CFrame.new(211.82174682617188, 3061.8310546875, 3816.2265625))
		elseif selection_pic == "Husband & Wife" then
			tp(CFrame.new(182.9803009033203, 3060.994140625, 3923.0703125))
		elseif selection_pic == "Chicken & Girl" then
			tp(CFrame.new(237.98187255859375, 3072.503662109375, 3878.86181640625))
		elseif selection_pic == "Umbrella Girl" then
			tp(CFrame.new(190.3834991455078, 3084.15478515625, 3903.572998046875))
		elseif selection_pic == "Mother & Child In Snow"  then
			tp(CFrame.new(168.0010223388672, 3072.5048828125, 3830.942626953125))
		end
	end})
	S2_pic:CreateButton({Title = "Collect Orb",Mode = 1,Callback = function()
		tp(CFrame.new(191.37278747558594, 3061.04443359375, 3891.880126953125))
		task.wait(0.3)
		fire()
		tp(CFrame.new(-323.47344970703125, 20.420881271362305, 3653.791748046875))
		task.wait(1.5)
		fire()
	end})
	S2_pic:CreateLabel({Title = 'Shipwreck',Side = "Center"})
	S2_pic:CreateButton({Title = "Enter to Shipwreck",Mode = 1,Callback = function()
		tp(CFrame.new(-1250.797119140625, 4.000001430511475, 6282.77197265625))
	end})
	S3_ship = S3:CreateSection({Title = "[1] In Shipwrek",Side = "Left"})
	S3_tenome = S3:CreateSection({Title = "[2] Tenome",Side = "Right"})
	S3_ship:CreateLabel({Title = 'Help yourself by Noclip Open in [Feature TAB].',Side = "Center"})
	S3_ship:CreateLabel({Title = 'This is all of Safe Candles.',Side = "Center"})
	selection_candle = "[1]"
	candle = {"[1]", "[2]", "[3]", "[4]", "[5]"}
	S3_ship:CreateDropdown({Title = "Select Candle",List = candle,Value = selection_candle ,Multi = false,Callback = function(value)
		selection_candle = value
	end})
	S3_ship:CreateButton({Title = "Teleport [Safe All]",Mode = 1,Callback = function()
		if selection_candle == "[1]" then
			_G.LockPY = true
			tp(CFrame.new(-6064.58154296875, 546.6656494140625, 7333.41259765625))
			task.wait(1)
			_G.LockPY = false
		elseif selection_candle == "[2]" then
			_G.LockPY = true
			tp(CFrame.new(-5464.75146484375, 460.80267333984375, 6265.3291015625))
			task.wait(1)
			_G.LockPY = false
		elseif selection_candle == "[3]" then
			_G.LockPY = true
			tp(CFrame.new(-5442.97265625, 460.80267333984375, 6251.0732421875))
			task.wait(1)
			_G.LockPY = false
		elseif selection_candle == "[4]" then
			_G.LockPY = true
			tp(CFrame.new(-5426.50732421875, 460.80267333984375, 6350.66748046875))
			task.wait(1)
			_G.LockPY = false
		elseif selection_candle == "[5]" then
			_G.LockPY = true
			tp(CFrame.new(-6818.63720703125, 758.5757446289062, 6432.8173828125))
			task.wait(1)
			_G.LockPY = false
		end
	end})
	S3_ship:CreateButton({Title = "Teleport to Safe",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-6066.32763671875, 546.6655883789062, 7172.89501953125))
		task.wait(1)
		_G.LockPY = false
	end})
	S3_tenome:CreateButton({Title = "Escape",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-6318.65966796875, 419.0329895019531, 6330.75830078125))
		task.wait(1)
		_G.LockPY = false
		Notify("Envy", "Thank for Using My Script ><", 10)
	end})
elseif B2C2 then
	--[[
	S1 = Window:CreateTab({Title = "Forgotten Legacy",Desc = "Section 1",Icon = 114475929048037})
	S2 = Window:CreateTab({Title = "Deep Ocean",Desc = "Section 2",Icon = 79028150480753})
	S3 = Window:CreateTab({Title = "The Sea Serpent",Desc = "Section 3 [Boss]",Icon = 73682216208023})
	S1_ocean = S1:CreateSection({Title = "[1] Ocean",Side = "Left"})
	S1_ashina = S1:CreateSection({Title = "[2] Ashina",Side = "Right"})
	S1_skeleton = S1:CreateSection({Title = "[3] Skeleton",Side = "Left"})
	S2_lever = S2:CreateSection({Title = "[1] Levers",Side = "Left"})
	S2_cook = S2:CreateSection({Title = "[2] Cooking",Side = "Right"})
	S2_tower = S2:CreateSection({Title = "[3] Cursed Tower",Side = "Left"})
	S2_chihiro = S2:CreateSection({Title = "[4] Chihiro",Side = "Left"})
	S3_boss = S3:CreateSection({Title = "[1] Boss",Side = "Left"})
	S1_ocean:CreateButton({Title = "Enter to Gate [1]",Mode = 1,Callback = function()
		tp(Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
		_G.LockPY = true
		Notify("Bypass", "Please wait..", 25)
		task.wait(25)
		tp(CFrame.new(-537.7177734375, 22.193456649780273, -85.44476318359375))
		task.wait(1)
		_G.LockPY = false
	end})
	S1_ocean:CreateLabel({Title = 'Someone Eat Cow',Side = "Center"})
	S1_ocean:CreateButton({Title = "Enter to Gate [2]",Mode = 1,Callback = function()
		tp(Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
		_G.LockPY = true
		Notify("Bypass", "Please wait..", 45)
		task.wait(50)
		tp(CFrame.new(-3953.24072, 594.218933, 321.80304, 0.999459922, 0, -0.032861691, 0, 1, 0, 0.032861691, 0, 0.999459922))
		task.wait(1)
		objectfindfire("TeleportDoor")
		_G.LockPY = false
	end})
	S1_ashina:CreateButton({Title = "Teleport to Meats Room",Mode = 1,Callback = function()
		local teleported = false
		for _, v in ipairs(workspace:GetDescendants()) do
			if v.Name == "RestaurantRoom" then
				for _, meat in pairs(v:GetChildren()) do
					if meat.Name == "Meat" and meat:IsA("Folder") then
						for _, n in pairs(meat:GetChildren()) do
							if n:IsA("MeshPart") and n.Transparency == 0 then
								for _, pos in pairs(v:GetChildren()) do
									if pos.Name == "chair" and pos:IsA("UnionOperation") and not teleported then
										tp(pos.CFrame)
										task.wait(0.5)
										teleported = true
										break
									end
								end
							end
						end
					end
				end
			end
		end
	end})
	S1_ashina:CreateButton({Title = "Delivery Meats",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-4371.806640625, 711.3719482421875, 1121.54248046875))
		Notify("Bypass", "Please wait..", 10)
		task.wait(12)
		tp(CFrame.new(-4442.72803, 711.371887, 1162.86707, -0.146179333, 0, 0.989258111, 0, 1, 0, -0.989258111, 0, -0.146179333))
		task.wait(1)
		objectfindfire("NoppeNPC")
		_G.LockPY = false
	end})
	S1_ashina:CreateLabel({Title = 'If you Cant Teleport : Map not Renders.',Side = "Center"})
	S1_ashina:CreateButton({Title = "Teleport to Gate",Mode = 1,Callback = function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v.Name == "EndRoom" and v:IsA("Model") then
				for _, n in pairs(v:GetChildren()) do
					if n.Name == "DoorTele" and n:IsA("Model") then
						_G.LockPY = true
						root = n:FindFirstChildOfClass("UnionOperation")
						tp(root.CFrame)
						task.wait(1)
						_G.LockPY = false
						findfire(n)
					end
				end
			end
		end
	end})
	S1_skeleton:CreateButton({Title = "Start",Mode = 1,Callback = function()
		tp(CFrame.new(-4601.89404296875, 826.4385986328125, -35.5607795715332))
	end})
	S1_skeleton:CreateButton({Title = "Escape",Mode = 1,Callback = function()
		tp(CFrame.new(-5364.40918, 682.05365, 30.630415, 0.317401469, 0, 0.948291242, 0, 1, 0, -0.948291242, 0, 0.317401469))
	end})
	S2_lever:CreateButton({Title = "Enter Zone",Mode = 1,Callback = function()
		tp(CFrame.new(-11030.5029296875, -81.40126037597656, -12.647021293640137))
	end})
	S2_lever:CreateButton({Title = "Levers", Desc = "Automatic",Mode = 2,Callback = function()
		local AlancasSistemas = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/%3F%3F%3F%3F%3F/AlavancaSystem.txt"))()
		local PegaAPasta = AlancasSistemas.EncontrarPastaAlavancas()
		AlancasSistemas.AtivarAlavancas(PegaAPasta)
	end})
	S2_lever:CreateButton({Title = "Teleport to Gate",Mode = 1,Callback = function()
		tp(CFrame.new(-10060.2744140625, 484.0893859863281, -9.173670768737793))
	end})
	S2_cook:CreateButton({Title = "Start",Mode = 1,Callback = function()
		tp(CFrame.new(-2582.31445, 968.246521, -4920.55469, -0.0169319678, 0, 0.999856651, 0, 1, 0, -0.999856651, 0, -0.0169319678))
	end})
	local CrafterSistema = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/%3F%3F%3F%3F%3F/ComidaSytem.txt"))()
	local PastaDasComidas = CrafterSistema.EncontrarPastaCooking()
	S2_cook:CreateButton({Title = "Automatic",Desc = "Eyeballs",Mode = 2,Callback = function()
		CrafterSistema.CrafterEyeball(PastaDasComidas)
	end})
	S2_cook:CreateButton({Title = "Automatic",Desc = "Chicken",Mode = 2,Callback = function()
		CrafterSistema.CrafterChicken(PastaDasComidas)
	end})
	S2_cook:CreateButton({Title = "Automatic",Desc = "Ham",Mode = 2,Callback = function()
		CrafterSistema.CrafterHam(PastaDasComidas)
	end})
	S2_cook:CreateButton({Title = "Escape",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-3361.457763671875, 1205.020751953125, -6819.82666015625))
		task.wait(1)
		_G.LockPY = false
	end})
	S2_tower:CreateButton({Title = "Skip Cursed Zone",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-4079.585205078125, 743.8174438476562, -948.4310302734375))
		task.wait(1)
		_G.LockPY = false
	end})
	S2_tower:CreateLabel({Title = 'You can Teleport to Active Puzzle and Click Back to Safezone.',Side = "Left"})
	S2_tower:CreateButton({Title = "Teleport to Puzzle",Mode = 1,Callback = function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Model") and (v.Name == "1" or v.Name == "2" or v.Name == "3") then
				for _, b in pairs(v:GetChildren()) do
					if b.Name == "Base" and b.Transparency == 0 then
						prompt = b:FindFirstChildOfClass("ProximityPrompt", true)
						if prompt.Enabled == true then
							part = v:FindFirstChildOfClass("Part")
							if part then
								tp(part.CFrame)
							end
						end
					end
				end
			end
		end
	end})
	S2_tower:CreateButton({Title = "Safezone",Mode = 1,Callback = function()
		tp(CFrame.new(-4089.20483, 743.817444, -960.496887, -0.0886541307, 0, -0.996062458, 0, 1, 0, 0.996062458, 0, -0.0886541307))
	end})
	S2_chihiro:CreateButton({Title = "Find Chihiro",Mode = 1,Callback = function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if v.Name == "Daughter" then
				part = v:FindFirstChild("HumanoidRootPart")
				tp(part.CFrame)
				break
			end
		end
	end})
	S2_chihiro:CreateButton({Title = "Teleport to Gate",Mode = 1,Callback = function()
		gate = workspace:FindFirstChild("Glowing", true)
		tp(gate.CFrame)
	end})
	S2_chihiro:CreateToggle({Title = "Automatic Notes",Value = _G.Autonote,Callback = function(value)
		_G.Autonote = value
	end})
	spawn(function()
		Note = workspace:FindFirstChild("Notes", true)
		while task.wait() do
			if _G.Autonote then
				for _, v in pairs(Note:GetChildren()) do
					if v.Name == "Note" then
						for _, decal in pairs(v:GetChildren()) do
							if decal.Name == "Front" and decal.Transparency == 0 then
								tp(v.CFrame)
								findfire(v)
							end
						end
					end
				end
			end
		end
	end)
	S3_boss:CreateToggle({Title = "Automatic Ammo",Value = _G.Autoammo,Callback = function(value)
		_G.Autoammo = value
	end})
	S3_boss:CreateToggle({Title = "Automatic Boss Stage 2",Value = _G.Nagisa2,Callback = function(value)
		_G.Nagisa2 = value
	end})
	n = workspace:FindFirstChild("BATTLESHIP", true)
	ball = n:WaitForChild("BallGivers")
	Canon = n:WaitForChild("Cannons")
	spawn(function()
		for _, v in ipairs(Canon:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				v.HoldDuration = 0
			end
		end
		while task.wait(0.5) do
			if _G.Autoammo then
				for _, ui in pairs(Player.PlayerGui.BossFight.Ammo:GetChildren()) do
					if ui.Text ~= "5" then
						for _, b in pairs(ball:GetChildren()) do
							if b.Name == "BallGiver" then
								local prompt = b:FindFirstChild("Interact")
								findfire(prompt)
							end
						end
					end
				end
			end
		end
	end)
	spawn(function()
		boss = workspace:FindFirstChild("NureStage2", true)
		while task.wait() do
			if _G.Nagisa2 then
				for _, v in ipairs(boss:GetChildren()) do
					if v.Name == "TailHitbox1" or v.Name == "TailHitbox2" then
						if v:FindFirstChildOfClass("TouchInterest") then
							v.Size = Vector3.new(1, 1, 1)
						else
							if not Player.Character:FindFirstChild("Cutlass") then
								tp(CFrame.new(1971.5081787109375, 57.84920120239258, -4733.85498046875))
							end
							if Player.Backpack:FindFirstChild("Cutlass") then
								if v.Size ~= Vector3.new(2000, 2000, 2000) then
									v.Size = Vector3.new(2000, 2000, 2000)
								end
								tp(CFrame.new(1976.2742919921875, 500.2325439453125, -4716.57177734375))
								equipTool("Cutlass")
								Click()
								Click()
								Click()
								Click()
								Click()
							end
						end
					end
				end
			end
		end
	end)]]
	Player:Kick("UWU")
elseif TWT_END then
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_func = General:CreateSection({Title = "Instant",Side = "Left"})
	General_friend = General:CreateSection({Title = "Help",Side = "Left"})
	General_func:CreateButton({Title = "Skip", Desc = "Instant Win this part.",Mode = 2,Callback = function()
		skipgame()
	end})
	General_friend:CreateButton({Title = "Puzzle 1",Mode = 1,Callback = function()
		tp(CFrame.new(1785.614501953125, 24.871353149414062, 199.4203643798828))
	end})
	General_friend:CreateButton({Title = "Puzzle 2",Mode = 1,Callback = function()
		tp(CFrame.new(2145.393798828125, 25.907682418823242, 775.2923583984375))
	end})
	General_friend:CreateButton({Title = "Automatic",Desc = "Burn All Spirit",Mode = 2,Callback = function()
		tp(CFrame.new(959.8117065429688, 115.29686737060547, 246.41030883789062))
		task.wait(0.2)
		fire()
		fire()
		task.wait(0.5)
		equipTool("Spirit")
		task.wait(0.3)
		tp(CFrame.new(2618.1943359375, 109.63508605957031, 1453.0906982421875))
		task.wait(0.4)
		tp(CFrame.new(2426.927734375, 183.68484497070312, 1454.0548095703125))
		equipTool("Spirit2")
		task.wait(0.3)
		tp(CFrame.new(1785.614501953125, 24.871353149414062, 199.4203643798828))
	end})
elseif Circus then
	newPart = Instance.new("Part")
	newPart.Parent = workspace
	newPart.Anchored = true
	newPart.CanCollide = true
	newPart.Size = Vector3.new(500, 2, 500)
	newPart.CFrame = CFrame.new(-2552.021728515625, -3.5, 439.0304260253906)
	newPart.Transparency = 1
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_clown = General:CreateSection({Title = "Clown",Side = "Left"})
	General_card = General:CreateSection({Title = "Card",Side = "Right"})
	General_boss = General:CreateSection({Title = "The Ringmaster",Side = "Right"})
	General_clown:CreateButton({Title = "Enter Zone",Mode = 1,Callback = function()
		pcall(function()
			trig = game.Workspace.Section1.Cutscene.Trigger
			tp(trig.CFrame)
			task.wait(1)
			tp(CFrame.new(-2454.953369140625, -1.9218900203704834, 375.8285217285156))
		end)
	end})
	item = "[1]"
	box = {"[1]", "[2]", "[3]", "[4]", "[5]", "[6]", "[7]"}
	General_clown:CreateDropdown({Title = "Select Box",List = box,Value = item ,Multi = false,Callback = function(value)
		item = value
	end})
	General_clown:CreateButton({Title = "Teleport [Safe All]",Mode = 1,Callback = function()
		if item == '[1]' then
			tp(CFrame.new(-2454.953369140625, -1.9218900203704834, 375.8285217285156))
		elseif item == '[2]' then
			tp(CFrame.new(-2501.155029296875, -0.921890377998352, 320.94677734375))
		elseif item == '[3]' then
			tp(CFrame.new(-2548.565673828125, -1.9218904972076416, 536.6804809570312))
		elseif item == '[4]' then
			tp(CFrame.new(-2380.673095703125, -0.9218902587890625, 487.1125793457031))
		elseif item == '[5]' then
			tp(CFrame.new(-2551.619140625, -1.9218900203704834, 412.9603271484375))
		elseif item == '[6]' then
			tp(CFrame.new(-2591.26416015625, -1.921891450881958, 329.8985900878906))
		elseif item == '[7]' then
			tp(CFrame.new(-2438.81982421875, -0.9218902587890625, 570.1264038085938))
		end
	end})
	General_clown:CreateButton({Title = "Skip Instant",Mode = 1,Callback = function()
		tp(CFrame.new(-1100.885498046875, -85.93081665039062, 146.65823364257812))
	end})
	General_card:CreateToggle({Title = "Automatic Card",Value = _G.AutoCard,Callback = function(value)
		_G.AutoCard = value
		if value then
			tp(CFrame.new(-1100.885498046875, -85.93081665039062, 146.65823364257812))
		end
	end})
	General_boss:CreateToggle({Title = "Automatic Ringmaster",Value = _G.AutoRingmaster,Callback = function(value)
		_G.AutoRingmaster = value
	end})
	spawn(function()
		while task.wait() do
			if _G.AutoRingmaster then
				pcall(function()
					for _, v in pairs(workspace.Section3.Boss.MagicianBoss:GetChildren()) do
						if v.Name == "Full_suit:Blazer" then
							weakPart = v:FindFirstChild("Weak")
							if weakPart then
								if weakPart:IsA("Highlight") and weakPart.FillTransparency ~= 1 then
									Tween(CFrame.new(-1705.763916015625, -65.22100830078125, -847.4509887695312), 9e9)
									equipTool("Knife")
									Click()
									Click()
									Click()
									Click()
								elseif weakPart.FillTransparency == 1 then
									Tween(CFrame.new(-1645.4398193359375, 4.568887710571289, -972.7529907226562), 9e9)
								end
							end
						end
					end
				end)
			end
		end
	end)
	function card(card, text)
		Card = game:GetService("Workspace").Section2.Objective.Cards
		Passcard = game:GetService("Workspace").Section2.Objective.PassCode
		for _, q in pairs(Passcard:GetChildren()) do
			if q.Name == card then
				Prompt = q:FindFirstChildOfClass("ProximityPrompt")
				if Prompt then
					for _, w in pairs(Card:GetChildren()) do
						if w:IsA("Model") then
							local match, matchedText = nil, nil
							for _, r in ipairs(w:GetDescendants()) do
								if r.Name == "card" then
									match = r.TextureID
								elseif r:IsA("TextLabel") and r.Text == text then
									matchedText = r.Text
								end
							end
							if match and matchedText then
								for _, e in pairs(q:GetChildren()) do
									if e:IsA("Decal") and e.Transparency == 0 then
										if match ~= e.Texture and matchedText == q.Name then
											fireproximityprompt(Prompt)
										elseif match == e.Texture then
											print("success")
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	spawn(function()
		while task.wait() do
			if _G.AutoCard then
				for i = 1, 6 do
					card(tostring(i), tostring(i))
					task.wait(0.5)
				end
			end
		end
	end)
elseif XMAS then
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_main = General:CreateSection({Title = "Automatic",Side = "Left"})
	General_main:CreateButton({Title = "Repair",Desc ="Automatic",Mode = 2,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-251.05911254882812, -11.551362991333008, -66.66143798828125)) --elf
		task.wait(0.2)
		fire()
		fire()
		task.wait(10)
		tp(CFrame.new(-134.54364013671875, 10.574685096740723, -209.96405029296875) * CFrame.new(0, -7, 0)) --item1
		task.wait(0.5)
		fire()
		fire()
		task.wait(0.2)
		tp(CFrame.new(-80.6532974243164, 10.087998390197754, -123.51919555664062) * CFrame.new(0, -7, 0)) --item2
		task.wait(0.5)
		fire()
		fire()
		task.wait(0.2)
		tp(CFrame.new(-106.8354263305664, -14.238286018371582, 0.9737195372581482) * CFrame.new(0, -7, 0)) --item3
		task.wait(0.5)
		fire()
		fire()
		task.wait(0.2)
		tp(CFrame.new(57.96989059448242, 33.27872085571289, -96.68522644042969)) -- end
		task.wait(0.5)
		fire()
		fire()
		task.wait(0.2)
		tp(CFrame.new(-251.05911254882812, -11.551362991333008, -66.66143798828125)) --nextquest
		task.wait(0.5)
		fire()
		fire()
		task.wait(10)
		tp(CFrame.new(-84.6919174194336, 11.107906341552734, -111.78636169433594)) --return to safe2
		_G.LockPY = false
	end})
	General_main:CreateToggle({Title = "Automatic Toys",Value = _G.Autotoys,Callback = function(value)
		_G.Autotoys = value
	end})
	General_main:CreateButton({Title = "Grab key",Mode = 1,Callback = function()
		_G.LockPY = true
		tp(CFrame.new(-251.05911254882812, -11.551362991333008, -66.66143798828125))
		task.wait(0.5)
		fire()
		task.wait(10)
		for _, v in pairs(workspace.GameAI:GetChildren()) do
			if v.Name == "Krampus" then
				for _, key in pairs(v:GetChildren()) do
					if key.Name == "HumanoidRootPart" then
						tp(key.CFrame * CFrame.new(0, 0, 10))
						task.wait(0.3)
						findfire(v)
						findfire(v)
						tp(CFrame.new(-251.05911254882812, -11.551362991333008, -66.66143798828125))
						task.wait(0.5)
						fire()
						fire()
						_G.LockPY = false
					end
				end
			end
		end
	end})
	spawn(function()
		while task.wait() do
			if _G.Autotoys then
				pcall(function()
					for _, v in pairs(workspace.Quests["2"].CollectToys:GetChildren()) do
						if v.Name == "toy" then
							tp(v.CFrame)
							findfire(v)
						end
					end
				end)
			end
		end
	end)
elseif Hell then
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_main = General:CreateSection({Title = "Automatic",Side = "Left"})
	General_main:CreateButton({Title = "Talk",Mode = 1,Callback = function()
		tp(CFrame.new(610.8300170898438, 11.908462524414062, 1083.3406982421875))
		task.wait(1.5)
		tp(CFrame.new(601.8018, 111.0565, 83))
	end})
	General_main:CreateToggle({Title = "Automatic Orbs",Value = _G.AutoOrbs,Callback = function(value)
		_G.AutoOrbs = value
	end})
	spawn(function()
		while task.wait() do
			if _G.AutoOrbs then
				pcall(function()
					for _, v in pairs(workspace.GameAI.Souls:GetChildren()) do
						if v.Name == "Orb" then
							v.Rotation = Vector3.new(0, 0, 0)
							tp(v.CFrame * CFrame.new(0, -10, 0))
							findfire(v)
						end
					end
				end)
			end 
		end
	end)
elseif HW1 then
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_main = General:CreateSection({Title = "Automatic",Side = "Left"})
	General_inc = General:CreateSection({Title = "Instant Mode",Side = "Left"})
	General_inc:CreateButton({Title = "Skip Instant",Desc = "Only you will Teleport.",Mode = 2,Callback = function()
		gametp(7633631351)
		Notify("Teleport is Starting", "Please wait...", 999)
	end})
	General_main:CreateButton({Title = "Pumpkins",Desc = "Automatic",Mode = 2,Callback = function()
		for _, v in pairs(workspace.GameInfo.PuzzleItems:GetChildren()) do
			if v.Name == "GrabItem" and v:FindFirstChild("Handle") then
				_G.LockPY = true
				tp(v.CFrame)
				task.wait(0.2)
				findfire(v)
				task.wait(0.2)
				tp(CFrame.new(-354.656982421875, -19.969240188598633, -167.6837921142578))
				task.wait(0.2)
				equipTool("pumpkin")
				fireproximityprompt(workspace.Map.Well.Burner.ProximityPrompt)
				equipTool("pumpkin")
				fireproximityprompt(workspace.Map.Well.Burner.ProximityPrompt)
				equipTool("pumpkin")
				fireproximityprompt(workspace.Map.Well.Burner.ProximityPrompt)
				_G.LockPY = false
			end
		end
	end})
elseif HW2 then
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_main = General:CreateSection({Title = "Automatic",Side = "Left"})
	General_main:CreateToggle({Title = "Automatic Shirne",Value = _G.AutoShirne,Callback = function(value)
		_G.AutoShirne = value
	end})
	spawn(function()
		while task.wait() do
			if _G.AutoShirne then
				for _, _timez in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:GetChildren()) do
					local minutes, seconds = string.match(_timez.Text, "(%d+):(%d+)")
					minutes, seconds = tonumber(minutes), tonumber(seconds)
					if minutes == 0 and seconds < 50 then
						for _, v in pairs(workspace.Candles:GetChildren()) do
							if v:IsA("Model") then
								for _, candle in pairs(v:GetChildren()) do
									if candle.Name == "Candles" then
										for _, v in pairs(candle:GetChildren()) do
											if v:IsA("ProximityPrompt") and v.Enabled == true then
												tp(candle.CFrame)
												fireproximityprompt(v)
											end
										end
									end
								end
							end
						end
					else
						for _, c in ipairs(workspace.Candles:GetDescendants()) do
							if c:IsA("BillBoardGui") and c:FindFirstChild("ImageLabel") and c.Visible == false then
								tp(CFrame.new(393, 205, -98))
							end
						end
					end
				end
			end
		end
	end)

elseif HW3 then
	eyepos = CFrame.new(-102.33706665039062, 39.2798957824707, 390.2846374511719)
	bat1 = CFrame.new(179.3213653564453, 40.450477600097656, 520.8416748046875)
	bat2 = CFrame.new(206.91024780273438, 42.21459197998047, 501.1965637207031)
	bat3 = CFrame.new(192.09829711914062, 46.8243293762207, 505.2060241699219)
	bat4 = CFrame.new(215.41714477539062, 36.94939422607422, 509.1746826171875)
	rose1 = CFrame.new(-136.7054443359375, 40.999996185302734, 3.3590500354766846)
	rose2 = CFrame.new(-133.5321502685547, 40.999996185302734, -0.3488822281360626)
	snake1 = CFrame.new(155.5688934326172, 37.066654205322266, 368.4143371582031)
	snake2 = CFrame.new(105.9310073852539, 37.970821380615234, 383.8990783691406)
	snake3 = CFrame.new(110.13516998291016, 37.81748580932617, 345.40667724609375)
	General = Window:CreateTab({Title = "General",Desc = "Automatic",Icon = 77027262361111})
	General_main = General:CreateSection({Title = "Automatic",Side = "Left"})
	General_main:CreateButton({Title = "Potion",Desc = "Automatic",Mode = 2,Callback = function()
		_G.LockPY = true
		tp(eyepos)
		fire()
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(bat1)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(bat2)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(bat3)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(bat4)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(rose1)
		task.wait(0.1)
		fire()
		fire()
		task.wait(0.1)
		tp(rose2)
		task.wait(0.1)
		fire()
		fire()
		tp(snake1)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(snake2)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(snake3)
		task.wait(0.1)
		fire()
		task.wait(0.1)
		tp(CFrame.new(95.22450256347656, 36.999996185302734, 240.80474853515625))
		task.wait(0.2)
		fire()
		_G.LockPY = false
	end})
elseif B2C3 then
	--[[
	S1 = Window:CreateTab({Title = "Underworld",Desc = "Section 1",Icon = 77027262361111})
	S2 = Window:CreateTab({Title = "Twisted Labyrinth",Desc = "Section 2",Icon = 77027262361111})
	S3 = Window:CreateTab({Title = "Cavern of Wealth",Desc = "Section 3",Icon = 77027262361111})
	S4 = Window:CreateTab({Title = "Uchiumi Resident",Desc = "Section 4",Icon = 77027262361111})
	S5 = Window:CreateTab({Title = "Yurie's Mori",Desc = "Section 5 [ Boss ]",Icon = 77027262361111})

	S1_hell = S1:CreateSection({Title = "[1] Gozu & Mezu",Side = "Left"})
	S1_heart = S1:CreateSection({Title = "[2] Hearts",Side = "Right"})
	S1_grindemon = S1:CreateSection({Title = "[3] Escape",Side = "Left"})
	S1_hell:CreateButton({Title = "Enter Zone",Desc = "Gozu & Mezu",Mode = 2,Callback = function()
		tp(CFrame.new(-567.3272094726562, 13.10018253326416, 418.4450378417969))
	end})
	S1_hell:CreateButton({Title = "Skip Instant",Mode = 1,Callback = function()
		tp(CFrame.new(-132.36532592773438, 45.47054672241211, 69.29557800292969))
	end})
	S1_heart:CreateButton({Title = "Talk Keneo",Mode = 1,Callback = function()
		tp(CFrame.new(-132.36532592773438, 45.47054672241211, 69.29557800292969))
	end})
	S1_heart:CreateButton({Title = "Hearts",Desc = "Automatic",Mode = 2,Callback = function()
		for _, v in pairs(workspace.Section1.Puzzle.Hearts:GetChildren()) do
			if v.Name == "Heart" and v:IsA("Model") then
				for _, heart in pairs(v:GetChildren()) do
					if heart:IsA("MeshPart") and heart.Transparency == 0 then
						tp(heart.CFrame)
						findfire(v)
						tp(heart.CFrame)
						findfire(v)
						tp(heart.CFrame)
						findfire(v)
						tp(heart.CFrame)
						findfire(v)
						tp(CFrame.new(-71.80203247070312, 49.343116760253906, 10.63222885131836))
						equipTool("Heart")
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.armscare.BeatingHeart.Heart.ProximityPrompt)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.armscare1.BeatingHeart.Heart.ProximityPrompt)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.armscare2.BeatingHeart.Heart.ProximityPrompt)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.armscare3.BeatingHeart.Heart.ProximityPrompt)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
						task.wait(1.5)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
						task.wait(1.5)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
						task.wait(1.5)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
						task.wait(1.5)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
						task.wait(1.5)
						fireproximityprompt(workspace.Section1.Puzzle.SpinModel.ProximityPrompt)
					end
				end
			end
		end
	end})
	S1_grindemon:CreateButton({Title = "Escape",Desc = "Escape the Grindemon.",Mode = 2,Callback = function()
		tp(CFrame.new(-87.71996307373047, 4, -403.05517578125))
	end})

	S2_maze = S2:CreateSection({Title = "[1] Maze",Side = "Left"})
	S2_escape = S2:CreateSection({Title = "[2] Escape",Side = "Right"})
	craft = function()
		for _, v in pairs(workspace.Section1.Maze.Crafting.Tables:GetChildren()) do
			if v:IsA("Model") then
				local check = v:FindFirstChild("RootPart")
				if check and (check.Position - Vector3.new(-71.4878922, 4.27337503, -447.536438)).Magnitude < 1 then
					if typeof(findfire) == "function" then
						findfire(check)
					else
						warn("findfire function not defined!")
					end
					task.wait(1)
					local args = {
						[1] = 0,
						[2] = {
							["__args"] = {},
							["__tree"] = {
								[1] = "CraftingService",
								[2] = "Interact"
							},
							["__callType"] = 0
						}
					}

					game:GetService("ReplicatedStorage").Packages.Packet.PacketFunction:InvokeServer(unpack(args))
				end
			end
		end
	end
	craftex = function()
		interacted = false
		for _, hole in pairs(workspace.Section1.Maze.Holes:GetChildren()) do
			if hole.Name == "Hole" and hole:IsA("Part") then
				local s = hole:FindFirstChildOfClass("ProximityPrompt")
				if s and s.Enabled == true and not interacted then
					hole.Rotation = Vector3.new(0, 0, 0)
					task.wait(0.2)
					tp(hole.CFrame * CFrame.new(0, 15, 0))
					task.wait(0.3)
					fireproximityprompt(s)
					interacted = true
				end
			end
		end
	end
	S2_maze:CreateButton({Title = "Torch",Desc = "Automatic",Mode = 2,Callback = function()
		_G.LockPY = true
		craftex()
		task.wait(0.2)
		craftex()
		task.wait(0.2)
		craftex()
		task.wait(0.2)
		craftex()
		task.wait(0.2)
		craftex()
		task.wait(0.2)
		tp(CFrame.new(-71.50939178466797, 4, -434.1413269042969))
		task.wait(0.3)
		craft()
		_G.LockPY = false
	end})
	S2_maze:CreateButton({Title = "Fire",Desc = "Teleport to Ignite a Torch.",Mode = 2,Callback = function()
		tp(CFrame.new(17.411027908325195, 3.999147891998291, -549.4634399414062))
	end})
	S2_escape:CreateButton({Title = "Escape",Desc = "Escape from Twisted Labyrinth.",Mode = 2,Callback = function()
		tp(CFrame.new(-325.0328369140625, 6.5852484703063965, -1116.0948486328125))
	end})

	S3_bell = S3:CreateSection({Title = "[1] Bells",Side = "Left"})
	S3_door = S3:CreateSection({Title = "[2] Doors",Side = "Right"})
	S3_escape = S3:CreateSection({Title = "[3] Escape",Side = "Right"})
	S3_raft = S3:CreateSection({Title = "[4] Raft",Side = "Left"})
	bellselect = "[1]"
	bells = {"[1]", "[2]", "[3]", "[4]", "[5]", "[6]", "[7]", "[8]"}
	S3_bell:CreateDropdown({Title = "Select Bell",List = bells,Value = bellselect ,Multi = false,Callback = function(value)
		bellselect = value
	end})
	S3_bell:CreateButton({Title = "Teleport", Mode = 1,Callback = function()
		if bellselect == "[1]" then
			tp(CFrame.new(-391.52069091796875, 10.650571823120117, -1360.5098876953125))
		elseif bellselect == "[2]" then
			tp(CFrame.new(-202.95518493652344, 8.761578559875488, -1395.8043212890625))
		elseif bellselect == "[3]" then
			tp(CFrame.new(-491.658447265625, 11.423152923583984, -1438.0029296875))
		elseif bellselect == "[4]" then
			tp(CFrame.new(-804.96044921875, 8.999999046325684, -1359.6717529296875))
		elseif bellselect == "[5]" then
			tp(CFrame.new(-758.4552612304688, 18.90062141418457, -1701.25))
		elseif bellselect == "[6]" then
			tp(CFrame.new(-344.3830871582031, 8.999999046325684, -1701.970703125))
		elseif bellselect == "[7]" then
			tp(CFrame.new(-686.544921875, 8.999999046325684, -2054.4609375))
		elseif bellselect == "[8]" then
			tp(CFrame.new(-1011.68896484375, 8.684771537780762, -1976.7850341796875))
		end
	end})
	S3_door:CreateButton({Title = "Teleport to Puzzle", Mode = 1,Callback = function()
		for _, v in pairs(game:GetService("Workspace").Section2.PuzzleDoor.Doors:GetChildren()) do
			if v:IsA("Model") then
				for _, n in pairs(v:GetDescendants()) do
					if n:IsA("SurfaceGui") then
						for _, i in pairs(n:GetChildren()) do
							if i:IsA("ImageLabel") then
								for _, prompt in ipairs(v:GetDescendants()) do
									if prompt:IsA("ProximityPrompt") and prompt.Enabled == true then
										glow = v:FindFirstChild("DoorDetector")
										tp(glow.CFrame)
									end
								end
							end
						end
					end
				end
			end
		end
	end})
	S3_door:CreateLabel({Title = 'Please Delay 5 - 10 Second to Instant Puzzle.',Side = "Center"})
	S3_door:CreateButton({Title = "Instant Puzzle",Desc ="Use After Active Puzzle.", Mode = 2,Callback = function()
		for _, v in pairs(game:GetService("Workspace").Section2.PuzzleDoor.Doors:GetChildren()) do
			if v:IsA("Model") then
				for _, n in ipairs(v:GetDescendants()) do
					if n:IsA("SurfaceGui") then
						imageLabels = {}
						for _, k in pairs(n:GetChildren()) do
							if k:IsA("ImageLabel") then
								table.insert(imageLabels, k.Name)
							end
						end
						if #imageLabels > 0 then
							args = {
								[1] = 0,
								[2] = {
									["__args"] = {
										[1] = imageLabels
									},
									["__tree"] = {
										"DoorPuzzleService",
										"Clicked"
									},
									["__callType"] = 0
								}
							}
							packetFunction = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Packet"):WaitForChild("PacketFunction")
							packetFunction:InvokeServer(unpack(args))
						end
					end
				end
			end
		end
	end})
	S3_escape:CreateButton({Title = "Escape Dodomeki", Mode = 1,Callback = function()
		tp(CFrame.new(-3876.863525390625, -102.98721313476562, -2291.44384765625))
	end})
	S3_raft:CreateButton({Title = "Enter Enzukai", Mode = 1,Callback = function()
		tp(workspace["Section2.5"].MindGame.Intro.Trigger.CFrame)
		task.wait(1)
		tp(workspace["Section2.5"].MindGame.Intro.Trigger2.CFrame)
	end})
	S3_raft:CreateToggle({Title = "Instant Enzukai",Value = _G.AutoEnzukai,Callback = function(value)
		_G.AutoEnzukai = value
	end})
	spawn(function()
		while task.wait() do
			if _G.AutoEnzukai then
				for _, v in ipairs(workspace["Section2.5"].MindGame.Boats:GetDescendants()) do
					if v:IsA("ProximityPrompt") and v.Enabled then
						fireproximityprompt(v)
						task.wait(1.2)
					end
				end
			end
		end
	end)

	S4_dad = S4:CreateSection({Title = "[1] Home",Side = "Left"})
	S4_dad:CreateButton({Title = "Enter Home", Mode = 1,Callback = function()
		tp(CFrame.new(1134.19775390625, 18.628183364868164, -2356.963623046875))
	end})
	S4_dad:CreateToggle({Title = "Dectect Isamu",Value = _G.InstantIsamu,Callback = function(value)
		_G.InstantIsamu = value
	end})
	S4_dad:CreateToggle({Title = "Automatic Heartbeat",Value = _G.Autoheartbeat,Callback = function(value)
		_G.Autoheartbeat = value
	end})
	spawn(function()
		while task.wait(1) do
			pcall(function()
				workspace.Section3.IsamuAI.Hitbox.CanTouch = false
			end)
		end
	end) ]]
	Player:Kick("UWU")
elseif Lobby then
	General = Window:CreateTab({Title = "General",Desc = "Teleport",Icon = 77027262361111})
	General_init = General:CreateSection({Title = "Instant",Side = "Left"})
	General_init:CreateButton({Title = "Teleport",Desc = "Jigoku",Mode = 2,Callback = function()
		gametp(7618863566)
	end})
end
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.FCHAR or _G.AutoFish or _G.AutoDHeart_PC or _G.AutoSaigomo_PC or _G.AutoDHeart or _G.AutoButterfly or _G.LockPY or _G.AutoLever or _G.Autonote or _G.Nagisa2 or _G.AutoRingmaster or _G.AutoOrbs or _G.Autotoys or _G.AutoShirne then
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lock") then
					if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
					end
					Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "Lock"
					Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
					Noclip.Velocity = Vector3.new(0, 0, 0)
				end
			else
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lock"):Destroy()
			end
		end)
	end
end)
