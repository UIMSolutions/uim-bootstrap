module uim.bootstrap.bs5.classes.simple.components.forms.controls.text;

import uim.bootstrap; 

class DBS5InputText : DBS5Input {
	mixin(H5This!("", null, `["type":"text"]`));
}
mixin(H5Calls!("BS5InputText"));
///
unittest {
	assert(Assert(BS5InputText, `<input class="form-control" type="text">`));
}