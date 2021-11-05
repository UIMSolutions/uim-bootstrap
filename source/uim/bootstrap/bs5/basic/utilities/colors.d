module uim.bootstrap.bs5.classes.utilities.colors;

import uim.bootstrap; 

T textColor(T)(T h5, string colorName) {
	return h5.classes("text-"~colorName);
}
T bgColor(T)(T h5, string colorName) {
	return h5.classes("bg-"~colorName);
}
T backgroundColor(T)(T h5, string colorName) {
	return h5.classes("bg-"~colorName);
}

unittest {
	

	assert(Assert(H5Div.textColor("white"), `<div class="text-white"></div>`));
	assert(Assert(H5Div.bgColor("white"), `<div class="bg-white"></div>`));
}