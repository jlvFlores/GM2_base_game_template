/// @desc Creates a button on the specified cordinates and layer with the passed string
/// @param {Real} x_pos - The x position the button will be created at.
/// @param {Real} y_pos - The y position the button will be created at.
/// @param {String} layer_id - The layer name to assing the created button to.
/// @param {String} text_var - The text that the button will display.
function create_button(x_pos, y_pos, layer_id, text_var) {
    var button_inst = instance_create_layer(x_pos, y_pos, layer_id, obj_button);
    button_inst.text_str = text_var;
}

function create_settings() {
	instance_create_layer(0,0,"Settings", obj_settings_controller);
}