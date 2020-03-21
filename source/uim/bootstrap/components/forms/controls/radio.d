module uim.bootstrap.components.forms.controls.radio;

import uim.bootstrap; 

class DBS4InputRadio : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"radio"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputRadio"));
unittest {
	assert(Assert(BS4InputRadio, `<input class="form-control" type="radio">`));
}