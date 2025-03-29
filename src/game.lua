require("lib.index")

function love.load()
  Image.setRetro()
  sprite = Sprite.new(10, 10, "data/img/attack4.png", 4, 2)
end

function love.update(dt)
  sprite:animate_once({1, 2, 3, 4, 5, 6, 7, 8, 1}, 8, function() print("done") end)
end

function love.draw()
  sprite:draw(2, 2)
end
