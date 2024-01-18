draw_self(); // Draw the object itself

if (selected) {
	// Calculate vertical position to center the text
	var text_height = string_height(text);
	//var text_width = string_width(keyboard_string);
	var y_centered = y + (sprite_height - text_height) / 2;

	// Draw the text
	draw_set_font(fnt_textbox);
	draw_set_color(c_black);
	draw_text(x, y_centered, text);

	// Prevent cursor display error
	if text == "" {
		text = " ";	
	}

	// Draw cursor if it's visible
	if (cursor_visible && selected) {
	    var cursor_x = x + string_width(string_copy(text, 1, string_length(text)));
	    draw_line(cursor_x, y_centered - 2, cursor_x, y_centered + text_height + 2);
	}
} else if (!selected) {
	var text_height = string_height(text);
	var y_centered = y + (sprite_height - text_height) / 2;
	draw_text(x, y_centered, text);
}