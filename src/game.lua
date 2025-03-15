require("lib.index")

function love.load()
  sprite = Sprite.new(50, 50, "data/img/attack4.png", 4, 2)
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
  sprite:draw(1, 1, angle)
  sprite.x = sprite.x + 14
  sprite:draw(2, 2, angle)
  sprite.x = sprite.x - 14
end
