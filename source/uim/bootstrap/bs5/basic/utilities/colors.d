﻿module uim.bootstrap.bs5.basic.utilities.colors;

@safe: 
import uim.bootstrap; 

T textColor(T)(T h5, string colorName) {
	return h5.addClasses("text-"~colorName);
}
T bgColor(T)(T h5, string colorName) {
	return h5.addClasses("bg-"~colorName);
}
T backgroundColor(T)(T h5, string colorName) {
	return h5.addClasses("bg-"~colorName);
}

version(test_uim_bootstrap) { unittest {
	assert(H5Div.textColor("white") == `<div class="text-white"></div>`);
	assert(H5Div.bgColor("white") == `<div class="bg-white"></div>`);
}}