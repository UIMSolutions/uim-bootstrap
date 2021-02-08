module uim.bootstrap.bs5.basic.components.forms.controls.password;

import uim.bootstrap; 

class DBS5Password : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"password"]`));
}
mixin(H5Calls!("BS5Password"));
///
unittest {
		assert(Assert(BS5Password, `<input class="form-control" type="password">`));
}