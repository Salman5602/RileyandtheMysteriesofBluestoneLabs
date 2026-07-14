/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 629F4A60
/// @DnDArgument : "expr" "keyboard_check(vk_right) -keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) -keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D3E718E
/// @DnDArgument : "expr" "move_x* walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x* walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6A432234
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "objfloortemp"
/// @DnDSaveInfo : "object" "objfloortemp"
var l6A432234_0 = instance_place(x + 0, y + 2, [objfloortemp]);if ((l6A432234_0 > 0)){}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22D27E41
/// @DnDArgument : "var" "move_y"
move_y = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 58D8D299
var l58D8D299_0;l58D8D299_0 = keyboard_check_pressed(vk_space);if (l58D8D299_0){}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CFCBF98
/// @DnDArgument : "expr" "-jump_speed"
/// @DnDArgument : "var" "move_y"
move_y = -jump_speed;

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 61EFBFE1
else{}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2083BCAD
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "objfloortemp"
/// @DnDSaveInfo : "object" "objfloortemp"
move_and_collide(move_x, move_y, objfloortemp,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73DADF95
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(move_y < 10){}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70605D53
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "move_y"
move_y = 1;