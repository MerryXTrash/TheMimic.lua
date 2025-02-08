if game:GetService("CoreGui"):FindFirstChild("Synack")then game:GetService("CoreGui").Synack:Destroy()end
_id=game.PlaceId
Player=game:GetService("Players")
LocalPlayer=Player.LocalPlayer
Backpack=LocalPlayer.Backpack
PlayerGui=LocalPlayer.PlayerGui
rep = game:GetService("ReplicatedStorage")
GuiService = game:GetService("GuiService")
RunService = game:GetService("RunService")
VirtualInputManager=game:GetService("VirtualInputManager")
loadstr = function(raw)loadstring(game:HttpGet(raw))()end
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = game:GetService("CoreGui")
	notLoaded.Text = "Fetching wait for game Load.."
	game.Loaded:Wait()
	notLoaded:Destroy()
end
Library=loadstring(game:HttpGet("https://raw.githubusercontent.com/G1GX/Fetching/refs/heads/main/Master/Fetch%25ngUI"))()
local url = "https://raw.githubusercontent.com/MerrySubs4t/Softwork/refs/heads/main/UI/Emoji.module"
local success, moduleSource = pcall(function()
	return game:HttpGet(url)
end)
if success then
	EmojiModule = loadstring(moduleSource)()
	print(EmojiModule:GetEmoji("Green"))
	print(EmojiModule:GetEmoji("Red"))
else
	warn("Failed to load module from URL!")
end
HttpService = game:GetService("HttpService")
function sendwebhook(url, data)
	local HttpService = game:GetService("HttpService")
	local success, newdata = pcall(function()
		return HttpService:JSONEncode(data)
	end)
	if not success then
		print("Error encoding data to JSON:", newdata)
		return
	end
	local headers = {
		["Content-Type"] = "application/json"
	}
	local success, response = pcall(function()
		return request({
			Url = url,
			Body = newdata,
			Method = "POST",
			Headers = headers
		})
	end)
	return success
end
_G.Config = {
	AutoExc = true,
	AutoFish = false,
	ModeFishing = "Instant",
	Percentz = 100,
	Skipday = false,
	AutoSell = false,
	DelaySell = 60,
	SelectZoneEvents = {"Orcas Pool", "The Kraken Pool"},
	AllEvents = false,
	Hopserver = false,
	encs = "Hasty",
	web = "ใส่ URL",
	Webhook = false,
	DelaySendWeb = 60
}
_G.SavePosition={}
local TeleportCheck = false
LocalPlayer.OnTeleport:Connect(function(State)
	if _G.Config.AutoExc and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/G1GX/Fetching/refs/heads/main/Master/Fisch.TH'))()")
	end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Lock or _G.Config.AutoFish or _G.hammerh or _G.megalo or _G.kraken or _G.Goldpole or _G.whaleshark or _G.orca or _G.gwshark or _G.loveEel then
				if syn then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					LocalPlayer.Character.Humanoid:ChangeState(11)
					if LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
						LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
					end
				else
					if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
							if LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
								LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
							end
							local bodyVelocity = Instance.new("BodyVelocity")
							bodyVelocity.Name = "BodyVelocity1"
							bodyVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
							bodyVelocity.velocity = Vector3.new(0, 0, 0)
							bodyVelocity.maxForce = Vector3.new(100000, 100000, 100000)
						end
					end
				end
			else
				LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy()
			end
		end)
	end
end)
function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Fetching'Script") then
			makefolder("Fetching'Script")
		end
		if not isfolder("Fetching'Script/Config") then
			makefolder("Fetching'Script/Config")
		end
		if not isfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json") then
			writefile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Config))
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json"))
			for i,v in pairs(Decode) do
				_G.Config[i] = v
			end
		end
	else
		return warn("Executor is Not Support")
	end
end

function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json"))
			local Array = {}
			for i,v in pairs(_G.Config) do
				Array[i] = v
			end
			writefile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		end
	else
		return warn("Executor is Not Support")
	end
end
LoadSettings()
print("Isloaded")
TRUE=EmojiModule:GetEmoji("Green")
FALSE=EmojiModule:GetEmoji("Red")
print(FALSE)
spawnfunc = {
	[1]=task.spawn(function()
		local GC=getconnections or get_signal_cons
		if GC then
			for i,v in pairs(GC(LocalPlayer.Idled)) do
				if v["Disable"] then
					v["Disable"](v)
				elseif v["Disconnect"] then
					v["Disconnect"](v)
				end
			end
		else
			local VirtualUser=cloneref(game:GetService("VirtualUser"))
			LocalPlayer.Idled:Connect(function()
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
			end)
		end
	end),
	[2]=task.spawn(function()
		local oldhmmi
		local oldhmmnc
		oldhmmi=hookmetamethod(game, "__index", function(self, method)
			if self==Player and method:lower()=="kick" then
				return error("Expected ':' not '.' calling member function Kick", 2)
			end
			return oldhmmi(self, method)
		end)
		oldhmmnc=hookmetamethod(game, "__namecall", function(self, ...)
			if self==Player and getnamecallmethod():lower()=="kick" then
				return
			end
			return oldhmmnc(self, ...)
		end)
	end)
}
findheadpos = function(part)
	local headPosition = part.Position + Vector3.new(0, part.Size.Y / 2, 0)
	return headPosition
end

tp=function(cframe)pcall(function()
		LocalPlayer.Character.HumanoidRootPart.CFrame=cframe
	end)
end
findfire=function(object)
	local prompt=object:FindFirstChildOfClass("ProximityPrompt", true)
	if prompt then fireproximityprompt(prompt)else print("Object Not Found")end
end
Tween=function(destination, speed)
	pcall(function()
		local distance=(destination.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		local tweenInfo=TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
		local tween=game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
			CFrame=destination
		})
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
			LocalPlayer.Character.HumanoidRootPart.CFrame.X, 
			destination.Y, 
			LocalPlayer.Character.HumanoidRootPart.CFrame.Z
		)
		tween:Play()
	end)
end
gametp=function(id)
	teleportService=game:GetService("TeleportService")teleportService:Teleport(id,LocalPlayer)
end
firenear=function()--LAG
	for _, v in ipairs(workspace:GetDescendants())do
		if v:IsA("ProximityPrompt")and v.Enabled then fireproximityprompt(v)end
	end
end
equip = function(tool)
	if not LocalPlayer.Character:FindFirstChild(tool) then
		local _t = Backpack:FindFirstChild(tool)
		if _t then
			LocalPlayer.Character.Humanoid:EquipTool(_t)
		end
	end
end

Click=function()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
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
ESP=function(obj, Color)
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
loop=function(callback)
	if type(callback) ~= "function" then
		local value = callback
		callback = function()
			return value
		end
	end
	task.spawn(function()
		while task.wait(1) do
			local success, err = pcall(callback)
			if not success then
				warn("Error in protected callback: " .. tostring(err))
			end
		end
	end)
end
isLegacyChat = game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService
function chatMessage(str)
	str = tostring(str)
	if not isLegacyChat then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(str)
	else
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
	end
end
getgenv().Dev = false
-------------------------------------------------------------------------------------------------------------------------------
_Window=Library:CreateWindow({Title = "",Logo = 128185233852701})
Notify=function(Header, Desc, Time)
	Library:Notify({
		Title = Header,
		Desc = Desc,
		Logo = 128185233852701,
		Time = Time
	})
end
-------------------------------------------------------------------------------------------------------------------------------
if getgenv().Dev then
	_Dev=_Window:CreateTab({Title = "Special",Desc = "Developer",Icon = 115315406520018})
	Tools_=_Dev:CreateSection({Title = "Tools",Side = "Left"})
	Tools_:CreateButton({Title = "Dex",Desc="Ultimate Debuging Suit",Mode = 2,Callback = function()
		loadstr('https://raw.githubusercontent.com/G1GX/Tools/main/DarkDex.lua')
	end})
	Tools_:CreateButton({Title = "Infinite Yield",Desc="Admin Panel",Mode = 2,Callback = function()
		loadstr('https://raw.githubusercontent.com/G1GX/Tools/main/IY.lua')
	end})
	Tools_:CreateButton({Title = "Remote SPY",Desc="Credit to Redz",Mode = 2,Callback = function()
		loadstr('https://raw.githubusercontent.com/G1GX/Tools/main/RemoteSPY.lua')
	end})
	Tools_:CreateButton({Title = "Open Console [ F9 ]",Mode = 1,Callback = function()
		VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
		VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
	end})
