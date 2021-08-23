module uim.bootstrap.bs5.basic.components.forms.controls.checkbox;

import uim.bootstrap; 

@safe: class DBS5Checkbox : DBS5Input {
	mixin(H5This!(null, null, `["type":"checkbox"]`));
}
mixin(H5Calls!("BS5Checkbox"));
///
unittest {
	assert(Assert(BS5Checkbox, `<input class="form-control" type="checkbox">`));
}