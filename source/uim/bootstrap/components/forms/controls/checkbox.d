module uim.bootstrap.components.forms.controls.checkbox;

import uim.bootstrap; 

class DBS4Checkbox : DBS4Input {
	mixin(H5This!(null, null, `["type":"checkbox"]`));
}
mixin(H5Calls!("BS4Checkbox"));
///
unittest {
	assert(Assert(BS4Checkbox, `<input class="form-control" type="checkbox">`));
}