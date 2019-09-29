module uim.bootstrap.components.forms.controls.date;

import uim.bootstrap; 

class DBS4InputDate : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"date"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputDate"));
///
unittest {
	assert(BS4InputDate == `<input class="form-control" type="date">`);
}