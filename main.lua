require("lib.index")

function love.load()
  Window.init()
  Physics.gravity = Vector.new(0, 100)
  Physics.setEngine("love")

  objs = {
    Block.new(0, 600, 600, 40),
    Block.new(600, 0, 40, 600),
    Block.new(100, 400, 100, 40, true),
    Ramp.new(520, 520, 80, 80, true),
  }
  other_obj = Block.new(550, 100, 50, 50)

  man = GameObject.new(544, 0, 56, 56, "attack4", nil, 4, 2, {fixed_rotation = true})
end

function love.update(dt)
  KB.update()

  local forces = Vector.new()
  if KB.down("left") then forces.x = -120 end
  if KB.down("right") then forces.x = 120 end
  if KB.down("up") then forces.y = -1000 end
  -- if KB.down("down") then speed.y = 120 end

  man:move(forces, objs)
  Physics.update(dt)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)
  for _, o in ipairs(objs) do
    love.graphics.polygon("fill", o:points())
  end
  love.graphics.polygon("fill", other_obj:points())
  man:draw_shape({1, 0, 0})
end
