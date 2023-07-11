function note(time_, lane_, depth_) constructor {
	depth = depth_;
	switch depth {
		case 0:
			color = c_red;
			break;
		case 1:
			color = c_blue;
			break;
		default:
			color = c_purple;
			break;
	}
	lane = lane_;
	time = time_;
	pos = time;
}