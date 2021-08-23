module uim.bootstrap.bs4.components.forms.controls.tel;

import uim.bootstrap; 

@safe: class DBS4InputTel : DBS4Input {
	mixin(H5This!("", null, `["type":"tel"]`));
}
mixin(H5Calls!("BS4InputTel"));
///
unittest {
	assert(Assert(BS4InputTel, `<input class="form-control" type="tel">`));
}