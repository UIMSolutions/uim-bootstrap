module uim.bootstrap.bs5.basic.components.forms.controls.time;

import uim.bootstrap; 

class DBS5InputTime : DBS5Input {
	mixin(H5This!("", null, `["type":"time"]`));
}
mixin(H5Calls!("BS5InputTime"));
///
unittest {
	assert(Assert(BS5InputTime, `<input class="form-control" type="time">`));
}