module uim.bootstrap.components.forms.controls.time;

import uim.bootstrap; 

class DBS4InputTime : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"time"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputTime"));
///
unittest {
	assert(Assert(BS4InputTime, `<input class="form-control" type="time">`));
}