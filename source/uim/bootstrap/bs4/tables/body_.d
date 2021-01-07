module uim.bootstrap.bs4.tables.body_;

import uim.bootstrap;

class DBS4TableBody : DBS4Obj {
	mixin(H5This!"Tbody");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS4TableBody");

unittest {
	assert(Assert(BS4TableBody, `<tbody></tbody>`));
}
