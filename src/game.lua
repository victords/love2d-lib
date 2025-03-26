require("lib.index")

function love.load()
  -- love.graphics.setDefaultFilter("nearest", "nearest")
  font = Font.new("data/font/font.ttf")
  button = Button.new(10, 10, { font = font, text = "Button test", params = 5, anchor = "southeast" }, function(arg) print(arg) end)
end

function love.update(dt)
  Mouse.update()
  KB.update()
  button:update()

  if KB.pressed("a") then button:set_enabled(not button.enabled) end
end

function love.draw()
  button:draw({0.6, 0.6, 1})
end