end
--[[_Dev:SetVisible(false)
if getgenv().Dev then
	_Dev:SetVisible(true)
end]]
-------------------------------------------------------------------------------------------------------------------------------
_Doc=_Window:CreateTab({Title = "การแนะนำ",Desc = "ภาพรวม",Icon = 94464892425343})
-------------------------------------------------------------------------------------------------------------------------------
Credit=_Doc:CreateSection({Title = "เครดิต",Side = "Right"})
Credit:CreateImage({Title = "Owner",Desc = "[ ggigix ]",Icon = 100618692787198})
Credit:CreateButton({Title = "Discord",Mode = 1,Callback = function()
	setclipboard("https://discord.gg/uy6TP4ew7d")
end})
-------------------------------------------------------------------------------------------------------------------------------
Overview=_Doc:CreateSection({Title = "ภาพรวม",Side = "Left"})
playerName =LocalPlayer.Name
censoredName = playerName:sub(1, #playerName - 3) .. "***"
Overview:CreateLabel({Title = '<font color="rgb(255, 255, 0)">Hello, </font>' .. censoredName, Side = "Left"})
local currentTime = os.date("%d %B %Y %H:%M:%S")
local currentDay = os.date("%A")
local currentTime = os.date("%H:%M:%S")
local currentDate = os.date("%d")
local currentMonth = os.date("%B")
local currentYear = os.date("%Y")
realtime=Overview:CreateLabel({Title = "เวลา : " .. currentTime .. "/" .. currentDate .. "/" .. currentMonth .. "/" .. currentYear, Side = "Left"})
task.spawn(function()
	while task.wait(1) do
		local currentTime = os.date("%d %B %Y %H:%M:%S")
		local currentDay = os.date("%A")
		local currentTime = os.date("%H:%M:%S")
		local currentDate = os.date("%d")
		local currentMonth = os.date("%B")
		local currentYear = os.date("%Y")
		realtime:Set('<font color="rgb(0, 255, 102)">Time : </font>' .. currentTime .. "/" .. currentDate .. "/" .. currentMonth .. "/" .. currentYear)
	end
end)
Overview:CreateLabel({Title = '<font color="rgb(243, 255, 140)">แมพ : Fisch</font>',Side = "Left"})
Overview:CreateLabel({Title = '<font color="rgb(172, 133, 255)">ไอดีแมพ : </font>' .._id,Side = "Left"})
Overview:CreateLabel({Title = '<font color="rgb(255, 194, 38)">ไอดีเซิร์ฟ : </font>' ..game.JobId,Side = "Left"})
Playervalue1 = Overview:CreateLabel({Title = 'ผู้เล่นทั้งหมด : 0', Side = "Left"})
task.spawn(function()
	while task.wait(1) do
		local playerCount = #Player:GetPlayers()
		Playervalue1:Set('<font color="rgb(255, 62, 65)">Players : </font>' .. playerCount)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
_Feature = _Window:CreateTab({Title = "ฟีเจอร์",Desc = "การตั้งต่าผู้เล่น",Icon = 92329949670758})
-------------------------------------------------------------------------------------------------------------------------------
_LocalPlayer = _Feature:CreateSection({Title = "ผู้เล่น",Side = "Right"})
_LocalPlayer:CreateSlider({Title = "ความเร็ว",Desc = "ปรับความเร็วของคุณ",Min = 16,Max = 150,Value = LocalPlayer.Character.Humanoid.WalkSpeed,Callback = function(value)
	pcall(function()
		LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)
end})
_G.SelectPlayer = Player.Name
local Playerslist = {}
for _, player in pairs(Player:GetChildren()) do
	table.insert(Playerslist, player.Name)
end
local SelectedPlyDropdown = _LocalPlayer:CreateDropdown({
	Title = "เลือกผู้เล่น",
	List = Playerslist,
	Value = _G.SelectPlayer,
	Multi = false,
	Callback = function(value)
		_G.SelectPlayer = value
	end
})
_LocalPlayer:CreateButton({Title = "วาปไปหาผู้เล่นที่เลือก",Mode = 1,Callback = function()
	pcall(function()
		local player = workspace:FindFirstChild(_G.SelectPlayer, true)
		if player  and player:FindFirstChild("HumanoidRootPart") then
			tp(player.HumanoidRootPart.CFrame)
		else
			Notify("Player", "Not Found in Game.", 3)
		end
	end)
end
})
_LocalPlayer:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
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
-------------------------------------------------------------------------------------------------------------------------------
CFspeed = 50
local CFloop
cfly=function()
	local humanoid = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
	humanoid.PlatformStand = true
	local Head = LocalPlayer.Character:WaitForChild("Head")
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
uncfly=function()
	if CFloop then
		CFloop:Disconnect()
	end
	local humanoid = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
	humanoid.PlatformStand = false
	local Head = LocalPlayer.Character:WaitForChild("Head")
	Head.Anchored = false
end
_CFrame = _Feature:CreateSection({Title = "ตำแหน่ง",Side = "Left"})
Positionval2=_CFrame:CreateLabel({Title = 'ตำแหน่งตอนนี้ : nil',Side = "Left"})
task.spawn(function()
	while task.wait(0.1) do
		local rootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if rootPart then
			local positionString = string.format("Position : %.2f, %.2f, %.2f", rootPart.Position.X, rootPart.Position.Y, rootPart.Position.Z)
			Positionval2:Set(positionString)
		else
			Positionval2:Set("Position : nil")
		end
	end
end)
_CFrame:CreateToggle({Title = "ถอดวิญญาณ [ บิน ]",Value = false,Callback = function(value)
	if value then
		cfly()
	else
		uncfly()
	end
end})
PlaceCFrame = "0, 0, 0"
_CFrame:CreateTextbox({
	Title = "ตำแหน่ง",
	Desc = "วางเลขตำแหน่ง",
	ClearTextOnFocus = true,
	Value = PlaceCFrame,
	Callback = function(value)
		PlaceCFrame = value
	end
})
_CFrame:CreateButton({
	Title = "ก็อปตำแหน่ง",
	Mode = 1,
	Callback = function()
		local character = LocalPlayer.Character
		if character then
			local root = character:FindFirstChild("HumanoidRootPart")
			if root then
				local positionString = string.format("%d, %d, %d", math.round(root.Position.X), math.round(root.Position.Y), math.round(root.Position.Z))
				setclipboard(positionString)
			end
		end
	end
})
_CFrame:CreateButton({
	Title = "วาปไปยังตำแหน่ง",
	Mode = 1,
	Callback = function()
		local input = PlaceCFrame:gsub('"', '')
		if not input:match("^%s*-?%d+%s*,%s*-?%d+%s*,%s*-?%d+%s*$") then
			return
		end
		local success, result = pcall(function()
			return loadstring("return CFrame.new(" .. input .. ")")()
		end)
		if success then
			local character = LocalPlayer.Character
			if character then
				local root = character:FindFirstChild("HumanoidRootPart")
				if root then
					root.CFrame = result
				end
			end
		end
	end
})
-------------------------------------------------------------------------------------------------------------------------------
_Server = _Feature:CreateSection({Title = "เซิร์ฟเวอร์",Side = "Right"})
jobid = game.JobId
_Server:CreateTextbox({Title = "ไอดีเซิร์ฟ",Desc = "ใส่ไอดีเซิร์ฟ",ClearTextOnFocus = true,Value = jobid,Callback = function(value)
	jobid=value
end})
_Server:CreateButton({Title = "วาปไปยังไอดีเซิร์ฟ",Mode = 1,Callback = function()
	local PID,JID,PLR = game.PlaceId,jobid,LocalPlayer;
	game:GetService('TeleportService'):TeleportToPlaceInstance(PID,JID,PLR)
end})
_Server:CreateButton({Title = "เปลี่ยนเซิร์ฟเวอร์",Mode = 1,Callback = function()
	HopServer(true)
end})
_Server:CreateButton({Title = "ก็อปไอดีเกม",Mode = 1,Callback = function()
	setclipboard(_id)
end})
_Server:CreateButton({Title = "ก็อปไอดีเซิฟ",Mode = 1,Callback = function()
	setclipboard(game.JobId)
end})
-------------------------------------------------------------------------------------------------------------------------------
_General = _Window:CreateTab({Title = "ทั่วไป",Desc = "อัตโนมัติ",Icon = 83854127275050})
General_1 = _General:CreateSection({Title = "การตกปลา",Side = "Left"})
General_2 = _General:CreateSection({Title = "การตั้งค่า",Side = "Right"})
-------------------------------------------------------------------------------------------------------------------------------
General_3 = _General:CreateSection({Title = "สเตตัสโลกตอนนี้",Side = "Right"})
Servertime=General_3:CreateLabel({Title = '<font color="rgb(255, 0, 144)">' .. PlayerGui.ScreenGui.serverInfo.uptime.Text .. '</font>', Side = "Center"})
timee = General_3:CreateLabel({Title = '<font color="rgb(255, 255, 0)">เวลา : </font>' .. PlayerGui.hud.safezone.worldstatuses["3_cycle"].label.Text,Side = "Left"})
weather = General_3:CreateLabel({Title = '<font color="rgb(79, 252, 255)">ไบโอ : </font>' .. PlayerGui.hud.safezone.worldstatuses["2_weather"].label.Text,Side = "Left"})
season = General_3:CreateLabel({Title = '<font color="rgb(126, 139, 255)">ฤดูกาล : </font>' .. PlayerGui.hud.safezone.worldstatuses["4_season"].label.Text,Side = "Left"})
-------------------------------------------------------------------------------------------------------------------------------
myrod = General_1:CreateLabel({Title = '<font color="rgb(126, 139, 255)">เบ็ด : nil</font>',Side = "Left"})
enchanty = General_1:CreateLabel({Title = '<font color="rgb(126, 139, 255)">ติดเอนชาร์จ : nil</font>',Side = "Left"})
loop(function()
	local zRodName = rep.playerstats[LocalPlayer.Name].Stats.rod.Value
	local rod=PlayerGui.hud.safezone.equipment.rods.scroll.safezone:FindFirstChild(zRodName)
	if rod then
		myrod:Set('<font color="rgb(255, 0, 255)">เบ็ด : </font>'..rod.Name)
	end
	if rod and rod:FindFirstChild("equip") and rod.equip.Text == "[Equipped]" then
		local enchant = rod:FindFirstChild("enchant")
		if enchant then
			enchanty:Set('<font color="rgb(52, 55, 255)">ติดเอนชาร์จ : </font>'..enchant.Text)
		end
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
Goldpole = General_3:CreateLabel({Title = '<font color="rgb(255, 255, 0)">บ่อทอง : </font>' .. FALSE,Side = "Left"})
krakenz = General_3:CreateLabel({Title = '<font color="rgb(85, 85, 255)">ปลาหมึกยักษ์ปลาหมึกปีศาจ : </font>' .. FALSE,Side = "Left"})
Megalodon = General_3:CreateLabel({Title = '<font color="rgb(255, 0 ,0)">เมกาโลดอน : </font>' .. FALSE,Side = "Left"})
GreatHammerS = General_3:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ฉลามหัวค้อนขนาดใหญ่ : </font>' .. FALSE,Side = "Left"})
WhaleShark = General_3:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ฉลามวาฬ : </font>' .. FALSE,Side = "Left"})
Orca=General_3:CreateLabel({Title = '<font color="rgb(66, 173, 255)">วาฬเพชฌฆาต : </font>' .. FALSE,Side = "Left"})
Gwshark = General_3:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ฉลามขาวขนาดใหญ่ : </font>' .. FALSE,Side = "Left"})
meteo=General_3:CreateLabel({Title = '<font color="rgb(255, 85, 0)">อุกกาบาต : </font>' .. FALSE,Side = "Left"})
tvmerchant=General_3:CreateLabel({Title = '<font color="rgb(81, 255, 0)">พ่อค้านักเดินทาง : </font>' .. FALSE,Side = "Left"})
cSunken=General_3:CreateLabel({Title = '<font color="rgb(255, 88, 88)">หีบสมบัติ Sunken : </font>' .. FALSE,Side = "Left"})
lovestorm=General_3:CreateLabel({Title = '<font color="rgb(229, 125, 255)">New! ปลาไหลแห่งความรักจุ๊บๆ : </font>' .. FALSE,Side = "Left"})
-------------------------------------------------------------------------------------------------------------------------------
General_4 = _General:CreateSection({Title = "อีเว้นท์โลกตอนนี้",Side = "Left"})
General_5 = _General:CreateSection({Title = "ร้านค้าของพ่อค้า",Side = "Right"})
noone= General_4:CreateLabel({Title = '<font color="rgb(255, 255, 0)">ถ้าอีเว้นท์เกิดจะทุกอย่างอยู่หน้านี้</font>',Side = "Center"})
a1=General_4:CreateToggle({Title = "ออโต้ตกปลาบนบ่อทอง",Value = _G.Goldpole,Callback = function(value)
	_G.Goldpole=value
end})
a2=General_4:CreateToggle({Title = "ออโต้ตกปลาหมึกคราเค่น",Value =_G.kraken,Callback = function(value)
	_G.kraken=value
end})
a3=General_4:CreateToggle({Title = "ออโต้ตกเมกาโลดอน",Value =_G.megalo,Callback = function(value)
	_G.megalo=value
end})
a4=General_4:CreateToggle({Title = "ออโต้ตกฉลามหัวค้อนขนาดใหญ่",Value =_G.hammerh,Callback = function(value)
	_G.hammerh=value
end})
a5=General_4:CreateToggle({Title = "ออโต้ตกฉลามวาฬ",Value =_G.whaleshark,Callback = function(value)
	_G.whaleshark=value
end})
a8=General_4:CreateToggle({Title = "ออโต้ตกวาฬเพชฌฆาต",Value =_G.orca,Callback = function(value)
	_G.orca=value
end})
a9=General_4:CreateToggle({Title = "ออโต้ตกฉลามขาวขนาดใหญ่",Value =_G.gwshark,Callback = function(value)
	_G.gwshark=value
end})
alove=General_4:CreateToggle({Title = "ออโต้ตกปลาไหลแห่งความรัก",Value =_G.loveEel,Callback = function(value)
	_G.loveEel=value
end})
a6=General_4:CreateButton({Title = "วาปไปหาพ่อค้านักเดินทาง",Mode = 1,Callback = function()
	local thePlace = workspace:FindFirstChild("Travelling Merchant", true)
	if thePlace and thePlace:IsA("Model") then
		if thePlace.PrimaryPart then
			tp(thePlace:GetPivot())
		end
	else
		Notify("Error", "Could not find the NPC.")
	end
end})
aSunken=General_4:CreateButton({Title = "วาปไปหากล่อง Sunken",Mode = 1,Callback = function()
	local thePlace = workspace.ActiveChestsFolder:FindFirstChild("Pad", true)
	if thePlace then
		tp(thePlace:GetPivot())
	end
end})
m_11 = General_5:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ไอเท็ม 1 : nil</font>', Side = "Left"})
m_22 = General_5:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ไอเท็ม 2 : nil</font>', Side = "Left"})
m_33 = General_5:CreateLabel({Title = '<font color="rgb(255, 0, 195)">ไอเท็ม 3 : nil</font>', Side = "Left"})
itemsmm = {}
onecheck=false
loop(function()
	local a = workspace:FindFirstChild("Merchant Boat", true)
	if a then
		for _, v in pairs(a:GetChildren()) do
			if v:IsA("Model") and v.Name ~= "Boat" and not onecheck then
				table.insert(itemsmm, v.Name)
				if #itemsmm >= 3 then
					onecheck = true
					break
				end
			end
		end
		m_11:Set("ไอเท็ม 1 : " .. (itemsmm[1] or "nil"))
		m_22:Set("ไอเท็ม 2 : " .. (itemsmm[2] or "nil"))
		m_33:Set("ไอเท็ม 3 : " .. (itemsmm[3] or "nil"))
	else
		onecheck=false
	end
end)
loop(function()
	local love = workspace:FindFirstChild("Lovestorm Eel", true)
	if love then 
		lovestorm:SetVisible(true)
		lovestorm:Set('<font color="rgb(229, 125, 255)">New! ปลาไหลแห่งความรักจุ๊บๆ : </font>' .. TRUE)
		alove:SetVisible(true)
	else
		lovestorm:SetVisible(false)
		lovestorm:Set('<font color="rgb(229, 125, 255)">New! ปลาไหลแห่งความรักจุ๊บๆ : </font>' .. FALSE)
		alove:SetVisible(false)
	end
end)
loop(function()
	local tempo =workspace.ActiveChestsFolder:FindFirstChild("Pad", true)
	if tempo then
		aSunken:SetVisible(true)
		cSunken:SetVisible(true)
		cSunken:Set('<font color="rgb(255, 88, 88)">หีบสมบัติ Sunken : </font>' .. TRUE)
	else
		cSunken:SetVisible(false)
		aSunken:SetVisible(true)
		cSunken:Set('<font color="rgb(255, 88, 88)">หีบสมบัติ Sunken : </font>' .. FALSE)
	end
end)
a7=General_4:CreateButton({Title = "วาปไปหาอุกกาบาต",Mode = 1,Callback = function()
	local thePlace = workspace.MeteorItems:FindFirstChildOfClass("Model")
	if thePlace and thePlace:IsA("Model") then
		if thePlace.PrimaryPart then
			tp(thePlace:GetPivot())
		end
	else
		Notify("Error", "Could not find the NPC.")
	end
end})
task.spawn(function()
	while task.wait() do
		if _G.loveEel then
			local gws = workspace:FindFirstChild("Lovestorm Eel", true)
			if gws then tp(CFrame.new(findheadpos(gws)) * CFrame.new(15, 10, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.gwshark then
			local gws = workspace:FindFirstChild("Great White Shark", true)
			if gws then tp(CFrame.new(findheadpos(gws)) * CFrame.new(15, 10, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.orca then
			local op = workspace:FindFirstChild("Orcas Pool", true)
			if op then tp(CFrame.new(findheadpos(op))*CFrame.new(0, 5, 40))
				local character = LocalPlayer.Character
				local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
				humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.pi, 0)
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.whaleshark then
			local wsa = workspace:FindFirstChild("Whale Shark", true)
			if wsa then tp(CFrame.new(findheadpos(wsa))*CFrame.new(15, 10, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.megalo then
			local mgd = workspace:FindFirstChild("Megalodon Default", true)
			if mgd then tp(CFrame.new(findheadpos(mgd))*CFrame.new(15, 5, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.kraken then
			local kaken = workspace:FindFirstChild("The Kraken Pool", true)
			if kaken then tp(CFrame.new(findheadpos(kaken)) * CFrame.new(15, 5, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.hammerh then
			local ge = workspace:FindFirstChild("Great Hammerhead Shark", true)
			if ge then tp(CFrame.new(findheadpos(ge))*CFrame.new(15, 5, 0))end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Goldpole then
			local go = workspace:FindFirstChild("Golden Tide", true)
			if go then tp(go.CFrame*CFrame.new(0, _G.YFishing, 0), 9e9)end
		end
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
loop(function()
	local ge = workspace:FindFirstChild("Great White Shark", true)
	if ge then
		Gwshark:Set('<font color="rgb(255, 0, 195)">ฉลามขาวขนาดใหญ่ : </font>' .. TRUE)
		Gwshark:SetVisible(true)
		a9:SetVisible(true)
	else
		Gwshark:SetVisible(false)
		a9:SetVisible(false)
		_G.gwshark0=false
	end
end)
loop(function()
	local ge = workspace:FindFirstChild("Orcas Pool", true)
	if ge then
		Orca:Set('<font color="rgb(66, 173, 255)">วาฬเพชฌฆาต : </font>' .. TRUE)
		a8:SetVisible(true)
		Orca:SetVisible(true)
	else
		Orca:SetVisible(false)
		a8:SetVisible(false)
		_G.orca=false
	end
end)
loop(function()
	local thePlace = workspace.MeteorItems:FindFirstChildOfClass("Model")
	if thePlace then
		meteo:Set('<font color="rgb(255, 85, 0)">อุกกาบาต : </font>' .. TRUE)
		a7:SetVisible(true)
		meteo:SetVisible(true)
	else
		meteo:SetVisible(false)
		a7:SetVisible(false)
	end
end)
loop(function()
	local thePlace = workspace:FindFirstChild("Travelling Merchant", true)
	if thePlace and thePlace:IsA("Model") then
		tvmerchant:Set('<font color="rgb(81, 255, 0)">พ่อค้านักเดินทาง : </font>' .. TRUE)
		a6:SetVisible(true)
		tvmerchant:SetVisible(true)
		General_5:SetVisible(true)
	else
		tvmerchant:SetVisible(false)
		a6:SetVisible(false)
		General_5:SetVisible(false)
	end
end)
loop(function()
	Servertime:Set('<font color="rgb(255, 0, 144)">' .. PlayerGui.ScreenGui.serverInfo.uptime.Text .. '</font>')
	weather:Set('<font color="rgb(79, 252, 255)">ไบโอ : </font>' .. PlayerGui.hud.safezone.worldstatuses["2_weather"].label.Text)
	timee:Set('<font color="rgb(255, 255, 0)">เวลา : </font>' .. PlayerGui.hud.safezone.worldstatuses["3_cycle"].label.Text)
	season:Set('<font color="rgb(126, 139, 255)">ฤดูกาล : </font>' .. PlayerGui.hud.safezone.worldstatuses["4_season"].label.Text)
end)
loop(function()
	local mega55 = workspace:FindFirstChild("Megalodon Default", true)
	if mega55 then
		Megalodon:Set('<font color="rgb(255, 0 ,0)">เมกาโลดอน : </font>' .. TRUE)
		Megalodon:SetVisible(true)
		a3:SetVisible(true)
	else
		Megalodon:SetVisible(false)
		a3:SetVisible(false)
		_G.megalo=false
	end
end)
loop(function()
	local kkub = workspace:FindFirstChild("The Kraken Pool", true)
	if kkub then
		krakenz:Set('<font color="rgb(85, 85, 255)">ปลาหมึกยักษ์ปลาหมึกปีศาจ : </font>' .. TRUE)
		krakenz:SetVisible(true)
		a2:SetVisible(true)
	else
		krakenz:SetVisible(false)
		a2:SetVisible(false)
		_G.kraken=false
	end
end)
loop(function()
	local go = workspace:FindFirstChild("Golden Tide Pole", true)
	if go then
		Goldpole:Set('<font color="rgb(255, 255, 0)">บ่อทอง : </font>' .. TRUE)
		Goldpole:SetVisible(true)
		a1:SetVisible(true)
	else
		Goldpole:SetVisible(false)
		a1:SetVisible(false)
		_G.Goldpole=false
	end
end)
loop(function()
	local ge = workspace:FindFirstChild("Great Hammerhead Shark", true)
	if ge then
		GreatHammerS:Set('<font color="rgb(255, 0, 195)">ฉลามหัวค้อนขนาดใหญ่ : </font>' .. TRUE)
		a4:SetVisible(true)
		GreatHammerS:SetVisible(true)
	else
		GreatHammerS:SetVisible(false)
		a4:SetVisible(false)
		_G.hammerh=false
	end
end)
loop(function()
	local qs = workspace:FindFirstChild("Whale Shark", true)
	if qs then
		WhaleShark:Set('<font color="rgb(255, 0, 195)">ฉลามวาฬ : </font>' .. TRUE)
		a5:SetVisible(true)
		WhaleShark:SetVisible(true)
	else
		WhaleShark:SetVisible(false)
		a5:SetVisible(false)
		_G.whaleshark=false
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
MainStatus=General_1:CreateLabel({Title = '<font color="rgb(255, 87, 87)">ตอนนี้คุณไม่ได้ทำอะไร</font>', Side = "Center"})
General_1:CreateImage({
	Title = "ออโต้ตกปลา",
	Desc = "ตกเร็วกว่าเวลาที่เขาจะรักมึงอีกไอควาย",
	Icon = 135502990773578,
	Toggle = true,
	Value =  _G.Config.AutoFish,
	Callback = function(value)
		_G.Config.AutoFish = value
		SaveSettings()
	end})
General_1:CreateSelect({
	Title = "โหมดตกปลา",
	Desc = "เลือกโหมด",
	List = {"Safe", "Instant"},
	Value = _G.Config.ModeFishing,
	Callback = function(value)
		_G.Config.ModeFishing = value
		SaveSettings()
	end,
})
EventsZone = {"Lovestorm Eel", "Great White Shark", "Whale Shark", "Orcas Pool", "Megalodon Default", "The Kraken Pool", "Great Hammerhead Shark", "Isonade"}
EventsDD = General_1:CreateDropdown({
	Title = "เลือกปลาอีเว้นท์",
	List = EventsZone,
	Value = _G.Config.SelectZoneEvents,
	Multi = true,
	Callback = function(value)
		_G.Config.SelectZoneEvents = value
		SaveSettings()
	end
})
General_1:CreateToggle({Title = "เปิดโหมดตกปลาอีเว้นท์",Value =_G.Config.AllEvents,Callback = function(value)
	_G.Config.AllEvents=value
	SaveSettings()
end})
General_1:CreateToggle({Title = "เปลี่ยนเซิฟหาปลาอีเว้นท์ที่เลือก",Value =_G.Config.Hopserver,Callback = function(value)
	_G.Config.Hopserver=value
	SaveSettings()
end})
General_1:CreateToggle({Title = "ใช้โทเท็มพระอาทิตย์หาปลาอีเว้นท์",Value =_G.Config.Skipday,Callback = function(value)
	_G.Config.Skipday=value
	SaveSettings()
end})
task.spawn(function()
	while task.wait(5) do
		if _G.Config.Skipday then
			for _, v in pairs(workspace.zones.fishing:GetChildren()) do
				if table.find(_G.Config.SelectZoneEvents, v.Name) then
					local Istrue = true
				else
					if not LocalPlayer.Character:FindFirstChild("Sundial Totem") then
						if Backpack:FindFirstChild("Sundial Totem") then
							Backpack:WaitForChild("Sundial Totem").Parent = LocalPlayer.Character
							Click()
							Click()
						end
					end
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Config.Hopserver then
			pcall(function()
				for _, v in pairs(workspace.zones.fishing:GetChildren()) do
					if table.find(_G.Config.SelectZoneEvents, v.Name) then
						local Istrue = true
					else
						HopServer(true)
					end
				end
			end)
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Config.ModeFishing == "Instant" then
			if _G.Config.AutoFish or _G.hammerh or _G.megalo or _G.kraken or _G.Goldpole or _G.whaleshark or _G.orca or _G.gwshark or _G.loveEel then
				RodName = rep.playerstats[LocalPlayer.Name].Stats.rod.Value
				if Backpack:FindFirstChild(RodName) then
					LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
				end
				if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
					pcall(function()
						PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
						game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
					end)
				else
					LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(_G.Config.Percentz)
					task.wait(1)
				end
			end
		else
			if _G.Config.AutoFish or _G.hammerh or _G.megalo or _G.kraken or _G.Goldpole or _G.whaleshark or _G.orca or _G.gwshark or _G.loveEel then
				RodName = rep.playerstats[LocalPlayer.Name].Stats.rod.Value
				if Backpack:FindFirstChild(RodName) then
					LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
				end
				if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
					pcall(function()
						PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
						game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
					end)
				else
					LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(_G.Config.Percentz)
					task.wait(1)
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Config.AutoFish then
			if _G.Config.AllEvents then
				for _, v in pairs(workspace.zones.fishing:GetChildren()) do
					if table.find(_G.Config.SelectZoneEvents, v.Name) then  
						if v.Name == "Orcas Pool" then
							local op = workspace:FindFirstChild("Orcas Pool", true)
							if op then tp(CFrame.new(findheadpos(op))*CFrame.new(0, 5, 40))
								local character = LocalPlayer.Character
								local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
								humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.pi, 0)
								MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
							end
						elseif v.Name == "Lovestorm Eel" then
							local love = workspace:FindFirstChild("Lovestorm Eel", true)
							if love then tp(CFrame.new(findheadpos(love)) * CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "The Kraken Pool" then
							local kaken = workspace:FindFirstChild("The Kraken Pool", true)
							if kaken then tp(CFrame.new(findheadpos(kaken)) * CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "Great White Shark" then
							local gws = workspace:FindFirstChild("Great White Shark", true)
							if gws then tp(CFrame.new(findheadpos(gws)) * CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "Megalodon Default" then
							local mgd = workspace:FindFirstChild("Megalodon Default", true)
							if mgd then tp(CFrame.new(findheadpos(mgd))*CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "Great Hammerhead Shark" then
							local ge = workspace:FindFirstChild("Great Hammerhead Shark", true)
							if ge then tp(CFrame.new(findheadpos(ge))*CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "Whale Shark" then
							local wsa = workspace:FindFirstChild("Whale Shark", true)
							if wsa then tp(CFrame.new(findheadpos(wsa))*CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						elseif v.Name == "Isonade" then
							local iso = workspace:FindFirstChild("Isonade", true)
							if iso then tp(CFrame.new(findheadpos(iso))*CFrame.new(15, 5, 0))end
							MainStatus:Set('<font color="rgb(85, 255, 127)">ตุณกำลังตกปลาที่ : </font>' .. v.Name)
						end
					end
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Config.ModeFishing == "Instant" then
			if _G.Config.AutoFish or _G.hammerh or _G.megalo or _G.kraken or _G.Goldpole or _G.whaleshark or _G.orca or _G.gwshark or _G.allevents or _G.loveEel then
				pcall(function()
					PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
					game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
				end)
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if _G.Config.ModeFishing == "Instant" then
			pcall(function()
				for _, s in pairs(PlayerGui:GetChildren()) do
					if s.Name == "reel" then
						game:GetService("ReplicatedStorage").events["reelfinished "]:FireServer(100, true)
						task.wait(.5)
					end
				end
			end)
		else
			pcall(function()
				for _, v in pairs(PlayerGui:GetChildren()) do
					if v.Name == "reel" then
						local s = v:FindFirstChild("playerbar", true)
						if s then
							s.Size = UDim2.new(1, 0, 1.29999995, 0)
						end
					end
				end
			end)
		end
	end
end)

General_1:CreateToggle({Title = "ออโต้ขายปลาทุกตัวที่มี",Value =_G.Config.AutoSell,Callback = function(value)
	_G.Config.AutoSell=value
	SaveSettings()
end})
General_1:CreateButton({Title = "ขายปลาในมือ",Mode = 1,Callback = function()
	game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("Sell"):InvokeServer()
end})
General_1:CreateButton({Title = "ขายปลาทุกตัวที่มี",Mode = 1,Callback = function()
	game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll"):InvokeServer()
end})
General_2:CreateSlider({
	Title = "เวลา",
	Desc = "เวลาที่จะขายปลาทั้งหมด",
	Min = 1,
	Max = 999,
	Value = _G.Config.DelaySell,
	Callback = function(value)
		_G.Config.DelaySell=value
		SaveSettings()
	end
})
General_2:CreateSlider({
	Title = "%",
	Desc = "% โยนเบ็ด",
	Min = 5,
	Max = 100,
	Value = _G.Config.Percentz,
	Callback = function(value)
		_G.Config.Percentz = value
		SaveSettings()
	end
})
task.spawn(function()
	while task.wait(_G.Config.DelaySell) do
		if _G.Config.AutoSell then
			game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll"):InvokeServer()
		end
	end
end)
General_2:CreateToggle({Title = "การแจ้งเตือน",Value = true,Callback = function(value)
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.announcements.Visible = value
	end)
end})
General_2:CreateToggle({Title = "เดินบนน้ำ",Value = true,Callback = function(value)
	if value then
		for _, v in pairs(workspace.zones.fishing:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = true
			end
		end
	else
		for _, v in pairs(workspace.zones.fishing:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = false
			end
		end
	end
end})
General_2:CreateToggle({Title = "อากาศไม่จำกัด",Value = true,Callback = function(value)
	pcall(function()
		LocalPlayer.Character.oxygen.Disabled = value
	end)
end})
General_2:CreateToggle({Title = "เรดาร์ปลา",Value = true,Callback = function(value)
	if value then
		for _, v1 in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
			if v1:IsA("BillboardGui") or v1:IsA("SurfaceGui") then
				v1.Enabled = true
			end
		end
	else
		for _, v1 in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
			if v1:IsA("BillboardGui") or v1:IsA("SurfaceGui") then
				v1.Enabled = false
			end
		end
	end
end})
General_2:CreateButton({Title = "ป้องกัน AFK ในคอม [ ตอนย่อแท็บ ]",Mode = 1,Callback = function()
	loadstr("https://pastebin.com/raw/XbFS3MnL")
end})
-------------------------------------------------------------------------------------------------------------------------------
_Rod = _Window:CreateTab({Title = "เบ็ด",Desc = "อัตโนมัติ",Icon = 135502990773578})
Rod_Thedepth = _Rod:CreateSection({Title = "เบ็ดผี",Side = "Left"})
abyysalrelic = Rod_Thedepth:CreateLabel({Title = '<font color="rgb(0, 0, 255)">ตอนนี้คุณมีหินฟ้า</font>' ..FALSE, Side = "Left"})
hexedrelic = Rod_Thedepth:CreateLabel({Title = '<font color="rgb(173, 0, 0)">ตอนนี้คุณมีหินแดง</font>' .. FALSE, Side = "Left"})
openrod_depth = Rod_Thedepth:CreateLabel({Title = '<font color="rgb(48, 255, 48)">ตอนนี้คุณสามารถปลดล็อกได้</font>', Side = "Left"})
rod1_tp1=Rod_Thedepth:CreateButton({Title = "วาปไปจุดวางหินแดง",Mode = 1,Callback = function()
	tp(CFrame.new(1050, -631, 1318))
end})
rod1_tp2=Rod_Thedepth:CreateButton({Title = "วาปไปจุดวางหินฟ้า",Mode = 1,Callback = function()
	tp(CFrame.new(1205, -717, 1316))
end})
Rod_Thedepth:CreateButton({Title = "วาปไปซื้อเบ็ดผี",Mode = 1,Callback = function()
	tp(CFrame.new(1707, -903, 1446))
end})
loop(function()
	if PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Abyssal Enchant Relic") or PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Big Abyssal Enchant Relic") then
		abyysalrelic:SetVisible(true)
		abyysalrelic:Set('<font color="rgb(0, 0, 255)">ตอนนี้คุณมีหินฟ้า : </font>' .. TRUE)
	else
		abyysalrelic:SetVisible(false)
	end
end)
loop(function()
	if PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Hexed Enchant Relic") or PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Big Abyssal Enchant Relic") then
		hexedrelic:SetVisible(true)
		hexedrelic:Set('<font color="rgb(173, 0, 0)">ตอนนี้คุณมีหินแดง : </font>' .. TRUE)
	else
		hexedrelic:SetVisible(false)
	end
end)
loop(function()
	if PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Abyssal Enchant Relic") and PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Hexed Enchant Relic") or PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Big Abyssal Enchant Relic") or PlayerGui.hud.safezone.backpack.inventory.scroll:FindFirstChild("Big Hexed Enchant Relic") then
		openrod_depth:SetVisible(true)
		openrod_depth:Set('<font color="rgb(48, 255, 48)">ตอนนี้คุณสามารถปลดล็อกได้ : </font>' .. TRUE)
		rod1_tp1:SetVisible(true)
		rod1_tp2:SetVisible(true)
	else
		openrod_depth:SetVisible(false)
		rod1_tp1:SetVisible(false)
		rod1_tp2:SetVisible(false)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
function _uqu()
	local _1z = workspace.BrickRodMessages.m1.SurfaceGui.TextLabel.Text
	local _2z = workspace.BrickRodMessages.m2.SurfaceGui.TextLabel.Text
	local _3z = workspace.BrickRodMessages.m3.SurfaceGui.TextLabel.Text
	successdpass= "" .. _1z .. " " .. _2z .. "." .. " " .. _3z
end
Rod_Brick = _Rod:CreateSection({Title = "เบ็ดอิฐ",Side = "Right"})
timeplayed = Rod_Brick:CreateLabel({Title = '<font color="rgb(48, 255, 48)">เวลาที่เล่นทั้งหมด : </font>' .. PlayerGui.hud.safezone.menu.stats_safezone.scroll["Time Played"].num.Text, Side = "Left"})
bh1 = Rod_Brick:CreateLabel({Title = '<font color="rgb(206, 255, 179)">รหัส 1 : </font>' .. workspace.BrickRodMessages.m1.SurfaceGui.TextLabel.Text, Side = "Left"})
bh2 = Rod_Brick:CreateLabel({Title = '<font color="rgb(206, 255, 179)">รหัส 2 : </font>' .. workspace.BrickRodMessages.m2.SurfaceGui.TextLabel.Text, Side = "Left"})
bh3 = Rod_Brick:CreateLabel({Title = '<font color="rgb(206, 255, 179)">รหัส 3 : </font>' .. workspace.BrickRodMessages.m3.SurfaceGui.TextLabel.Text, Side = "Left"})
ppfish = Rod_Brick:CreateLabel({Title = '<font color="rgb(255, 244, 93)">ปลาปักเป้า : </font>' .. FALSE, Side = "Left"})
Rod_Brick:CreateButton({Title = "รวบรวมอิฐ",Mode = 1,Callback = function()
	tp(CFrame.new(-1839, 194, 197))
	task.wait(1)
	pcall(function()
		fireclickdetector(workspace.Brick2.ClickDetector)
	end)
	task.wait(1)
	tp(CFrame.new(5952, 277, 859))
	task.wait(1)
	pcall(function()
		fireclickdetector(workspace.Brick3.ClickDetector)
	end)
	task.wait(1)
	tp(CFrame.new(991, -735, 1138))
	task.wait(1)
	pcall(function()
		fireclickdetector(workspace.Brick1.ClickDetector)
	end)
	task.wait(2)
	tp(CFrame.new(-1323, 141, 1534))
end})
Rod_Brick:CreateButton({Title = "ส่งรหัส",Mode = 1,Callback = function()
	_uqu()
	chatMessage(successdpass)
end})
loop(function()
	bh1:Set('<font color="rgb(206, 255, 179)">รหัส 1 : </font>' .. workspace.BrickRodMessages.m1.SurfaceGui.TextLabel.Text)
	bh2:Set('<font color="rgb(206, 255, 179)">รหัส 2 : </font>' .. workspace.BrickRodMessages.m2.SurfaceGui.TextLabel.Text)
	bh3:Set('<font color="rgb(206, 255, 179)">รหัส 3 : </font>' .. workspace.BrickRodMessages.m3.SurfaceGui.TextLabel.Text)
	timeplayed:Set('<font color="rgb(48, 255, 48)">เวลาที่เล่น : </font>' .. PlayerGui.hud.safezone.menu.stats_safezone.scroll["Time Played"].num.Text)
end)
loop(function()
	if Backpack:FindFirstChild("Pufferfish") then
		ppfish:Set('<font color="rgb(255, 244, 93)">ปลาปักเป้า : </font>' .. TRUE)
	else
		ppfish:Set('<font color="rgb(255, 244, 93)">ปลาปักเป้า : </font>' .. FALSE)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
buyprompt=function()
	if PlayerGui.over:FindFirstChild("prompt") then
		for _, v in pairs(PlayerGui.over.prompt:GetChildren()) do
			if v.Name == "confirm" then
				GuiService.SelectedObject = v
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
				VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
			end
		end
	end
end
InteraceITEM = {}
IntSelect = "nil"
for _, v in pairs(workspace.world.interactables:GetChildren()) do
	table.insert(InteraceITEM, v.Name)
end
_Item = _Window:CreateTab({Title = "ไอเท็ม",Desc = "อัตโนมัติ",Icon = 89149352371179})
Item_1 = _Item:CreateSection({Title = "ร้านค้า",Side = "Left"})
Item_2 = _Item:CreateSection({Title = "อัตโนมัติ",Side = "Right"})
Item_3 = _Item:CreateSection({Title = "ไอเท็ม",Side = "Right"})
Item_4 = _Item:CreateSection({Title = "เทรด",Side = "Left"})
Item_1:CreateImage({
	Title = "ซื้อโชค VI - 5,000 C$",
	Desc = "อัตโนมัติ",
	Icon = 72071693121625,
	Toggle = true,
	Value =  _G.AutoBuyluck,
	Callback = function(value)
		_G.AutoBuyluck = value
	end})
Item_1:CreateImage({
	Title = "ซื้อหินเอนชาร์จ - 11,000 C$",
	Desc = "อัตโนมัติ",
	Icon = 108163663946661,
	Toggle = true,
	Value =  _G.AutoRelic,
	Callback = function(value)
		_G.AutoRelic = value
	end})
Item_1:CreateImage({
	Title = "อัพปลา - 450 C$",
	Desc = "ถือปลาก่อนอัพ",
	Icon = 102762768073315,
	Toggle = true,
	Value =  _G.AutoAppraise,
	Callback = function(value)
		_G.AutoAppraise = value
	end})
Itemzzz=Item_1:CreateDropdown({
	Title = "ไอเท็มที่อยู่รอบตัวคุณ [ อัพเดตอัตโนมัติ ]",
	List = InteraceITEM,
	Value = IntSelect,
	Multi = false,
	Callback = function(value)
		IntSelect = value
	end
})
Item_1:CreateButton({Title = "วาปไปไอเท็ม",Mode = 1,Callback = function()
	if IntSelect == "nil" then
		Notify("Error", "Please Select Zone")
	else
		local thePlace = workspace.world.interactables:FindFirstChild(IntSelect, true)
		if thePlace and thePlace:IsA("Model") then
			tp(thePlace:GetPivot())
		end
	end
end})
Item_1:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	InteraceITEM = {}
	Itemzzz:Clear()
	for _, v in pairs(workspace.world.interactables:GetChildren()) do  
		table.insert(InteraceITEM, v.Name)
		Itemzzz:AddList(v.Name)
	end
end})
_G.SelectPlayerT = Player.Name
local PlayerslistT = {}
for _, player in pairs(Player:GetChildren()) do
	table.insert(PlayerslistT, player.Name)
end
local SelectedPlyDropdownT = Item_4:CreateDropdown({
	Title = "เลือกผู้เล่น",
	List = PlayerslistT,
	Value = _G.SelectPlayerT,
	Multi = false,
	Callback = function(value)
		_G.SelectPlayerT = value
	end
})
Item_4:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	PlayerslistT = {}
	SelectedPlyDropdownT:Clear()
	for _, player in pairs(game:GetService("Players"):GetChildren()) do  
		table.insert(PlayerslistT, player.Name)
		SelectedPlyDropdownT:AddList(player.Name)
	end
end})
Item_4:CreateSelect({
	Title = "เลือกการเทรด",
	Desc = "ส่งหรือรับ",
	List = {"Send", "Accept"},
	Value = "Send",
	Callback = function(value)
		_G.MethodTrade = value
	end,
})
Item_4:CreateImage({
	Title = "ออโต้เทรด",
	Desc = "ถือปลาหรือสิ่งของก่อนเปิด",
	Icon = 102762768073315,
	Toggle = true,
	Value =  _G.Trade,
	Callback = function(value)
		_G.Trade = value
	end})
task.spawn(function()
	while task.wait(1) do
		if _G.Trade then
			if _G.MethodTrade == "Send" then
				local PlayerTrade =  Player:FindFirstChild(_G.SelectPlayerT)
				if Player then
					local args = {
						[1] = PlayerTrade
					}
					for _, v in pairs(LocalPlayer.Character:GetChildren()) do
						if v:FindFirstChild("offer") and v:IsA("Tool") then
							LocalPlayer.Character:FindFirstChild(v.Name).offer:FireServer(unpack(args))
						end
					end
				end
			else
				local accept = LocalPlayer.PlayerGui.hud.safezone.bodyannouncements:FindFirstChild("offer")
				if accept then
					local accept2 = accept:FindFirstChild("confirm")
					if accept2 then
						GuiService.SelectedObject = accept2
						VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
						VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
					end
				end
			end
		end
	end
end)
enclist = {
	"Insight", "Clever", "Sea King", "Blessed", "Mutated", "Noir", "Ghastly", "Abyssal",
	"Quality", "Swift", "Hasty", "Lucky", "Divine", "Breezed", "Storming", "Controlled",
	"Resilient", "Unbreakable", "Herculean", "Steady", "Scrapper", "Long", "Wormhole",
	"Immortal", "Mystical", "Sea Overlord", "Anomalous", "Quantum", "Piercing", "Invincible"
}
Item_2:CreateImage({
	Title = "ออโต้เอนชาร์จ",
	Desc = "ถือหินเอนชาร์จก่อนเอนชาร์จ",
	Icon = 119930322047252,
	Toggle = true,
	Value =  _G.AutoEnc,
	Callback = function(value)
		_G.AutoEnc = value
	end})
Item_2:CreateDropdown({
	Title = "เลือกเอนชาร์จ",
	List = enclist,
	Value = _G.Config.encs,
	Multi = false,
	Callback = function(value)
		_G.Config.encs = value
		SaveSettings()
	end
})
Item_2:CreateButton({Title = "วาปไปที่เอนชาร์จ",Mode = 1,Callback = function()
	tp(CFrame.new(1311, -802, -84))
end})
Item_3:CreateToggle({Title = "ออโต้ใช้ออโร่ร่าโทเท่ม",Value = _G.AutoAurora,Callback = function(value)
	_G.AutoAurora=value
end})
Item_3:CreateSelect({
	Title = "ใช้ตอนไหน",
	Desc = "โทเทมเร่งเวลา",
	List = {"Day", "Night"},
	Value = "Day",
	Callback = function(value)
		_G.sunmode = value
	end,
})
Item_3:CreateToggle({Title = "ออโต้ใช้โทเทมเร่งเวลา",Value = _G.AutoSund,Callback = function(value)
	_G.AutoSund=value
end})
Item_3:CreateToggle({Title = "ออโต้ใช้กล่องเหยื่อ [ ถือก่อนเปิด ]",Value = _G.BaitCrate,Callback = function(value)
	_G.BaitCrate = value
end})
Item_3:CreateToggle({Title = "ออโต้หากล่องสมบัติ",Value = _G.ChestSSS,Callback = function(value)
	_G.ChestSSS = value
end})
task.spawn(function()
	while task.wait() do
		if _G.ChestSSS then
			if not workspace.world.chests:FindFirstChildOfClass("Part") and not workspace.world.chests:FindFirstChild("ChestClosed", true) then
				tp(CFrame.new(-2825, 215, 1518))
				task.wait()
				if Backpack:FindFirstChild("Treasure Map") then
					if not LocalPlayer.Character:FindFirstChild("Treasure Map") then
						Backpack:FindFirstChild("Treasure Map").Parent = LocalPlayer.Character
						pcall(function()
							workspace.world.npcs:FindFirstChild("Jack Marrow").treasure.repairmap:InvokeServer()
						end)
					end
				else
					Notify("Treasure Map", "Not Found in Backpack", 1)
				end
			end
			if workspace.world.chests:FindFirstChildOfClass("Part") and workspace.world.chests:FindFirstChild("ChestClosed", true) then
				for _, v in pairs(workspace.world.chests:GetChildren()) do
					if v:IsA("Part") then
						if v:FindFirstChild("ChestClosed") then
							tp(v.CFrame)
							findfire(v)
						end
					end
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait(.1) do
		if _G.BaitCrate then
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
			Click()
		end
	end
end)
task.spawn(function()
	while task.wait(2.5) do
		if _G.AutoSund then
			if PlayerGui.hud.safezone.worldstatuses["3_cycle"].label.Text == _G.sunmode then
				if Backpack:FindFirstChild("Sundial Totem") then
					Backpack:WaitForChild("Sundial Totem").Parent = LocalPlayer.Character
					Click()
					Click()
				else
					Notify("Sundial Totem", "Not Found in Inventory")
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait(2.5) do
		if _G.AutoAurora then
			if PlayerGui.hud.safezone.worldstatuses["3_cycle"].label.Text == "Night" then
				if Backpack:FindFirstChild("Aurora Totem") then
					Backpack:WaitForChild("Aurora Totem").Parent = LocalPlayer.Character
					Click()
					Click()
				else
					Notify("Aurora Totem", "Not Found in Inventory")
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait(0.5) do
		if _G.AutoEnc then
			pcall(function()
				local Equipnow=PlayerGui.hud.safezone.equipment.rods.scroll.safezone:FindFirstChild(RodName)
				if Equipnow and Equipnow:FindFirstChild("equip") and Equipnow.equip.Text == "[Equipped]" then
					local enchant = Equipnow:FindFirstChild("enchant")
					if enchant then
						if string.find(enchant.Text, _G.Config.encs) then
							Notify("Success", "You got Select Enchant.", 3)
						else
							fireproximityprompt(workspace.world.interactables["Enchant Altar"].ProximityPrompt)
							buyprompt()
						end
					end
				end
			end)
		end
	end
end)
task.spawn(function()
	while task.wait(0.3) do
		if _G.AutoAppraise then
			tp(CFrame.new(448, 151, 209))
			task.wait()
			workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
		end
	end
end)

task.spawn(function()
	while task.wait(0.5) do
		pcall(function()
			if _G.AutoBuyluck then
				tp(CFrame.new(-932, 226, -993))
				workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("luck"):InvokeServer()
			end
		end)
	end
end)
task.spawn(function()
	while task.wait(0.5) do
		pcall(function()
			if _G.AutoRelic then
				tp(CFrame.new(-932, 226, -993))
				workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power"):InvokeServer()
			end
		end)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
_TP = _Window:CreateTab({Title = "โลเคชั่น",Desc = "เทเลพอร์ต",Icon = 137457326434443})
TP_1 = _TP:CreateSection({Title = "โซน",Side = "Left"})
TP_2 = _TP:CreateSection({Title = "ผู้คน",Side = "Right"})
TP_3 = _TP:CreateSection({Title = "โลเคชั่น",Side = "Right"})
TP_4 = _TP:CreateSection({Title = "โซนที่ดีที่สุด",Side = "Left"})
TP_5 = _TP:CreateSection({Title = "เรือ",Side = "Left"})
Scboat="nil"
Boat={}
Zone = "nil"
ZoneList = {}
npc = "nil"
NPCList={}
locaList = {}
for _, v in pairs(workspace.active.boats:GetChildren()) do
	table.insert(Boat, v.Name)
end
boatDD =TP_5:CreateDropdown({
	Title = "เลือกเรือ [ อัพเดตอัตโนมัติ ]",
	List = Boat,
	Value = Scboat,
	Multi = false,
	Callback = function(value)
		Scboat = value
	end
})
TP_5:CreateButton({Title = "วาปไปยังเรือ",Mode = 1,Callback = function()
	if Scboat == "nil" then
		Notify("Error", "Please Select Zone")
	else
		local thePlace = workspace.active.boats:FindFirstChild(Zone, true)
		if thePlace then
			local h = thePlace:FindFirstChild("Hitbox", true)
			if h then
				tp(CFrame.new(findheadpos(h)))
			end
		end
	end
end})
TP_5:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	Boat = {}
	boatDD:Clear()
	for _, v in pairs(workspace.world.spawns.TpSpots:GetChildren()) do  
		table.insert(boatDD, v.Name)
		boatDD:AddList(v.Name)
	end
end})
locaSelect="nil"
pcall(function()
	workspace.world.spawns.TpSpots.Uncharted:Destroy()
end)
for _, v in pairs(workspace.active["OceanPOI's"]:GetChildren()) do
	table.insert(locaList, v.Name)
end
for _, v in pairs(workspace.world.spawns.TpSpots:GetChildren()) do
	table.insert(ZoneList, v.Name)
end
for _, v in pairs(workspace.world.npcs:GetChildren()) do
	table.insert(NPCList, v.Name)
end
placeDD =TP_1:CreateDropdown({
	Title = "เลือกสถานที่ [ อัพเดตอัตโนมัติ ]",
	List = ZoneList,
	Value = Zone,
	Multi = false,
	Callback = function(value)
		Zone = value
	end
})
TP_1:CreateButton({Title = "วาปไปยังสถานที่",Mode = 1,Callback = function()
	if Zone == "nil" then
		Notify("Error", "Please Select Zone")
	else
		local thePlace = workspace.world.spawns.TpSpots:FindFirstChild(Zone, true)
		if thePlace and thePlace:IsA("BasePart") then
			tp(thePlace.CFrame)
		end
	end
end})
TP_1:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	ZoneList = {}
	placeDD:Clear()
	for _, v in pairs(workspace.world.spawns.TpSpots:GetChildren()) do  
		table.insert(ZoneList, v.Name)
		placeDD:AddList(v.Name)
	end
end})
locationDD =TP_3:CreateDropdown({
	Title = "เลือกเกาะ [ อัพเดตอัตโนมัติ ]",
	List = locaList,
	Value = locaSelect,
	Multi = false,
	Callback = function(value)
		locaSelect = value
	end
})
TP_3:CreateButton({Title = "วาปไปยังเกาะ",Mode = 1,Callback = function()
	if locaSelect == "nil" then
		Notify("Error", "Please Select Zone")
	else
		local thePlace1 = workspace.active["OceanPOI's"]:FindFirstChild(locaSelect, true)
		tp(thePlace1.CFrame)
	end
end})
TP_3:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	locaList = {}
	locationDD:Clear()
	for _, v in pairs(workspace.active["OceanPOI's"]:GetChildren()) do  
		table.insert(locaList, v.Name)
		locationDD:AddList(v.Name)
	end
end})
bestzone = "The Depth - Bridge"
bestzonelist = {"The Depth - Bridge", "Forsaken - Rock", "Atlantean - Storm", "Ancient Isle - Waterfall", "Kraken Pool"}
TP_4:CreateDropdown({Title = "โซนที่ดีที่สุด",List = bestzonelist,Value = bestzone ,Multi = false,Callback = function(value)
	bestzone = value
end})
TP_4:CreateButton({Title = "วาปไปโวนที่ดีที่สุด", Mode = 1,Callback = function()
	if bestzone == "The Depth - Bridge" then
		tp(CFrame.new(940, -738, 1457))
	elseif bestzone == "Forsaken - Rock" then
		tp(CFrame.new(-3146, 136, 1434))
	elseif bestzone == "Atlantean - Storm" then
		tp(CFrame.new(-3658, 132, 784))
	elseif bestzone == "Ancient Isle - Waterfall" then
		tp(CFrame.new(5803, 135, 404))
	elseif bestzone == "Kraken Pool" then
		tp(CFrame.new(-4313, -996, 2057))
	else
		Notify("Error", "Please Select Zone ;-;", 5)
	end
end})
NPCDropdown =TP_2:CreateDropdown({
	Title = "เลือกผู้คน [ อัพเดตอัตโนมัติ ]",
	List = NPCList,
	Value = npc,
	Multi = false,
	Callback = function(value)
		npc = value
	end
})
TP_2:CreateButton({Title = "วาปไปยังผู้คน",Mode = 1,Callback = function()
	if npc == "nil" then
		Notify("Error", "Please Select Zone")
	else
		local thePlace = workspace:FindFirstChild(npc, true)
		if thePlace and thePlace:IsA("Model") then
			if thePlace.PrimaryPart then
				tp(thePlace:GetPivot())
			end
		else
			Notify("Error", "Could not find the NPC.")
		end
	end
end})
TP_2:CreateButton({Title = "รีเฟรช",Mode = 1,Callback = function()
	NPCList = {}
	NPCDropdown:Clear()
	for _, v in pairs(workspace.world.npcs:GetChildren()) do  
		table.insert(NPCList, v.Name)
		NPCDropdown:AddList(v.Name)
	end
end})
-------------------------------------------------------------------------------------------------------------------------------
_Webhook = _Window:CreateTab({Title = "เว็บฮุกและอื่นๆ",Desc = "การส่งข้อมูลและอื่นๆ",Icon = 139021543288287})
Webhook_1 = _Webhook:CreateSection({Title = "การตั้งค่าเว็บฮุก",Side = "Left"})
Webhook_2=_Webhook:CreateSection({Title = "การแสกงผล",Side = "Right"})
Webhook_1:CreateTextbox({Title = "URL เว็บฮุก",Desc = "ใส่ URL เว็บฮุกของคุณ",ClearTextOnFocus = true,Value = _G.Config.web,Callback = function(value)
	_G.Config.web=value
	SaveSettings()
end})
Webhook_1:CreateSlider({
	Title = "เวลา",
	Desc = "เวลาที่จะส่งอีกครั้ง",
	Min = 10,
	Max = 500,
	Value = _G.Config.DelaySendWeb,
	Callback = function(value)
		_G.Config.DelaySendWeb = value
		SaveSettings()
	end
})
Webhook_1:CreateImage({
	Title = "ส่งเว็บฮุก",
	Desc = "โปรดใส่ URL ก่อนทุกครั้ง !",
	Icon = 128185233852701,
	Toggle = true,
	Value =  _G.Config.Webhook,
	Callback = function(value)
		_G.Config.Webhook = value
		SaveSettings()
	end})
task.spawn(function()
	while task.wait(_G.DelaySendWeb) do
		if _G.Config.Webhook then
			local success = sendwebhook(_G.Config.web, {
				["content"] = "",
				["embeds"] = {
					{
						["id"] = 661605297,
						["title"] = "Fisch",
						["description"] = "ผู้เล่น : "..LocalPlayer.Name..
							"\nเงิน : "..PlayerGui.hud.safezone.coins.Text..
							"\nเวลา : "..PlayerGui.hud.safezone.lvl.Text,
						["color"] = 16777215,
						["fields"] = {},
						["thumbnail"] = {
							["url"] = "https://cdn.discordapp.com/attachments/1221930856394919937/1336015603420364880/20250131_095628_0000.png"
						},
						["footer"] = {
							["text"] = "Fetching Notify",
							["icon_url"] = "https://cdn.discordapp.com/attachments/1221930856394919937/1336015603420364880/20250131_095628_0000.png"
						}
					}
				}
			})
			if success then
				Notify("Success", "Sending WebHook Success", 3)
			else
				Notify("Error", "Unknow Error", 3)
			end
		end
	end
end)
-------------------------------------------------------------------------------------------------------------------------------
Webhook_2:CreateButton({Title = "ทำให้กราฟฟิกสบายตา",Mode = 1,Callback = function()
	while task.wait() do
		for _, v in pairs(game.Lighting:GetChildren()) do
			if v then
				v.Parent = game.ReplicatedStorage
				game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
			end
		end
	end
end})
Webhook_2:CreateButton({Title = "แก้แลค",Mode = 1,Callback = function()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	game.Lighting.GlobalShadows = false
	game.Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game.Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end})
Webhook_2:CreateButton({Title = "ลบเอฟเฟคค์พายุใน Grand Reef",Mode = 1,Callback = function()
	pcall(function()
		workspace.StormEffect:Destroy()
	end)
end})
Webhook_2:CreateButton({Title = "รับเลเวลฟรี",Desc="ปลดล็อกทุกสถานที่เพื่อรับ",Mode = 2,Callback = function()
	for _, v in ipairs(workspace.world.spawns.TpSpots:GetChildren()) do
		if v:IsA("BasePart") then
			tp(v.CFrame)
			task.wait(1.5)
		end
	end
end})
Codes = {
	"NorthernExpedition",
	"RFG",
	"NewYear",
	"GOLDENTIDE",
	"ATLANTEANSTORM",
	"SORRYGUYS",
	"CARBON",
	"THEKRAKEN"
}
Webhook_2:CreateButton({Title = "โค้ด",Desc="ใส่โค้ดทั้งหมด",Mode = 2,Callback = function()
	for i,v in pairs(Codes) do
		local args = {
			[1] = v
		}
		game:GetService("ReplicatedStorage").events.runcode:FireServer(unpack(args))
		task.wait(0.5)
	end
end})
Webhook_2:CreateButton({Title = "ลบไฟล์ตั้งค่า",Mode = 1,Callback = function()
	if isfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json") then
		delfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json")
		Notify("Success", "Config has Delete.")
	else
		Notify("Warning", "Config not found.")
	end
end})
Webhook_2:CreateToggle({Title = "รันสคริปต์อัตโนมัติ",Value = _G.Config.AutoExc,Callback = function(value)
	_G.Config.AutoExc = value
	SaveSettings()
end})
-------------------------------------------------------------------------------------------------------------------------------
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Fetching's Script",
	Text = "ต้องการลบการตั้งค่ารึป่าว",
	Duration = 20,
	Icon = "rbxassetid://128185233852701",
	Button1 = "ยืนยัน",
	Button2 = "ยกเลิก",
	Callback = function(button)
		if button == "ยืนยัน" then
			if isfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json") then
				delfile("Fetching'Script/Config" .. LocalPlayer.Name .. ".json")
				Notify("Success", "Config has Delete.", 5)
			else
				Notify("Warning", "Config not found.", 5)
			end
		elseif button == "ยกเลิก" then
			print('Cancel')
		end
	end
})
print("All is Success: " ..LocalPlayer.Name)
for _, v in pairs(workspace.zones.fishing:GetChildren()) do
	if table.find(EventsZone, v.Name) then 
		local success = sendwebhook("https://discord.com/api/webhooks/1337824733479305336/xZH3PzDgXkKlf2RmuOzijxSFPfAGlCGDjFMWEWlehzie8roUyIsoyXmDt-9geWywWjoR", {
			["content"] = "",
			["embeds"] = {
				{
					["id"] = 661605297,
					["title"] = "Events",
					["description"] = v.Name,
					["color"] = 16777215,
					["fields"] = {},
					["thumbnail"] = {
						["url"] = "https://cdn.discordapp.com/attachments/1221930856394919937/1336015603420364880/20250131_095628_0000.png"
					},
					["footer"] = {
						["text"] = "Fetching Notify",
						["icon_url"] = "https://cdn.discordapp.com/attachments/1221930856394919937/1336015603420364880/20250131_095628_0000.png"
					}
				}
			}
		})
		if success then
			print("Sender has blocked.")
			print("Sender has fuck your mom")
		else
			print("encoding")
		end
	end
end
