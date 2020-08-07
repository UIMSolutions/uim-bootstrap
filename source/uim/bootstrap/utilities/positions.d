module uim.bootstrap.utilities.positions;

import uim.bootstrap; 

T positionStatic(T)(T h5) {
	return h5.classes("position-static");
}
T positionRelative(T)(T h5) {
	return h5.classes("position-relative");
}
T positionAbsolute(T)(T h5) {
	return h5.classes("position-absolute");
}
T positionFixed(T)(T h5) {
	return h5.classes("position-fixed");
}
T positionSticky(T)(T h5) {
	return h5.classes("position-sticky");
}
T fixedPosition(T)(T h5, string position) {
	return h5.classes("fixed-"~position);
}
T stickyPosition(T)(T h5, string position) {
	return h5.classes("sticky-"~position);
}

unittest {
	

}