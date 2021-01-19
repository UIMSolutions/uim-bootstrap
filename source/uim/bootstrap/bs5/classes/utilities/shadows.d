module uim.bootstrap.bs5.classes.utilities.shadows;

import uim.bootstrap; 

T shadowNone(T)(T h5) {
	return h5.classes("shadow-none");
}
T shadow(T)(T h5, string screenSize = null) {
	if (screenSize) return h5.classes("shadow-"~screenSize); else return h5.classes("shadow");
}

unittest {
	assert(Assert(H5Div.shadowNone, `<div class="shadow-none"></div>`));
	assert(Assert(H5Div.shadow, `<div class="shadow"></div>`));
	assert(Assert(H5Div.shadow("sm"), `<div class="shadow-sm"></div>`));
	assert(Assert(H5Div.shadow("lg"), `<div class="shadow-lg"></div>`));
}