if (selected) {
	// Handle cursor blinking
	cursor_timer += 1;
	if (cursor_timer > 30) { // Adjust the blinking speed as needed
	    cursor_visible = !cursor_visible;
	    cursor_timer = 0;
	}

	var key = keyboard_check_pressed(vk_anykey);
	if (key != 0 && string_length(text) <= 4 && !keyboard_check_pressed(vk_backspace)) {
	    // If a key is pressed, add it to the input string
		if ord(keyboard_lastchar) >= ord(0) && ord(keyboard_lastchar) <= ord(9) {
			// Code to execute when the character is a number
			text += keyboard_lastchar; 
			cursor_visible = true; // Show cursor when typing
		}	
	}

	// Handle backspace
	if (keyboard_check_pressed(vk_backspace)) {
	    if (string_length(text) > 0) {
	        // Delete the last character
	        text = string_delete(text, string_length(text), 1);
	        cursor_visible = true; // Show cursor when deleting
	    }
	}

	// Limit text width to 4 characters
	if (string_length(text) > 4) {
	    // Remove characters from the end until the length is within limits
	    text = string_copy(text, 1, 5);
	}
}