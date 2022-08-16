module uim.bootstrap.bs4.tables.header;

@safe: 
import uim.bootstrap;

class DBS4TableHeader : DBS4Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Table.row, `<table class="table"><tr></tr></table>`);
	}}
}
mixin(H5Calls!"BS4TableHeader");

version(test_uim_bootstrap) { unittest {
	assert(BS4TableHeader, `<thead></thead>`);
}}
