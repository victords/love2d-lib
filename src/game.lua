require("../lib/sprite")

function love.load()
  sprite = Sprite.new(50, 50, "data/img/attack4.png", 4, 2)
end

function love.update(dt)
  sprite:animate({ 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7 }, 10)
end

function love.draw()
  sprite:draw()
end
