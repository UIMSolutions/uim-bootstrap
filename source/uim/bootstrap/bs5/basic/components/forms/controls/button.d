module uim.bootstrap.bs5.basic.components.forms.controls.button;

import uim.bootstrap; 

@safe: class DBS5InputButton : DBS5Input {
	mixin(H5This!(null, null, `["type":"button"]`));
}
mixin(H5Calls!("BS5InputButton"));
unittest {
	assert(Assert(BS5InputButton,`<input class="form-control" type="button">`));
}