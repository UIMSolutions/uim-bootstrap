module uim.bootstrap.components.forms.controls.button;

import uim.bootstrap; 

class DBS4InputButton : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"button"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputButton"));
unittest {
	assert(Assert(BS4InputButton,`<input class="form-control" type="button">`));
}