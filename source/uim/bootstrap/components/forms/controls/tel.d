module uim.bootstrap.components.forms.controls.tel;

import uim.bootstrap; 

class DBS4InputTel : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"tel"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputTel"));
///
unittest {
	assert(BS4InputTel == `<input class="form-control" type="tel">`);
}