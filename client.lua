local socket = require("socket")
local address, port = "localhost", 12345
client = socket.udp()
client:setTimeout(0)
client:setpeername(address, port)

client.sendRate = 0.05

playerActions = love.thread.getChannel("playerActions")
serverState = love.thread.getChannel("serverState")

local player = {
    deltaX = 0,
    deltaY = 0,
}
