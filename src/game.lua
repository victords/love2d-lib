require("lib.index")

function love.load()
  sprite = Sprite.new(50, 50, "data/img/attack4.png", 4, 2)
  angle = 0
end

function love.update(dt)
  sprite:animate({ 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7 }, 7)
  angle = angle + 0.05

  Mouse.update()
  if Mouse.released("left") then
    sprite.x = Mouse.x
    sprite.y = Mouse.y
  end

  if Mouse.pressed("right") then print("right") end
end

function love.draw()
  sprite:draw(1, 1, angle)
  sprite.x = sprite.x + 14
  sprite:draw(2, 2, angle)
  sprite.x = sprite.x - 14
end
