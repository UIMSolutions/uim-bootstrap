module uim.bootstrap.bs5.basic.components.spinners.grow;

import uim.bootstrap;

class DBS5SpinnerGrow : DBS5Obj {
	mixin(H5This!("Div", ["spinner-grow"]));
}
mixin(H5Calls!("BS5SpinnerGrow"));

unittest {
	assert(Assert(BS5SpinnerGrow, `<div class="spinner-grow"></div>`));
}
