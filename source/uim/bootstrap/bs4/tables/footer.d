module uim.bootstrap.bs4.tables.footer;

import uim.bootstrap;

@safe: class DBS4TableFooter : DBS4Obj {
	mixin(H5This!"Tfoot");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS4TableFooter");

unittest {
	assert(Assert(BS4TableFooter, `<tfoot></tfoot>`));
}
