module uim.bootstrap.bs5.classes.tables.header;

@safe: 
import uim.bootstrap;

class DBS5TableHeader : DBS5Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	unittest {
		assert(Assert(BS5TableHeader.row, `<thead><tr></tr></thead>`));
		assert(Assert(BS5TableHeader.row.row, `<thead><tr></tr><tr></tr></thead>`));
		assert(Assert(BS5TableHeader.tr, `<thead><tr></tr></thead>`));
	}	
}
mixin(H5Calls!"BS5TableHeader");

unittest {
	assert(Assert(BS5TableHeader, `<thead></thead>`));
}
