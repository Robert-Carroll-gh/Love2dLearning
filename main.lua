

love.keypressed = function()
end

player = {
	x = 400,
	y = 300,
	color = { 0, 255, 255},
	radius = 25,
	speedY = 0,
	jumpSpeed
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





dummy = {
	x = 450,
	y = 300,
	width = 120,
	height = 60,
	hp = 10,
	
	draw = function()
		
		love.graphics.setColor(100, 100, 100)
	
		love.graphics.rectangle("fill", dummy.x, dummy.y, dummy.width, dummy.height)
	
		local hpx = dummy.x + 50
		local hpy = dummy.y - 20
	
		love.graphics.print(dummy.hp, hpx, hpy)
	end
}
--[[dummyIsAlive = dummy.hp > 0
	
if dummyIsAlive = true then
	draw.dummy
end
]]--

floor = {
	x1 = 0,
	y1 = 370,
	x2 = 800,
	y2 = 370,
	
	draw = function()
		love.graphics.setColor(100, 100, 100)
	
		love.graphics.setLineWidth(5)
	
		love.graphics.line(floor.x1, floor.y1, floor.x2, floor.y2)

	end
}

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


