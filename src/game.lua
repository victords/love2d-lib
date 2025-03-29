require("lib.index")

function love.load()
  -- debug.debug()
  keys = {"gp1_left", "gp1_right", "gp1_up", "gp1_down", "gp1_a", "gp1_b", "gp1_x", "gp1_y", "gp1_start", "gp1_back", "gp1_leftshoulder", "gp1_rightshoulder", "gp1_lt", "gp1_rt"}
end

function love.update(dt)
  KB.update()
  for _, v in ipairs(keys) do
    if KB.down(v) then print(v) end
  end
end

function love.draw()

end
