module uim.bootstrap.components.forms.controls.submit;

import uim.bootstrap; 

class DBS4InputSubmit : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"submit"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputSubmit"));
///
unittest {
	assert(BS4InputSubmit == `<input class="form-control" type="submit">`);
}