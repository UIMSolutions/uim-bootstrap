module uim.bootstrap.bs5.classes.tables.footer;

@safe: 
import uim.bootstrap;

class DBS5TableFooter : DBS5Obj {
	mixin(H5This!"Tfoot");

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Table.row, `<table class="table"><tr></tr></table>`);
	}}	
}
mixin(H5Calls!"BS5TableFooter");

version(test_uim_bootstrap) { unittest {
		assert(BS5TableFooter, `<tfoot></tfoot>`);
}}
