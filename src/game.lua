require("lib.index")

function love.load()
  Image.setRetro()
  sprite = GameObject.new(10, 10, 6, 10, "data/img/attack4.png", Vector.new(-6, -4), 4, 2)
end

function love.update(dt)

end

function love.draw()
  sprite:draw(2, 2, nil, "horiz")
  love.graphics.rectangle("fill", sprite.x, sprite.y, sprite.w * 2, sprite.h * 2)
  sprite.y = sprite.y + 28
  sprite:draw(2, 2)
  love.graphics.rectangle("fill", sprite.x, sprite.y, sprite.w * 2, sprite.h * 2)
  sprite.y = sprite.y - 28
end
