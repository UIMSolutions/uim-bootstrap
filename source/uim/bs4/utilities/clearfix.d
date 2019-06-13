module uim.bs4.utilities.clearfix;

import uim.bs4; 

T clearfix(T)(T h5) {
	return h5.classes("clearfix");
}

unittest {
	writeln("Testing ", __MODULE__);

	assert(H5DIV.clearfix == `<div class="clearfix"></div>`);
}