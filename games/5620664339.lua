local owner = game.CreatorId
local developers = {
  [154069155] = "plainsour",
  [74804286] = "KingBuggy002",
  [51789409] = "yanrr_002"
}

local players = game:GetService("Players")
local player = players.LocalPlayer

for _, v in pairs(players:GetChildren()) do
    if v.UserId == owner then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Warning",
            Text = "found owner in server, be careful!",
            Duration = 5
        })
    end
  
    for _2, v2 in next, developers do
        if v.UserId == _2 then
            warn("Found a developer in server, be careful! Developer:"..v2)
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == owner then
        game.StarterGui:SetCore("SendNotification", {
            Text = "Warning",
            Content = "Owner joined server, be careful!",
            Icon = "",
            Duration = 5
        })
    end
end)
