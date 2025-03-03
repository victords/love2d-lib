Sprite = {}
Sprite.__index = Sprite

function Sprite.new(x, y, img_path, cols, rows)
  local self = setmetatable({}, Sprite)
  self.x = x
  self.y = y
  self.img_path = img_path
  self.cols = cols
  self.rows = rows

  self.img = love.graphics.newImage(img_path)
  self.img_index = 0
  self.index_index = 0
  self.anim_timer = 0

  local img_width = self.img:getWidth()
  local img_height = self.img:getHeight()
  self.col_width = math.floor(img_width / cols)
  self.row_height = math.floor(img_height / rows)
  local total_quads = cols * rows
  self.quads = {}
  for i = 0, total_quads - 1 do
    self.quads[i] = love.graphics.newQuad((i % cols) * self.col_width, math.floor(i / cols) * self.row_height, self.col_width, self.row_height, img_width, img_height)
  end

  return self
end

function Sprite:animate(indices, interval)
  self.anim_timer = self.anim_timer + 1
  if self.anim_timer >= interval then
    self.index_index = (self.index_index + 1) % #indices
    self.img_index = indices[self.index_index + 1]
    self.anim_timer = 0
  end
end

function Sprite:draw(scale_x, scale_y, angle)
  scale_x = scale_x or 1
  scale_y = scale_y or 1
  origin_x = 0.5 * self.col_width
  origin_y = 0.5 * self.row_height
  love.graphics.draw(self.img, self.quads[self.img_index], self.x + scale_x * origin_x, self.y + scale_y * origin_y, angle, scale_x, scale_y, origin_x, origin_y)
end
