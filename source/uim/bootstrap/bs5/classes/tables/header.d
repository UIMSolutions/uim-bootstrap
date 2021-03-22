module uim.bootstrap.bs5.classes.tables.header;

import uim.bootstrap;

@safe: class DBS5TableHeader : DBS5Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	unittest {
		assert(Assert(BS5Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS5TableHeader");

unittest {
	assert(Assert(BS5TableHeader, `<thead></thead>`));
}
