x += bump;
y += bump;

// Do Stuff

// Remove space from start of string, possibly redundant since real() does a converstion
var fixed1 = obj_textbox_year1.text;
var fixed2 = obj_textbox_year2.text;
fixed1 = string_delete(fixed1, 1, 1);
fixed2 = string_delete(fixed2, 1, 1);

// Prevent Crash if blank
if (fixed1 != "") {
	var year1 = real(fixed1); // convert to real num
} else {
	var year1 = 0;	
}
if (fixed2 != "") {
	var year2 = real(fixed2); 
} else {
	var year2 = 0;	
}

// Get months and add 1 to offset array 
var month1 = obj_dropdown_month1.selectedOption + 1;
var month2 = obj_dropdown_month2.selectedOption + 1;

// Calculation
var differenceInMonths = (year2 - year1) * 12 + (month2 - month1);

// Display the result
show_debug_message("The difference in months is: " + string(differenceInMonths));
obj_label_result.text = "The difference in months is: " + string(differenceInMonths); 
