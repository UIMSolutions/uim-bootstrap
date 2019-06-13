module uim.bs4.utilities.positions;

import uim.bs4; 

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
	writeln("Testing ", __MODULE__);

}