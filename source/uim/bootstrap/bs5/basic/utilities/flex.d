module uim.bootstrap.bs5.classes.utilities.flex;

import uim.bootstrap; 

T flex(T)(T h5) {
	return h5.classes("d-flex");
}
T flexInline(T)(T h5) {
	return h5.classes("d-inline-flex");
}
T flexRow(T)(T h5) {
	return h5.flex.classes("d-flex-column");
}
T flexRowReverse(T)(T h5) {
	return h5.flex.classes("d-flex-column-reverse");
}
T flexColumn(T)(T h5) {
	return h5.flex.classes("d-flex-column");
}
T flexColumnReverse(T)(T h5) {
	return h5.flex.classes("d-flex-column-reverse");
}
T flexJustify(T)(T h5, string position) {
	return h5.flex.classes("justify-content-"~position);
}
T flexAlign(T)(T h5, string position) {
	return h5.flex.classes("align-items-"~position);
}
T flexAlignSelf(T)(T h5, string position) {
	return h5.classes("align-self-"~position);
}
T flexFill(T)(T h5, string position) {
	return h5.classes("flex-fill");
}
T flexGrow(T)(T h5, string size) {
	return h5.classes("flex-grow-"~size);
}
T flexShrink(T)(T h5, string size) {
	return h5.classes("flex-shrink-"~size);
}
T flexNoWrap(T)(T h5) {
	return h5.flex.classes("flex-nowrap");
}
T flexWrap(T)(T h5) {
	return h5.flex.classes("flex-wrap");
}
T flexWrapReverse(T)(T h5) {
	return h5.flex.classes("flex-wrap-reverse");
}
T flexOrder(T)(T h5, string position) {
	return h5.classes("order-"~position);
}

unittest {
	assert(Assert(H5Div.flex, `<div class="d-flex"></div>`));
	assert(Assert(H5Div.flexInline, `<div class="d-inline-flex"></div>`));
}