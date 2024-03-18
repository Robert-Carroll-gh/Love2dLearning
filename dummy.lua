dummy = {
    x = 450,
    y = 300,
    width = 120,
    height = 60,
    hp = 10,

    draw = function()

        love.graphics.setColor(1, 1, 1)

        love.graphics.rectangle("fill", dummy.x, dummy.y, dummy.width, dummy.height)

        local hpx = dummy.x + 50
        local hpy = dummy.y - 20

        love.graphics.print(dummy.hp, hpx, hpy)
    end
}
--[[
dummyIsAlive = dummy.hp > 0

if dummyIsAlive = true then
draw.dummy
end
--]]
