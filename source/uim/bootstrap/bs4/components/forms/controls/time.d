module uim.bootstrap.bs4.components.forms.controls.time;

import uim.bootstrap; 

@safe: class DBS4InputTime : DBS4Input {
	mixin(H5This!("", null, `["type":"time"]`));
}
mixin(H5Calls!("BS4InputTime"));
///
unittest {
	assert(Assert(BS4InputTime, `<input class="form-control" type="time">`));
}