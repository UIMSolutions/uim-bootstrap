module uim.bootstrap.bs4.tables.body_;

@safe: 
import uim.bootstrap;

class DBS4TableBody : DBS4Obj {
	mixin(H5This!"Tbody");

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Table.row == `<table class="table"><tr></tr></table>`);
	}}
}
mixin(H5Calls!"BS4TableBody");

version(test_uim_bootstrap) { unittest {
	assert(BS4TableBody == `<tbody></tbody>`);
}}
