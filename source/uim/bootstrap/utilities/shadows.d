module uim.bootstrap.utilities.shadows;

import uim.bootstrap; 

T shadowNone(T)(T h5) {
	return h5.classes("shadow-none");
}
T shadow(T)(T h5, string screenSize = null) {
	if (screenSize) return h5.classes("shadow-"~screenSize); else return h5.classes("shadow");
}

unittest {
	

	assert(H5DIV.shadowNone == `<div class="shadow-none"></div>`);
	assert(H5DIV.shadow == `<div class="shadow"></div>`);
	assert(H5DIV.shadow("sm") == `<div class="shadow-sm"></div>`);
	assert(H5DIV.shadow("lg") == `<div class="shadow-lg"></div>`);
}