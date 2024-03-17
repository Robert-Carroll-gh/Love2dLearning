require("floor")
require("player")
require("dummy")

love.load = function()
	floor.allign(player)
	floor.allign(dummy)
end

love.draw = function()
	dummy.draw()
	floor.draw()
	player.draw()
end

love.update = function()
	player.update()
end


love.keypressed = function(key, scancode, isrepeat)
	if key == "j" and not isrepeat then
		player.attack()
	end
end


