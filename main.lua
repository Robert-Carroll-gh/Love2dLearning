love.draw = function()
	love.graphics.setColor( 0, 255, 255 )
	love.graphics.circle( "fill", 400, 300, 25 )
end

love.joystick = function()
	down = love.joystick.isDown( joystick, button )