module uim.bootstrap.bs4.layout.row;

@safe: 
import uim.bootstrap;

class DBS4Row : DBS4Obj {
	mixin(H5This!("Div", ["row"]));

	mixin(MyContent!("col", "BS4Col"));
}
mixin(H5Calls!("BS4Row"));

unittest {
	assert(BS4Row, `<div class="row"></div>`);
}