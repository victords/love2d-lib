Font = {}
Font.__index = Font

function Font.new(path, size)
  local self = setmetatable({}, Font)
  self.source = love.graphics.newFont(path, size)
  self.height = self.source:getHeight()
  return self
end

function Font:write(text, x, y, color, scale_x, scale_y)
  if love.graphics.getFont() ~= self.source then
    love.graphics.setFont(self.source)
  end
  if color then
    love.graphics.setColor(color[1], color[2], color[3], color[4])
  end
  love.graphics.print(text, x, y, nil, scale_x, scale_y)
  if color then love.graphics.setColor(255, 255, 255) end
end

function Font:text_width(text)
  return self.source:getWidth(text)
end
