
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
end

--[[dummyIsAlive = dummy.hp > 0
	
if dummyIsAlive = true then
	draw.dummy
end
]]--
love.keypressed = function(key, scancode, isrepeat)
	if key == "j" and not isrepeat then
		dummy.hp = dummy.hp - 1
	
	end
end

love.update = function()
	--if dummyIsAlive = false then
	
end