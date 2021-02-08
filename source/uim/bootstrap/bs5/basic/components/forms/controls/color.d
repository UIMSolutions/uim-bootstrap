module uim.bootstrap.bs5.basic.components.forms.controls.color;

import uim.bootstrap; 

class DBS5InputColor : DBS5Input {
	mixin(H5This!("", null, `["type":"color"]`));
}
mixin(H5Calls!("BS5InputColor"));
///
unittest {
	assert(Assert(BS5InputColor, `<input class="form-control" type="color">`));
}