module uim.bs4.utilities.floats;

import uim.bs4; 

T floatNone(T)(T h5) {
	return h5.classes("float-none");
}
T floatPosition(T)(T h5, string position) {
	return h5.classes("float-"~position);
}
T floatPosition(T)(T h5, string position, string breakPoint) {
	return h5.classes("float-"~breakPoint~"-"~position);
}

unittest {
	writeln("Testing ", __MODULE__);
}