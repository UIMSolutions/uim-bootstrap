module uim.bootstrap.bs5.classes.utilities.embeds;

@safe: 
import uim.bootstrap; 

T embedResponsive(T)(T h5) {
	return h5.addClasses("embed-responsive");
}
T embedSize(T)(T h5, string size) {
	return h5.addClasses("embed-responsive-"~size);
}
T embedItem(T)(T h5) {
	return h5.addClasses("embed-responsive-item");
}

version(test_uim_bootstrap) { unittest {
	// TODO
}}