uniform int x;
uniform int y;
uniform int w;
uniform int h;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
  if (screen_coords.x >= x && screen_coords.y >= y && screen_coords.x < x + w && screen_coords.y < y + h) {
    vec4 pixel = Texel(texture, texture_coords);
    return pixel * color;
  }

  return vec4(0, 0, 0, 0);
}
