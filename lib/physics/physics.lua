Physics = {
  gravity = Vector.new(0, 1),
  min_speed = Vector.new(0.01, 0.01),
  ramp_contact_threshold = 4,
  ramp_slip_threshold = 1,
  ramp_slip_force = 1,
  engine = "minigl",
  setEngine = function(engine)
    if engine ~= "minigl" and engine ~= "love" then
      error("Unsupported physics engine '" .. engine .. "'")
    end

    Physics.engine = engine
    if engine == "love" then
      Physics.world = love.physics.newWorld(Physics.gravity.x, Physics.gravity.y)
    end
  end,
  update = function(dt)
    if Physics.engine == "minigl" then return end

    Physics.world:update(dt)
    for _, body in ipairs(Physics.world:getBodies()) do
      if body:getType() == "static" then
        body:setActive(false)
      end
    end
  end
}
