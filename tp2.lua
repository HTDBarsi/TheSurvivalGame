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

repeat task.wait(_G.time)
    if keys.W then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.LookVector*_G.speed,i/_G.dist)
        end
    elseif keys.S then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame-hum.CFrame.LookVector*_G.speed,i/_G.dist)
        end
    elseif keys.A then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame-hum.CFrame.RightVector*_G.speed,i/_G.dist)
        end
    elseif keys.D then
        for i = 1,_G.dist do task.wait()
            hum.CFrame = hum.CFrame:Lerp(hum.CFrame+hum.CFrame.RightVector*_G.speed,i/_G.dist)
        end
    end
until char.Humanoid.Health <= 0
