
player = {
	x = 400,
	y = 10,
	color = {255,0,0},
	size = 50,
}

love.update = function()
	if love.keyboard.isDown("down") then
		player.y = player.y + 5
	end
	if love.keyboard.isDown("up") then
		player.y = player.y - 5
	end
	if love.keyboard.isDown("left") then
		player.x = player.x - 5
	end
	if love.keyboard.isDown("right") then
		player.x = player.x + 5
	end
end

love.draw = function()
	love.graphics.setColor(player.color[1], player.color[2], player.color[3])
	
	love.graphics.circle("fill", player.x, player.y, player.size)
end
