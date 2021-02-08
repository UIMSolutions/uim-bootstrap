module uim.bootstrap.bs5.basic.components.forms.controls.tel;

import uim.bootstrap; 

class DBS5InputTel : DBS5Input {
	mixin(H5This!("", null, `["type":"tel"]`));
}
mixin(H5Calls!("BS5InputTel"));
///
unittest {
	assert(Assert(BS5InputTel, `<input class="form-control" type="tel">`));
}