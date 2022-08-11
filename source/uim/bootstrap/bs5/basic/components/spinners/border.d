module uim.bootstrap.bs5.basic.components.spinners.border;

@safe: 
import uim.bootstrap;

class DBS5SpinnerBorder : DBS5Obj {
	mixin(H5This!("Div", ["spinner-border"]));
}
mixin(H5Calls!("BS5SpinnerBorder"));

unittest {
	assert(BS5SpinnerBorder,`<div class="spinner-border"></div>`);
}
