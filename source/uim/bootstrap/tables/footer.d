module uim.bootstrap.tables.footer;

import uim.bootstrap;

class DBS4TableFooter : DBS4Obj {
	mixin(H5This!"Tfoot");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(BS4Short!"TableFooter");

unittest {
	assert(Assert(BS4TableFooter, `<tfoot></tfoot>`));
}
