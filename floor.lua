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