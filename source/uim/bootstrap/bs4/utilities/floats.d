module uim.bootstrap.bs4.utilities.floats;

@safe: 
import uim.bootstrap; 

T floatNone(T)(T h5) {
	return h5.addClasses("float-none");
}
T floatPosition(T)(T h5, string position) {
	return h5.addClasses("float-"~position);
}
T floatPosition(T)(T h5, string position, string breakPoint) {
	return h5.addClasses("float-"~breakPoint~"-"~position);
}

version(test_uim_bootstrap) { unittest {
	// TODO
}}