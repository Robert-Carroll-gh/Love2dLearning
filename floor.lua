floor = {
	y = 550,
}
floor.draw = function()
	love.graphics.setColor(1, 1, 1)
	love.graphics.setLineWidth(5)
	love.graphics.line(0, floor.y, 800, floor.y)
end

-- Takes a game object with a y value and a height or radius, and sets it on the floor
floor.allign = function(gameObject)

	--testing for a valid gameObject
	local height --distance from draw coordinate to floor
	if gameObject.height then
		height = gameObject.height
	elseif gameObject.radius then
		height = gameObject.radius
	end
	if gameObject.y == nil  or height == nil then
		error("Expected a game object with a y value and a height or radius")
	end
	
	-- Actually moves game object to the floor
	gameObject.y = floor.y - height
end