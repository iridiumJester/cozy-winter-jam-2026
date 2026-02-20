var _move = keyboard_check(ord("D")) - keyboard_check(ord("A"));

move_and_collide(_move * move_speed, 0, collision, undefined, undefined, undefined, move_speed, move_speed);