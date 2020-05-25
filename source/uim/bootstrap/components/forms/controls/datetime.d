module uim.bootstrap.components.forms.controls.datetime;

import uim.bootstrap; 

class DBS4InputDateTime : DBS4Input {
	mixin(H5This!("", null, `["type":"datetime-local"]`));
}
mixin(H5Calls!("BS4InputDateTime"));
///
unittest {
	assert(Assert(BS4InputDateTime, `<input class="form-control" type="datetime-local">`));
}