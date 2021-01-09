module uim.bootstrap.bs5.classes.components.forms.controls.datetime;

import uim.bootstrap; 

class DBS5InputDateTime : DBS5Input {
	mixin(H5This!("", null, `["type":"datetime-local"]`));
}
mixin(H5Calls!("BS5InputDateTime"));
///
unittest {
	assert(Assert(BS5InputDateTime, `<input class="form-control" type="datetime-local">`));
}