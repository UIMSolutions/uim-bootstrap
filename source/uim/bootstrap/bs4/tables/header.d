module uim.bootstrap.bs4.tables.header;

import uim.bootstrap;

class DBS4TableHeader : DBS4Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS4TableHeader");

unittest {
	assert(Assert(BS4TableHeader, `<thead></thead>`));
}
