module uim.bootstrap.bs5.classes.simple.components.forms.controls.radio;

import uim.bootstrap; 

class DBS5Radio : DBS5Input {
	mixin(H5This!("", null, `["type":"radio"]`));
}
mixin(H5Calls!("BS5Radio"));
unittest {
	assert(Assert(BS5Radio, `<input class="form-control" type="radio">`));
}