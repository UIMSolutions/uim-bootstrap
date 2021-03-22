module uim.bootstrap.bs5.basic.components.forms.controls.color;

import uim.bootstrap; 

@safe: class DBS5InputColor : DBS5Input {
	mixin(H5This!("", ["form-control", "form-control-color"], `["type":"color"]`));
}
mixin(H5Calls!("BS5InputColor"));
///
unittest {
	assert(Assert(BS5InputColor, `<input class="form-control form-control-color" type="color">`));
}