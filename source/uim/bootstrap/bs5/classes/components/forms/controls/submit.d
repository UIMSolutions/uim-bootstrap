module uim.bootstrap.bs5.classes.components.forms.controls.submit;

import uim.bootstrap; 

class DBS5InputSubmit : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"submit"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputSubmit"));
///
unittest {
	assert(Assert(BS5InputSubmit, `<input class="form-control" type="submit">`));
}