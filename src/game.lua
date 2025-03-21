require("lib.index")

function love.load()
  font = Font.new("data/font/font.ttf", 24)
end

function love.update(dt)
end

function love.draw()
  font:draw_text_rel("top-left aligned", 10, 10, 0, 0)
  font:draw_text_rel("centered", 400, 300, 0.5, 0.5)
  font:draw_text_rel("bottom-right aligned", 790, 590, 1, 1)
end
