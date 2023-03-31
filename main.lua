local f00lskidd = {
    SchemeColor = Color3.fromRGB(10,143,0),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("f00lskidd gui", f00lskidd)
local Tab = Window:NewTab("Pr0nK")
local Section = Tab:NewSection("Scripts")
Section:NewButton("Ant1 AFK", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/antiafk.lua")()
end)
Section:NewButton("Rem0t3 Spy", "none", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)
Section:NewButton("f00lye3t gui", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/f00lye3t%20gui.lua", true))() 
end)
Section:NewButton("Dark D3x v3", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)
Section:NewButton("Infinite Yi3ld", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() 
end)
Section:NewButton("Dance Fl1ng (R6)", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/dance%20fling.lua", true))() 
end)
Section:NewButton("S3x (R6)", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/tr0ll%20xd.lua"))()
end)
Section:NewButton("Invis Fling (R6)", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/invisfling.lua"))()
end)
Section:NewButton("Animation Changer", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FantZarYT/f00lskidd-gui/main/Anim%20Changer.lua"))()
end)
Section:NewButton("Midi Player (For Piano)", "none", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/MidiPlayer/main/package.lua"))()
end)
Section:NewButton("Lag Server", "none", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/yGqP4zFa"))()
end)
local Tab = Window:NewTab("All Gam3s")
local Section = Tab:NewSection("External")
Section:NewButton("ESP + Aim Gui", "none", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
end)
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Thank You!")
local Section = Tab:NewSection("Source By Kavo UI")
local Section = Tab:NewSection("Script's Founded By 3181#6962")
local Section = Tab:NewSection("For Idea this Script By FORGET#8726")
local Sectiom = Tab:NewSection("Thank you for using this script")
local Sectiom = Tab:NewSection("                          :D")
local Tab = Window:NewTab("")
local Section = Tab:NewSection("you found secret )")
Section:NewButton("free fe script (check console)", "none", function()
    print("https://www.youtube.com/watch?v=xvFZjo5PgG0")
end)







wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK"ca.TextColor3=Color3.new(0,0,0)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by 3181#6962"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text=" Started !"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text=" Roblox tried to kick you but desperate ;D "wait(2)ab.Text="Script started again"end)
