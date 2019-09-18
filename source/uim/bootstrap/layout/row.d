module uim.bootstrap.layout.row;

import uim.bootstrap;

class DBS4Row : DBS4Obj {
	mixin(H5This!("Div", `["row"]`));

	mixin(MyContent!("col", "BS4Col"));
}
mixin(BS4Func!("Row"));

unittest {
	assert(BS4Row == `<div class="row"></div>`);
}