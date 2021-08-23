module uim.bootstrap.bs5.basic.components.forms.customcontrols.radio;

import uim.bootstrap;

@safe: class DBS5CustomRadio : DBS5CustomControl {
	mixin(H5This!("DIV", ["custom-control", "custom-radio"]));
	unittest 	{
		assert(Assert(BS5CustomRadio, `<div class="custom-control custom-radio"></div>`));
	}
}

mixin(H5Calls!"BS5CustomRadio");

unittest {
}
