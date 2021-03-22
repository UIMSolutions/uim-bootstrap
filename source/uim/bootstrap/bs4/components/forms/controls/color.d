module uim.bootstrap.bs4.components.forms.controls.color;

import uim.bootstrap; 

@safe: class DBS4InputColor : DBS4Input {
	mixin(H5This!("", null, `["type":"color"]`));
}
mixin(H5Calls!("BS4InputColor"));
///
unittest {
	assert(Assert(BS4InputColor, `<input class="form-control" type="color">`));
}