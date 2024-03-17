love.graphics.circle( "fill", 300, 100, 50 )

function love.load()
   Player = circle
   x = 50
   y = 50
end

function love.draw()
   love.graphics.draw(circle, x, y)
end