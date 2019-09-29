module uim.bootstrap.components.forms.controls.month;

import uim.bootstrap; 

class DBS4InputMonth : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"month"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputMonth"));
///
unittest {
	assert(BS4InputMonth == `<input class="form-control" type="month">`);
}