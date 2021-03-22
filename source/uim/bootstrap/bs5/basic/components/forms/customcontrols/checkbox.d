﻿module uim.bootstrap.bs5.basic.components.forms.customcontrols.checkbox;

import uim.bootstrap;

@safe: class DBS5CustomCheckbox : DBS5CustomControl {
	mixin(H5This!("DIV", ["custom-checkbox"]));
}
mixin(H5Calls!"BS5CustomCheckbox");

unittest {
	assert(Assert(BS5CustomCheckbox, `<div class="custom-checkbox custom-control"></div>`));
}