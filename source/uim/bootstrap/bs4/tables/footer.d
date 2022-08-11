module uim.bootstrap.bs4.tables.footer;

@safe: 
import uim.bootstrap;

class DBS4TableFooter : DBS4Obj {
	mixin(H5This!"Tfoot");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(BS4Table.row, `<table class="table"><tr></tr></table>`);
	}	
}
mixin(H5Calls!"BS4TableFooter");

unittest {
	assert(BS4TableFooter, `<tfoot></tfoot>`);
}
