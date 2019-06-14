module uim.bootstrap.utilities.borders;

import uim.bootstrap; 

T border(T)(T h5) {
	h5.classes("border");
	return h5;
}
T borderPosition(T)(T h5, string[] positions...) {
	foreach(p; positions) h5.classes("border-"~p);
	return h5;
}
T borderColor(T)(T h5, string colorName) {
	return h5.classes("border", "border-"~colorName);
}
T rounded(T)(T h5, string radius = null) {
	if (radius) h5.classes("rounded-"~radius); else h5.classes("rounded");
	return h5;
}
T roundedPosition(T)(T h5, string[] positions...) {
	foreach(position; positions) h5.classes("rounded-"~position);
	return h5;
}
T circle(T)(T h5, string radius = null) {
	return h5.classes("rounded-circle");
}

unittest {
	writeln("Testing ", __MODULE__);

	assert(H5DIV.border == `<div class="border"></div>`);
	assert(H5DIV.borderPosition("top") == `<div class="border-top"></div>`);
	assert(H5DIV.borderPosition("bottom", "top") == `<div class="border-bottom border-top"></div>`);

	assert(H5DIV.rounded == `<div class="rounded"></div>`);
	assert(H5DIV.rounded("0") == `<div class="rounded-0"></div>`);
	assert(H5DIV.roundedPosition("top") == `<div class="rounded-top"></div>`);
	assert(H5DIV.roundedPosition("bottom", "top") == `<div class="rounded-bottom rounded-top"></div>`);
}