module uim.bootstrap.components.forms.controls.email;

import uim.bootstrap; 

class DBS4InputEmail : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"email"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputEmail"));
///
unittest {
	assert(BS4InputEmail == `<input class="form-control" type="email">`);
}