module uim.bootstrap.components.forms.controls.password;

import uim.bootstrap; 

class DBS4InputPassword : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"password"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputPassword"));
///
unittest {
		assert(Assert(BS4InputPassword, `<input class="form-control" type="password">`));
}