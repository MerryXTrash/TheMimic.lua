Library=loadstring(game:HttpGet("https://raw.githubusercontent.com/G1GX/Fetching/refs/heads/main/Master/Fetch%25ngUI"))()
_Window=Library:CreateWindow({Title = "",Logo = 128185233852701})
a1 = _Window:CreateTab({Title = "ไอเท็ม",Desc = "อัตโนมัติ",Icon = 89149352371179})
a = a1:CreateSection({Title = "ร้านค้า",Side = "Left"})
_G.SavePosition = {}
_G.SelectPosition = nil
_G.Name = "ตำแหน่งใหม่"

_G.SavePosition = {}
_G.SelectPosition = nil
_G.Name = _G.Name or "ตำแหน่งใหม่" -- แก้ให้มีค่าเริ่มต้นเสมอ

-- ฟังก์ชันบันทึกตำแหน่งปัจจุบัน
a:CreateTextbox({
	Title = "ตั้งชื่อตำแหน่ง",
	Desc = "ใส่ชื่อตำแหน่งที่ต้องการบันทึก",
	ClearTextOnFocus = true,
	Value = tostring(_G.Name), -- ป้องกัน nil
	Callback = function(value)
		_G.Name = value or "ตำแหน่งไม่มีชื่อ" -- ป้องกันช่องว่าง
	end
})

positionDropdown = a:CreateDropdown({
	Title = "เลือกตำแหน่งที่บันทึกไว้",
	List = {}, -- อัปเดตภายหลัง
	Value = _G.SelectPosition,
	Multi = false,
	Callback = function(value)
		_G.SelectPosition = value
	end
})

-- ปุ่มบันทึกตำแหน่ง
a:CreateButton({
	Title = "📌 บันทึกตำแหน่งปัจจุบัน",
	Mode = 1,
	Callback = function()
		local player = game.Players.LocalPlayer
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local pos = player.Character.HumanoidRootPart.CFrame
			_G.SavePosition[_G.Name] = pos
			positionDropdown:AddList({_G.Name})
			print("✅ บันทึกตำแหน่ง: " .. _G.Name)
		end
	end
})

-- ปุ่มวาร์ปไปตำแหน่งที่เลือก
a:CreateButton({
	Title = "⚡ วาร์ปไปตำแหน่งที่เลือก",
	Mode = 1,
	Callback = function()
		local player = game.Players.LocalPlayer
		if _G.SelectPosition and _G.SavePosition[_G.SelectPosition] then
			player.Character.HumanoidRootPart.CFrame = _G.SavePosition[_G.SelectPosition]
			print("⚡ วาร์ปไปที่: " .. _G.SelectPosition)
		else
			print("❌ กรุณาเลือกตำแหน่งก่อน")
		end
	end
})

-- ปุ่มลบตำแหน่ง
a:CreateButton({
	Title = "🗑️ ลบตำแหน่งที่เลือก",
	Mode = 1,
	Callback = function()
		if _G.SelectPosition and _G.SavePosition[_G.SelectPosition] then
			_G.SavePosition[_G.SelectPosition] = nil
			positionDropdown:Clear(_G.SelectPosition)
			_G.SelectPosition = nil
			print("🗑️ ลบตำแหน่งเรียบร้อย")
		else
			print("❌ กรุณาเลือกตำแหน่งที่ต้องการลบ")
		end
	end
})
