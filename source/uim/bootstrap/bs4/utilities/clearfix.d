﻿module uim.bootstrap.bs4.utilities.clearfix;

import uim.bootstrap; 

T clearfix(T)(T h5) {
	return h5.classes("clearfix");
}

unittest {
	

	assert(Assert(H5Div.clearfix, `<div class="clearfix"></div>`));
}