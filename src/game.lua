require("lib.index")

function love.load()
  sprite = GameObject.new(0, 0, 5, 8, "data/img/attack4.png", Vector.new(-7, -3), 4, 2)
  angle = 0
  KB.held_delay = 120
end

function love.update(dt)
  sprite:animate({ 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7 }, 7)
  angle = angle + 0.05

  KB.update()
  if KB.down("left") then
    sprite.x = sprite.x - 3
  elseif KB.pressed("right") then
    sprite.x = sprite.x + 3
  elseif KB.released("up") then
    sprite.y = sprite.y - 3
  elseif KB.held("down") then
    sprite.y = sprite.y + 3
  end
end

function love.draw()
  love.graphics.setColor(255, 0, 0)
  love.graphics.rectangle("fill", 0, 0, 100, 100)
  love.graphics.setColor(0, 0, 255)
  love.graphics.rectangle("fill", 0, 0, 50, 50)
  love.graphics.setColor(255, 255, 255)
  sprite:draw(2, 2, angle)
end
