require("lib.index")

function love.load()
  sprite = Sprite.new(10, 10, "data/img/attack4.png", 4, 2)
  image = Image.new("data/img/attack4.png", 14, 14, 14, 14)
  angle = 0
end

function love.update(dt)
  angle = angle + 1
end

function love.draw()
  sprite:draw(2, 2.5, 90)
  image:draw(50, 10, 3, 2, angle)
end
