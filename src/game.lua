require("lib.index")

function love.load()
  game_object = GameObject.new(10, 0, 14, 14, "data/img/attack4.png", nil, 4, 2)
  elevator = GameObject.new(100, 590, 112, 14, "data/img/attack2.png")
  elevator.passable = true
  elevator_path = {
    Vector.new(elevator.x, elevator.y),
    Vector.new(100, 490),
    Vector.new(250, 470)
  }
  elevator_passengers = { game_object }

  obstacles = {
    Block.new(0, 0, 10, 600),
    Block.new(790, 0, 10, 600),
    Block.new(0, 590, 800, 10),
    Block.new(400, 550, 100, 20),
    elevator
  }
  ramps = {
    Ramp.new(10, 500, 60, 90, false),
    Ramp.new(690, 540, 100, 50, true)
  }

  free_moving_object = GameObject.new(400, 400, 14, 14, "data/img/attack4.png", nil, 4, 2)
  free_moving_object_path = {
    Vector.new(free_moving_object.x, free_moving_object.y),
    Vector.new(600, 450),
    Vector.new(470, 550)
  }
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

  elevator:cycle(elevator_path, 4, elevator_passengers, obstacles, ramps)
  game_object:move(forces, obstacles, ramps)
  free_moving_object:cycle(free_moving_object_path, 2.8)
end

function love.draw()
  for _, b in ipairs(obstacles) do
    love.graphics.rectangle("fill", b.x, b.y, b.w, b.h)
  end
  for _, r in ipairs(ramps) do
    love.graphics.polygon("fill", r.x, r.y + r.h, r.x + r.w, r.y + r.h, r.left and r.x + r.w or r.x, r.y)
  end
  elevator:draw()
  game_object:draw()
  free_moving_object:draw()
end
