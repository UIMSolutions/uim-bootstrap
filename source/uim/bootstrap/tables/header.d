module uim.bootstrap.tables.header;

import uim.bootstrap;

class DBS4TableHeader : DBS4Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(Assert(BS4Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(BS4Short!"TableHeader");

unittest {
	assert(Assert(BS4TableHeader, `<thead></thead>`));
}
