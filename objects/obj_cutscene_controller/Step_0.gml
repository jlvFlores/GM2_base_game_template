cutscene_timer += 1;

switch (cutscene_stage) {
	case 0:
		if (cutscene_timer > 60) {
			cutscene_stage += 1;
			cutscene_timer = 0;
		}
		break;
	case 1:
		if (cutscene_timer > 120) {
			cutscene_stage += 1;
			cutscene_timer = 0;
		}
		break;
	case 2:
		room_goto(rm_hub);
		break;
}

