module uim.bootstrap.bs5.classes.tables.body_;

import uim.bootstrap;

@safe: class DBS5TableBody : DBS5Obj {
	mixin(H5This!"Tbody");

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	unittest {
		assert(Assert(BS5Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS5TableBody");

unittest {
	assert(Assert(BS5TableBody, `<tbody></tbody>`));
}
