module uim.bootstrap.bs5.classes.layout.row;

@safe: 
import uim.bootstrap;

class DBS5Row : DBS5Obj {
	mixin(H5This!("Div", ["row"]));

	mixin(MyContent!("col", "BS5Col"));
}
mixin(H5Calls!("BS5Row"));

version(test_uim_bootstrap) { unittest {
	assert(BS5Row == `<div class="row"></div>`);
}}