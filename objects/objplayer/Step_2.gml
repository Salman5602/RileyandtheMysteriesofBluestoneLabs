/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EB2AFDC
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 21F95E53
	/// @DnDParent : 3EB2AFDC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "sprplayerjump"
	/// @DnDSaveInfo : "spriteind" "sprplayerjump"
	sprite_index = sprplayerjump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 209CA6FE
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 105591F5
	/// @DnDParent : 209CA6FE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "sprplayerjump"
	/// @DnDSaveInfo : "spriteind" "sprplayerjump"
	sprite_index = sprplayerjump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 10AC435F
/// @DnDComment : If we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collison_tilemap"
var l10AC435F_0 = instance_place(x + 0, y + 2, [collison_tilemap]);if ((l10AC435F_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 754D85E3
	/// @DnDComment : If character is moving left
	/// @DnDParent : 10AC435F
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 62158718
		/// @DnDParent : 754D85E3
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "sprplayerwalk"
		/// @DnDSaveInfo : "spriteind" "sprplayerwalk"
		sprite_index = sprplayerwalk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 5B4B54A6
		/// @DnDComment : Face left by negating the absolute valve of what the current image of the x scale is, the result will be a negative value for if it was positive or negative, to ensure flip left works properly
		/// @DnDParent : 754D85E3
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B157076
	/// @DnDComment : If character is moving right
	/// @DnDParent : 10AC435F
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49457B4D
		/// @DnDParent : 3B157076
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "sprplayerwalk"
		/// @DnDSaveInfo : "spriteind" "sprplayerwalk"
		sprite_index = sprplayerwalk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 4276B2F9
		/// @DnDComment : reset to right facing$(13_10)$(13_10)We just do absolute value to enforce right facing when movement is right, it is moving right
		/// @DnDParent : 3B157076
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33D3F2EC
	/// @DnDParent : 10AC435F
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4E84BE2F
		/// @DnDParent : 33D3F2EC
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "sprplayeridle"
		/// @DnDSaveInfo : "spriteind" "sprplayeridle"
		sprite_index = sprplayeridle;
		image_index += 0;}}