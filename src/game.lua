require("lib.index")

function love.load()
  Image.setRetro()
  sprite = Sprite.new(10, 10, "data/img/attack4.png", 4, 2)
  go = GameObject.new(10, 50, 12, 20, "data/img/attack4.png", Vector.new(-6, -4), 4, 2)
end

function love.update(dt)

end

function love.draw()
  sprite:draw(2, 2, {0.3, 1, 0.3})
  go:draw(2, 2, {1, 0.3, 0.3}, nil, "horiz")
  love.graphics.rectangle("fill", go.x, go.y, go.w, go.h)
end
