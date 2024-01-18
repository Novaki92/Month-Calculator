// Select option on mouse click (if drop-down is open)
if (isDropdownOpen && mouse_check_button_pressed(mb_left)) {
    for (var i = 0; i < array_length_1d(dropdownOptions); i++) {
        if (point_in_rectangle(mouse_x, mouse_y, x, y + (i + 1) * sprite_height, x + sprite_width, y + (i + 2) * sprite_height)) {
            selectedOption = i;
            isDropdownOpen = false;
        }
    }
}