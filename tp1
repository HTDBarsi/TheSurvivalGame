local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.HumanoidRootPart
local uis = game:GetService("UserInputService")

local keys = {
    W = false,
    A = false,
    S = false,
    D = false
}
uis.InputBegan:Connect(function(key,t)
    if not t then
        if keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] ~= nil then
            keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] = true
        end
    end
end)

uis.InputEnded:Connect(function(key,t)
    if not t then   
        if keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] ~= nil then
            keys[string.sub(tostring(key.KeyCode),#tostring(key.KeyCode))] = false
        end
    end
end)

repeat task.wait()
    if keys.W then
        hum.CFrame = hum.CFrame + hum.CFrame.LookVector * _G.speed
    elseif keys.S then
        hum.CFrame = hum.CFrame + hum.CFrame.LookVector * -_G.speed
    elseif keys.A then
        hum.CFrame = hum.CFrame + hum.CFrame.RightVector * -_G.speed
    elseif keys.D then
        hum.CFrame = hum.CFrame + hum.CFrame.RightVector * _G.speed
    end
until char.Humanoid.Health <= 0
