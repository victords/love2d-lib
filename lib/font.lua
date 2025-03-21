Font = {}
Font.__index = Font

function Font.new(path, size)
  local self = setmetatable({}, Font)
  self.source = love.graphics.newFont(path, size)
  self.height = self.source:getHeight()
  return self
end

function Font:draw_text(text, x, y, color, scale)
  self:draw_text_rel(text, x, y, 0, 0, color, scale)
end

function Font:draw_text_rel(text, x, y, rel_x, rel_y, color, scale)
  scale = scale or 1
  local width = rel_x ~= 0 and scale * self:text_width(text)
  if rel_x == 0.5 then
    x = utils.round(x - width / 2)
  elseif rel_x == 1 then
    x = utils.round(x - width)
  end
  if rel_y == 0.5 then
    y = utils.round(y - self.height / 2)
  elseif rel_x == 1 then
    y = utils.round(y - self.height)
  end
  if color then love.graphics.setColor(color) end
  love.graphics.print(text, self.source, x, y, nil, scale, scale)
  if color then love.graphics.setColor(1, 1, 1) end
end

function Font:text_width(text)
  return self.source:getWidth(text)
end
