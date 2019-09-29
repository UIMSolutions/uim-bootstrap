module uim.bootstrap.tables.footer;

import uim.bootstrap;

class DBS4TableFooter : DBS4Obj {
	mixin(H5This!"Tfoot");
}
mixin(BS4Short!"TableFooter");

unittest {
	assert(BS4TableFooter == `<tfoot></tfoot>`);
}
