module uim.bootstrap.bs5.classes.tables.header;

@safe: 
import uim.bootstrap;

class DBS5TableHeader : DBS5Obj {
	mixin(H5This!"Thead");

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5TableHeader.row == `<thead><tr></tr></thead>`);
		assert(BS5TableHeader.row.row == `<thead><tr></tr><tr></tr></thead>`);
		assert(BS5TableHeader.tr == `<thead><tr></tr></thead>`);
	}}
}
mixin(H5Calls!"BS5TableHeader");

version(test_uim_bootstrap) { unittest {
	assert(BS5TableHeader == `<thead></thead>`);
}}
