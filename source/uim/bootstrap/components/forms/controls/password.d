module uim.bootstrap.components.forms.controls.password;

import uim.bootstrap; 

class DBS4InputPassword : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"password"]`));
}
mixin(H5Calls!("BS4InputPassword"));
///
unittest {
		assert(Assert(BS4InputPassword, `<input class="form-control" type="password">`));
}