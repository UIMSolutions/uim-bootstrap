module uim.bootstrap.bs5.basic.utilities.clearfix;

@safe: 
import uim.bootstrap; 

T clearfix(T)(T h5) {
	return h5.addClasses("clearfix");
}

version(test_uim_bootstrap) { unittest {
	assert(H5Div.clearfix == `<div class="clearfix"></div>`);
}}