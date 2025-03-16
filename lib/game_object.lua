GameObject = setmetatable({}, Sprite)
GameObject.__index = GameObject

function GameObject.new(x, y, w, h, img_path, img_gap, cols, rows)
  local self = Sprite.new(x, y, img_path, cols, rows)
  setmetatable(self, GameObject)
  self.w = w
  self.h = h
  self.img_gap = img_gap or Vector.new()
  return self
end

function GameObject:draw(scale_x, scale_y, angle, scale_img_gap)
  scale_x = scale_x or 1
  scale_y = scale_y or 1
  if scale_img_gap == nil then scale_img_gap = true end
  img_gap_scale_x = scale_img_gap and scale_x or 1
  img_gap_scale_y = scale_img_gap and scale_y or 1
  origin_x = 0.5 * self.w - self.img_gap.x
  origin_y = 0.5 * self.h - self.img_gap.y
  x = self.x + img_gap_scale_x * self.img_gap.x + scale_x * origin_x
  y = self.y + img_gap_scale_y * self.img_gap.y + scale_y * origin_y
  print(x, y, origin_x, origin_y)
  love.graphics.draw(self.img, self.quads[self.img_index], x, y, angle, scale_x, scale_y, origin_x, origin_y)
end
