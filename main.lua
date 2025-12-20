require("lib.index")

function love.load()
  Window.init()

  local font = Res.font("font", 20)
  pb = ProgressBar.new(20, 20, {bg_img_path = "textField", fg_img_path = "panel", max_value = 4, value = 2, fg_margin_x = 6, fg_margin_y = 6, font = font, format = "%"})
end

function love.update(dt)
  KB.update()

  if KB.pressed("up") then pb:increase(2) end
  if KB.pressed("down") then pb:decrease() end
end

function love.draw()
  Window.draw(function ()
    pb:draw()
  end)
end
