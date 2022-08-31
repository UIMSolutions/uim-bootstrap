module uim.bootstrap.bs5.classes.utilities.borders;

@safe: 
import uim.bootstrap; 

T border(T)(T h5) {
	h5.addClasses("border");
	return h5;
}
T borderPosition(T)(T h5, string[] positions...) {
	foreach(p; positions) h5.addClasses("border-"~p);
	return h5;
}
T borderColor(T)(T h5, string colorName) {
	return h5.addClasses("border", "border-"~colorName);
}
T rounded(T)(T h5, string radius = null) {
	if (radius) h5.addClasses("rounded-"~radius); else h5.addClasses("rounded");
	return h5;
}
T roundedPosition(T)(T h5, string[] positions...) {
	foreach(position; positions) h5.addClasses("rounded-"~position);
	return h5;
}
T circle(T)(T h5, string radius = null) {
	return h5.addClasses("rounded-circle");
}

version(test_uim_bootstrap) { unittest {
	assert(H5Div.border == `<div class="border"></div>`);
	assert(H5Div.borderPosition("top") == `<div class="border-top"></div>`);
	assert(H5Div.borderPosition("bottom", "top") == `<div class="border-bottom border-top"></div>`);

	assert(H5Div.rounded == `<div class="rounded"></div>`);
	assert(H5Div.rounded("0") == `<div class="rounded-0"></div>`);
	assert(H5Div.roundedPosition("top") == `<div class="rounded-top"></div>`);
	assert(H5Div.roundedPosition("bottom", "top") == `<div class="rounded-bottom rounded-top"></div>`);
}}