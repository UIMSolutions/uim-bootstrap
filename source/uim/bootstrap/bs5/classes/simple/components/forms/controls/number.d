module uim.bootstrap.bs5.classes.simple.components.forms.controls.number;

import uim.bootstrap; 

class DBS5InputNumber : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"number"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputNumber"));
///
unittest {
	assert(Assert(BS5InputNumber, `<input class="form-control" type="number">`));
}