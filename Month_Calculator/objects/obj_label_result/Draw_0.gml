var text_height = string_height(text);

// Calculate Y-coordinate to center vertically within the object
var y_centered = y + (sprite_height - text_height) / 2;

// Draw the text centered vertically within the object
draw_text(x, y_centered, text);