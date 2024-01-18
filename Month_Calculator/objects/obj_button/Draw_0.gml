draw_self();

var text_width = string_width(text);
var text_height = string_height(text);

// Calculate X-coordinate to center horizontally within the object
var x_centered = x + (sprite_width - text_width) / 2;

// Calculate Y-coordinate to center vertically within the object
var y_centered = y + (sprite_height - text_height) / 2;

// Draw the text centered within the object
draw_text(x_centered, y_centered, text);
