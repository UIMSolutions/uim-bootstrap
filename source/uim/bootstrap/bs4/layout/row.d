module uim.bootstrap.bs4.layout.row;

import uim.bootstrap;

@safe: class DBS4Row : DBS4Obj {
	mixin(H5This!("Div", ["row"]));

	mixin(MyContent!("col", "BS4Col"));
}
mixin(H5Calls!("BS4Row"));

unittest {
	assert(Assert(BS4Row, `<div class="row"></div>`));
}