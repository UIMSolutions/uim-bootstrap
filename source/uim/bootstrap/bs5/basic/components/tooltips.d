module uim.bootstrap.bs5.basic.components.tooltips;

@safe: 
import uim.bootstrap;

T tipTitle(T)(T h5, string title) {
	return h5.attributes(["data-toggle":"tooltip", "title":title]);
}
T tipHtml(T)(T h5, bool mode = true) {
	return h5.attributes(["data-toggle":"tooltip", "data-html":"true"]);
}
T tipPlacement(T)(T h5, string position) {
	return h5.attributes(["data-toggle":"tooltip", "data-placement":position]);
}
T tipAnimation(T)(T h5, bool mode) {
	if (mode == false) h5.attributes(["data-toggle":"tooltip", "data-animation":"false"]);
	return h5;
}
T tipDelay(T)(T h5, string delay) {
	return h5.attributes(["data-toggle":"tooltip", "data-delay":delay]);
}
T tipTrigger(T)(T h5, string trigger) {
	return h5.attributes(["data-toggle":"tooltip", "data-trigger":trigger]);
}
T tipOffset(T)(T h5, string offset) {
	return h5.attributes(["data-toggle":"tooltip", "data-offset":offset]);
}

