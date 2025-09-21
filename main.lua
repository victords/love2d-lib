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

  man = GameObject.new(544, 0, 56, 56, "attack4", nil, 4, 2, {fixed_rotation = true})
end

function love.update(dt)
  KB.update()
  Physics.update(dt)

  print(tostring(man.left) .. "|" .. tostring(man.right) .. "|" .. tostring(man.top) .. "|" .. tostring(man.bottom))

  local forces = Vector.new()
  if KB.down("left") then forces.x = -120 end
  if KB.down("right") then forces.x = 120 end
  if KB.down("up") then
    if man.bottom then
      man.body:applyLinearImpulse(0, -500)
    end
  end

  man:move(forces, objs)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)
  for _, o in ipairs(objs) do
    love.graphics.polygon("fill", o:points())
  end
  man:draw_shape({1, 0, 0})
end
