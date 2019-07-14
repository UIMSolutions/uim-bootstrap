module uim.bootstrap.utilities.clearfix;

import uim.bootstrap; 

T clearfix(T)(T h5) {
	return h5.classes("clearfix");
}

unittest {
	

	assert(H5DIV.clearfix == `<div class="clearfix"></div>`);
}