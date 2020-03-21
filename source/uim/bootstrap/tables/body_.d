module uim.bootstrap.tables.body_;

import uim.bootstrap;

class DBS4TableBody : DBS4Obj {
	mixin(H5This!"Tbody");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(BS4Short!"TableBody");

unittest {
	assert(Assert(BS4TableBody, `<tbody></tbody>`));
}
