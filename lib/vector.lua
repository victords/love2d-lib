Vector = {}
Vector.__index = Vector

function Vector.new(x, y)
  local vector = setmetatable({}, Vector)
  vector.x = x
  vector.y = y
  return vector
end

function Vector.__add(self, other)
  return Vector.new(self.x + other.x, self.y + other.y)
end

function Vector.__sub(self, other)
  return Vector.new(self.x - other.x, self.y - other.y)
end

function Vector.__mul(self, value)
  return Vector.new(self.x * value, self.y * value)
end

function Vector.__div(self, value)
  return Vector.new(self.x / value, self.y / value)
end

function Vector.__eq(self, other)
  return self.x == other.x and self.y == other.y
end

function Vector:distance(other)
  return math.sqrt((self.x - other.x)^2 + (self.y - other.y)^2)
end
