draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (cutscene_stage) {
	case 0:
		draw_text(room_width / 2, room_height / 2, "The Adventure Begins...");
		break;
	case 1:
		draw_text(room_width / 2, room_height / 2, "Prepare Yourself!");
		break;
}