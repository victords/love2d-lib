require("lib.index")

function love.load()
  game_object = GameObject.new(10, 0, 14, 14, "data/img/attack4.png", nil, 4, 2)

  blocks = {
    Block.new(0, 0, 10, 600),
    Block.new(790, 0, 10, 600),
    Block.new(0, 590, 800, 10),
    Block.new(400, 550, 100, 20)
  }
  ramps = {}
end

function love.update(dt)
  KB.update()

  local forces = Vector.new()
  if KB.down("left") then
    forces.x = -0.1
  elseif game_object.speed.x < 0 then
    forces.x = -0.1 * game_object.speed.x
  end
  if KB.down("right") then
    forces.x = 0.1
  elseif game_object.speed.x > 0 then
    forces.x = -0.1 * game_object.speed.x
  end
  if KB.pressed("up") and game_object.bottom then
    forces.y = -15
  end

  game_object:move(forces, blocks, ramps)
end

function love.draw()
  for _, b in ipairs(blocks) do
    love.graphics.rectangle("fill", b.x, b.y, b.w, b.h)
  end
  game_object:draw()
end
