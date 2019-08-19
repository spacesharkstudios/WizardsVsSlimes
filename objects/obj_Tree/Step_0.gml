// if obj_player enters circe of radius 40 at obj_Tree's x/y posiion, the tree will fade
if(collision_circle(x, y, 40, obj_HubPlayer, true, true)){
	image_alpha = 0.25;
}
else image_alpha = 1;