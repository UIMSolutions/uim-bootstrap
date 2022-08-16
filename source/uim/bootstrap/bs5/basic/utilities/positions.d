module uim.bootstrap.bs5.classes.utilities.positions;

@safe: 
import uim.bootstrap; 

T positionStatic(T)(T h5) {
	return h5.addClasses("position-static");
}
T positionRelative(T)(T h5) {
	return h5.addClasses("position-relative");
}
T positionAbsolute(T)(T h5) {
	return h5.addClasses("position-absolute");
}
T positionFixed(T)(T h5) {
	return h5.addClasses("position-fixed");
}
T positionSticky(T)(T h5) {
	return h5.addClasses("position-sticky");
}
T fixedPosition(T)(T h5, string position) {
	return h5.addClasses("fixed-"~position);
}
T stickyPosition(T)(T h5, string position) {
	return h5.addClasses("sticky-"~position);
}

version(test_uim_bootstrap) { unittest {
	// TODO
}}