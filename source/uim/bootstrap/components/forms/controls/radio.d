module uim.bootstrap.components.forms.controls.radio;

import uim.bootstrap; 

class DBS4InputRadio : DBS4Input {
	mixin(H5This!("", null, `["type":"radio"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputRadio"));
unittest {
	assert(Assert(BS4InputRadio, `<input class="form-control" type="radio">`));
}