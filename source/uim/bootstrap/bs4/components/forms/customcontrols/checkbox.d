﻿module uim.bootstrap.bs4.components.forms.customcontrols.checkbox;

import uim.bootstrap;

@safe: class DBS4CustomCheckbox : DBS4CustomControl {
	mixin(H5This!("DIV", ["custom-checkbox"]));
}
mixin(H5Calls!"BS4CustomCheckbox");

unittest {
	assert(Assert(BS4CustomCheckbox, `<div class="custom-checkbox custom-control"></div>`));
}