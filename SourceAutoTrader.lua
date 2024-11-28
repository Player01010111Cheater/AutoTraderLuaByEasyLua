local whatugive = "None"
local player2 = game.Players.LocalPlayer
local whatothergiveforu = "None"
if whatugive == "Gas" then
    whatugive = "GasFruit"
 elseif whatugive == "Gold" then
    whatugive = "GoldFruit"
 elseif whatugive == "Magnet" then
    whatugive = "MagnetFruit"
 elseif whatugive == "Spirit" then
    whatugive = "SpiritFruit"
 elseif whatugive == "Quake" then
    whatugive = "QuakeFruit"
 elseif whatugive == "Snow" then
    whatugive = "SnowFruit"
 elseif whatugive == "Light" then
    whatugive = "LightFruit"
 elseif whatugive == "Ice" then
    whatugive = "IceFruit"
elseif whatugive == "Magma" then
    whatugive = "MagmaFruit"
elseif whatugive == "Flame" then
    whatugive = "FlameFruit"
elseif whatugive == "Rumble" then
    whatugive = "RumbleFruit"
elseif whatugive == "Gate" then
    whatugive = "GateFruit"
elseif whatugive == "Dragon" then
    whatugive = "DragonFruit"
elseif whatugive == "Toy" then
    whatugive = "ToyFruit"
elseif whatugive == "Phoenix" then
    whatugive = "PhoenixFruit"
elseif whatugive == "Dough" then
    whatugive = "DoughFruit"
end
if whatothergiveforu == "Gas" then
    whatothergiveforu = "GasFruit"
 elseif whatothergiveforu == "Gold" then
    whatothergiveforu = "GoldFruit"
 elseif whatothergiveforu == "Magnet" then
    whatothergiveforu = "MagnetFruit"
 elseif whatothergiveforu == "Spirit" then
    whatothergiveforu = "SpiritFruit"
 elseif whatothergiveforu == "Quake" then
    whatothergiveforu = "QuakeFruit"
 elseif whatothergiveforu == "Snow" then
    whatothergiveforu = "SnowFruit"
 elseif whatothergiveforu == "Light" then
    whatothergiveforu = "LightFruit"
 elseif whatothergiveforu == "Ice" then
    whatothergiveforu = "IceFruit"
elseif whatothergiveforu == "Magma" then
    whatothergiveforu = "MagmaFruit"
elseif whatothergiveforu == "Flame" then
    whatothergiveforu = "FlameFruit"
elseif whatothergiveforu == "Rumble" then
    whatothergiveforu = "RumbleFruit"
elseif whatothergiveforu == "Gate" then
    whatothergiveforu = "GateFruit"
elseif whatothergiveforu == "Dragon" then
    whatothergiveforu = "DragonFruit"
elseif whatothergiveforu == "Toy" then
    whatothergiveforu = "ToyFruit"
elseif whatothergiveforu == "Phoenix" then
    whatothergiveforu = "PhoenixFruit"
elseif whatothergiveforu == "Dough" then
    whatothergiveforu = "DoughFruit"
end
while wait(2) do
    for _, v  in pairs(player2.PlayerGui:GetDescendants()) do
        if v.Name == "Player1_Offer" then
            for _, t in pairs(v:GetDescendants()) do
                if t.Name == whatugive then
                    for _, checkfruit in pairs(player2.PlayerGui:GetDescendants()) do
                        if checkfruit.Name == "Player2_Offfer" then
                            for _, l in pairs(checkfruit:GetDescendants()) do
                                if l.Name == whatothergiveforu then
                                    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("Ready")
                                end
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("RemoveItem",{["ItemName"] = t})
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("PutItem",{["ItemName"] = whatugive,["Amt"] = "1",["Add"] = true})
                end
            end
        end
    end
end
