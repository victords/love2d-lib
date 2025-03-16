number = {
  approx_equal = function (value1, value2, tolerance)
    tolerance = tolerance or 0.000001
    return math.abs(value1 - value2) <= tolerance
  end
}

require("lib.keyboard")
require("lib.mouse")

require("lib.rectangle")
require("lib.vector")

require("lib.block")
require("lib.ramp")
require("lib.sprite")
require("lib.game_object")
