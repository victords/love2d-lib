require("lib.index")

function love.load()
  Window.init()
  Physics.gravity = Vector.new(0, 0)
  Physics.setEngine("love")

  man = GameObject.new(933, 401, 56, 56, "attack4", nil, 4, 2, {fixed_rotation = true})
  points = {
    Vector.new(0, 0),
    Vector.new(800, 0),
    Vector.new(400, 300)
  }
end

function love.update(dt)
  KB.update()
  Physics.update(dt)

  man:cycle(points, 600, 10)
end

function love.draw()
  man:draw_shape({1, 0, 0})
end
