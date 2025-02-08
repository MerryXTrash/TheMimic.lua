_G.SavePosition = {}
_G.SelectPosition = "nil"
Library=loadstring(game:HttpGet("https://raw.githubusercontent.com/G1GX/Fetching/refs/heads/main/Master/Fetch%25ngUI"))()
_Window=Library:CreateWindow({Title = "",Logo = 128185233852701})
a1 = _Window:CreateTab({Title = "ไอเท็ม",Desc = "อัตโนมัติ",Icon = 89149352371179})
a = a1:CreateSection({Title = "ร้านค้า",Side = "Left"})
local idk = ""
a:CreateTextbox({
	Title = "ชื่อ",
	Desc = "ใส่ชื่อตำแหน่ง",
	ClearTextOnFocus = true,
	Value = idk,
	Callback = function(value)
		idk = value
	end
})

-- ฟังก์ชันสร้าง Dropdown สำหรับเลือกตำแหน่งที่เซฟไว้
local pap =a:CreateDropdown({
	Title = "เลือกตำแหน่งที่เซฟไว้",
	List = {},
	Value = _G.SelectPosition,
	Multi = false,
	Callback = function(value)
		_G.SelectPosition = value
	end
})

-- ฟังก์ชันสำหรับบันทึกตำแหน่งปัจจุบัน
function SavePosition()
	if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
		local position = game.Players.LocalPlayer.HumanoidRootPart.CFrame
		table.insert(_G.SavePosition, {name = idk, position = position})
		print("ตำแหน่งถูกบันทึก:", idk, position)
	end
end

a:CreateButton({
	Title = "บันทึกตำแหน่งปัจจุบัน",
	Mode = 1,
	Callback = function()
		SavePosition()
	end
})

a:CreateButton({
	Title = "วาปไปหาตำแหน่งที่เลือก",
	Mode = 1,
	Callback = function()
		for _, posData in ipairs(_G.SavePosition) do
			if posData.name == _G.SelectPosition then
				local character = game.Players.LocalPlayer.Character
				if character then
					character.HumanoidRootPart.CFrame = posData.position
					print("วาร์ปไปที่ตำแหน่ง:", posData.name)
				end
				break
			end
		end
	end
})

a:CreateButton({
	Title = "ลบตำแหน่งที่เลือก",
	Mode = 1,
	Callback = function()
		for i, posData in ipairs(_G.SavePosition) do
			if posData.name == _G.SelectPosition then
				table.remove(_G.SavePosition, i)
				pap:Clear(_G.SelectPosition)
				_G.SelectPosition = ""
				print("ลบตำแหน่งที่เลือกเรียบร้อย")
				break
			end
		end
	end
})
