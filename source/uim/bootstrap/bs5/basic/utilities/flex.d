module uim.bootstrap.bs5.classes.utilities.flex;

@safe: 
import uim.bootstrap; 

T flex(T)(T h5) {
	return h5.addClasses("d-flex");
}
T flexInline(T)(T h5) {
	return h5.addClasses("d-inline-flex");
}
T flexRow(T)(T h5) {
	return h5.flex.addClasses("d-flex-column");
}
T flexRowReverse(T)(T h5) {
	return h5.flex.addClasses("d-flex-column-reverse");
}
T flexColumn(T)(T h5) {
	return h5.flex.addClasses("d-flex-column");
}
T flexColumnReverse(T)(T h5) {
	return h5.flex.addClasses("d-flex-column-reverse");
}
T flexJustify(T)(T h5, string position) {
	return h5.flex.addClasses("justify-content-"~position);
}
T flexAlign(T)(T h5, string position) {
	return h5.flex.addClasses("align-items-"~position);
}
T flexAlignSelf(T)(T h5, string position) {
	return h5.addClasses("align-self-"~position);
}
T flexFill(T)(T h5, string position) {
	return h5.addClasses("flex-fill");
}
T flexGrow(T)(T h5, string size) {
	return h5.addClasses("flex-grow-"~size);
}
T flexShrink(T)(T h5, string size) {
	return h5.addClasses("flex-shrink-"~size);
}
T flexNoWrap(T)(T h5) {
	return h5.flex.addClasses("flex-nowrap");
}
T flexWrap(T)(T h5) {
	return h5.flex.addClasses("flex-wrap");
}
T flexWrapReverse(T)(T h5) {
	return h5.flex.addClasses("flex-wrap-reverse");
}
T flexOrder(T)(T h5, string position) {
	return h5.addClasses("order-"~position);
}

version(test_uim_bootstrap) { unittest {
	assert(H5Div.flex, `<div class="d-flex"></div>`);
	assert(H5Div.flexInline, `<div class="d-inline-flex"></div>`);
}}