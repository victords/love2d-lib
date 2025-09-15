require("lib.index")

function love.load()
  Window.init()
  Physics.setEngine("love")

  objs = {
    Block.new(0, 600, 600, 40),
    Block.new(600, 0, 40, 600),
    Ramp.new(520, 520, 80, 80, true),
  }
end

function love.update(dt)
  Physics.update(dt)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)
  for _, o in ipairs(objs) do
    love.graphics.polygon("fill", o:points())
  end
end
