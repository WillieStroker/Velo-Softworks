local ownerId = game.CreatorId
local players = game:GetService("Players")

for _, v in pairs(players:GetChildren()) do
  if v.UserId == ownerId then
    warn("Owner is in game, be careful!")
  end
end

game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        print("got the owner!")
    end
end)
