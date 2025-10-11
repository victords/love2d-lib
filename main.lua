require("lib.index")

function love.load()
  Window.init()
  --Physics.gravity = Vector.new(0, 100)
  Physics.setEngine("love")

  man = GameObject.new(933, 401, 56, 56, "attack4", nil, 4, 2, {fixed_rotation = true})
  aim = Vector.new(0, 0)
end

function love.update(dt)
  KB.update()
  Physics.update(dt)

  man:move_free(aim, 600)
end

function love.draw()
  man:draw_shape({1, 0, 0})
end
