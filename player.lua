player = {
	x = 400,
	y = 300,
	color = { 0, 255, 255},
	radius = 25,
	speedY = 0,
	jumpSpeed,
}
player.update = function()
	if player.y < 405 then
		player.y = player.y + player.speedY
	end
	if love.keyboard.isDown("w") then
		--player.y = player.y - 5
	end
	if love.keyboard.isDown("a") then
		player.x = player.x - 5
	end
	if love.keyboard.isDown("d") then
		player.x = player.x + 5
	end
end
player.draw = function()
	love.graphics.setColor( player.color[1],  player.color[2], player.color[3] )
	love.graphics.circle( "fill", player.x, player.y, player.radius )
end
player.attack = function()
	
	local dummyCenterX = dummy.x + dummy.width / 2
	local distance = math.abs( dummyCenterX - player.x )
	local minDistance = player.radius + dummy.width / 2 
	
	if distance <= minDistance then
		dummy.hp = dummy.hp - 1 
	end
end

--[[
player.jump = function()
	if love.keypressed.isDown('w') then
        if player.jump then
	       player.speedY = player.jumpSpeed
            player.jump = false
    	end
    end
end
]]--