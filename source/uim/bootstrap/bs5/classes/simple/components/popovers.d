module uim.bootstrap.bs5.classes.simple.components.popovers;

import uim.bootstrap;

T popContent(T)(T h5, string content) {
	return h5.attributes(["data-toggle":"popover", "data-content":content]);
}
T popTitle(T)(T h5, string title) {
	return h5.attributes(["data-toggle":"popover", "title":title]);
}
T popHtml(T)(T h5, bool mode = true) {
	return h5.attributes(["data-toggle":"popover", "data-html":"true"]);
}
T popPlacement(T)(T h5, string position) {
	return h5.attributes(["data-toggle":"popover", "data-placement":position]);
}
T popAnimation(T)(T h5, bool mode) {
	if (mode == false) h5.attributes(["data-toggle":"popover", "data-animation":"false"]);
	return h5;
}
T popDelay(T)(T h5, string delay) {
	return h5.attributes(["data-toggle":"popover", "data-delay":delay]);
}
T popTrigger(T)(T h5, string trigger) {
	return h5.attributes(["data-toggle":"popover", "data-trigger":trigger]);
}
T popOffset(T)(T h5, string offset) {
	return h5.attributes(["data-toggle":"popover", "data-offset":offset]);
}
