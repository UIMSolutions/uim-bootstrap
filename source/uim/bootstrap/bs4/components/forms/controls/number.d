module uim.bootstrap.bs4.components.forms.controls.number;

import uim.bootstrap; 

class DBS4InputNumber : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"number"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputNumber"));
///
unittest {
	assert(Assert(BS4InputNumber, `<input class="form-control" type="number">`));
}