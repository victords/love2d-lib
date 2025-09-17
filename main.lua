require("lib.index")

function love.load()
  Window.init()
  Physics.gravity = Vector.new(0, 10)
  Physics.setEngine("love")

  objs = {
    Block.new(0, 600, 600, 40),
    Block.new(600, 0, 40, 600),
    Ramp.new(520, 520, 80, 80, true),
  }

  man = GameObject.new(560, 0, 56, 56, "attack4", nil, 4, 2)
end

function love.update(dt)
  Physics.update(dt)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)
  for _, o in ipairs(objs) do
    love.graphics.polygon("fill", o:points())
  end
  man:draw(4, 4)
end
