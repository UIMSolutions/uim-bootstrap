module uim.bootstrap.components.forms.controls.password;

import uim.bootstrap; 

class DBS4Password : DBS4Input {
	mixin(H5This!(null, ["form-control"], `["type":"password"]`));
}
mixin(H5Calls!("BS4Password"));
///
unittest {
		assert(Assert(BS4Password, `<input class="form-control" type="password">`));
}