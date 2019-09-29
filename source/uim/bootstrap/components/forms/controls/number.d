module uim.bootstrap.components.forms.controls.number;

import uim.bootstrap; 

class DBS4InputNumber : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"number"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputNumber"));
///
unittest {
	assert(BS4InputNumber == `<input class="form-control" type="number">`);
}