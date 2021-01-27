module uim.bootstrap.bs5.classes.simple.components.forms.controls.hidden;

import uim.bootstrap; 

class DBS5InputHidden : DBS5Input {
	mixin(H5This!("", null, `["type":"hidden"]`));
}
mixin(H5Calls!("BS5InputHidden"));
unittest {
		assert(Assert(BS5InputHidden, `<input class="form-control" type="hidden">`));
}