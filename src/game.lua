require("lib.index")

function love.load()
  -- love.graphics.setDefaultFilter("nearest", "nearest")
  font = Font.new("data/font/font.ttf")
  button = ToggleButton.new(10, 10, { params = 5, anchor = "southeast", img_path = "data/img/button1.png" }, function(val, arg) print(val, arg) end)
end

function love.update(dt)
  Mouse.update()
  KB.update()
  button:update()

  if KB.pressed("a") then button:set_enabled(not button.enabled) end
end

function love.draw()
  button:draw()
end
