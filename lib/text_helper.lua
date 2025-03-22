TextHelper = {}
TextHelper.__index = TextHelper

function TextHelper.new(font, line_spacing, scale)
  local self = setmetatable({}, TextHelper)
  self.font = font
  self.line_spacing = line_spacing or 0
  self.scale = scale or 1
  return self
end

function TextHelper:write_line(text, x, y, alignment, color, effect, effect_size, effect_color, scale)
  alignment = alignment or "left"
  color = color or {1, 1, 1}
  effect_size = effect_size or 1
  effect_color = effect_color or {0, 0, 0}
  local rel_x = alignment == "center" and 0.5 or (alignment == "right" and 1 or 0)
  if effect == "border" then
    self.font:draw_text_rel(text, x - effect_size, y - effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x, y - effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x + effect_size, y - effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x + effect_size, y, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x + effect_size, y + effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x, y + effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x - effect_size, y + effect_size, rel_x, 0, effect_color, scale)
    self.font:draw_text_rel(text, x - effect_size, y, rel_x, 0, effect_color, scale)
  elseif effect == "shadow" then
    self.font:draw_text_rel(text, x + effect_size, y + effect_size, rel_x, 0, effect_color, scale)
  end
  self.font:draw_text_rel(text, x, y, rel_x, 0, color, scale)
end


