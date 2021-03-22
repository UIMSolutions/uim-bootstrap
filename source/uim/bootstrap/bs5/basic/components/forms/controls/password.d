module uim.bootstrap.bs5.basic.components.forms.controls.password;

import uim.bootstrap; 

@safe: class DBS5InputPassword : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"password"]`));
}
mixin(H5Calls!("BS5InputPassword"));
///
unittest {
		assert(Assert(BS5InputPassword, `<input class="form-control" type="password">`));
}