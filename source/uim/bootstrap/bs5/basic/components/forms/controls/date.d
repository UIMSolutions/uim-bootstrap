module uim.bootstrap.bs5.basic.components.forms.controls.date;

import uim.bootstrap; 

class DBS5InputDate : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"date"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputDate"));
///
unittest {
	assert(Assert(BS5InputDate, `<input class="form-control" type="date">`));
}