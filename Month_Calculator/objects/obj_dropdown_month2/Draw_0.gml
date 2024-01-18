draw_self();

// Draw drop-down box
//draw_rectangle(x, y, x + sprite_width, y + sprite_height, true);
var text = dropdownOptions[selectedOption];
var text_width = string_width(text);
var text_height = string_height(text);

// Calculate X-coordinate to center horizontally within the object
var x_centered = x + (sprite_width - text_width) / 2 - 18;	// 18 for the size of the textbox (36px) divided by 2

// Calculate Y-coordinate to center vertically within the object
var y_centered = y + (sprite_height - text_height) / 2;

// Draw the text centered within the object
draw_text(x_centered, y_centered, text);

// Draw options (if drop-down is open)
if (isDropdownOpen) {
    for (var i = 0; i < array_length_1d(dropdownOptions); i++) {
        text = dropdownOptions[i];
        text_width = string_width(text);
        text_height = string_height(text);

        // Calculate X-coordinate to center horizontally within the object
        x_centered = x + (sprite_width - text_width) / 2;

        // Calculate Y-coordinate to center vertically within the object
        y_centered = y + (i + 1) * sprite_height + (sprite_height - text_height) / 2;
		
		// Draw the backgroud and outline
		draw_set_color(color);
		draw_rectangle(x, y + (i + 1) * sprite_height, x + sprite_width, y + (i + 2) * sprite_height, false);
		draw_set_color(c_black);
		draw_rectangle(x, y + (i + 1) * sprite_height, x + sprite_width, y + (i + 2) * sprite_height, true);

        // Draw the text centered within the object
        draw_text(x_centered, y_centered, text);
    }
}