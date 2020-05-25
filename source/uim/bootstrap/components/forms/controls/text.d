module uim.bootstrap.components.forms.controls.text;

import uim.bootstrap; 

class DBS4InputText : DBS4Input {
	mixin(H5This!("", null, `["type":"text"]`));
}
mixin(H5Calls!("BS4InputText"));
///
unittest {
	assert(Assert(BS4InputText, `<input class="form-control" type="text">`));
}