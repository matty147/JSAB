randomise();

// Grid size
grid_size = 64;
offset = 32;

spawn_time = 0;
duration = 2;

instance = instance_find(obj_timeline_time,0);
_manager = instance_find(manager,0);
bottom = instance_find(obj_timeline_bottom,0);
name = instance_find(obj_timeline_name,0);

display_image = "spr_enemy";

is_draggable = true;
dragging = false;

last_position_y = (round((y - 32) / 64) * 64) + 32;

edit_menu_popup = false;

paused = false;

object_x = x;
object_y = room_height/2;
object_rotation = 0;
object_x_scale = 1;
object_y_scale = 1; // cant have 1:2 object???
object_speed = 1;
//display_object_size = 0;

_id = 0;

extend = false;

min_object_stretch = 1;