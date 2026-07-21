/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 629F4A60
/// @DnDComment : When no key is pressed they're both 0$(13_10)$(13_10)When one of them is pressed it becomes 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) -keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) -keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D3E718E
/// @DnDArgument : "expr" "move_x* walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x* walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0798891B
show_debug_message(string("debug message"));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6A432234
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "objfloortemp"
/// @DnDSaveInfo : "object" "objfloortemp"
var l6A432234_0 = instance_place(x + 0, y + 2, [objfloortemp]);if ((l6A432234_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0631D247
	/// @DnDParent : 6A432234
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 124F8E2F
	/// @DnDParent : 6A432234
	var l124F8E2F_0;l124F8E2F_0 = keyboard_check_pressed(vk_space);if (l124F8E2F_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 355381A4
		/// @DnDComment : Update move y for a jump
		/// @DnDParent : 124F8E2F
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1E287999
/// @DnDComment : You are in the air
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3228750E
	/// @DnDComment : If we are falling after a jump
	/// @DnDParent : 1E287999
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42E0C946
		/// @DnDComment : Add gravity
		/// @DnDParent : 3228750E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 6EEE032D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "objfloortemp"
/// @DnDSaveInfo : "object" "objfloortemp"
move_and_collide(move_x, move_y, [objfloortemp],4,0,0,walk_speed,jump_speed);