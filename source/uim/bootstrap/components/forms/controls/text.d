module uim.bootstrap.components.forms.controls.text;

import uim.bootstrap; 

class DBS4InputText : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"text"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputText"));
///
unittest {
	assert(Assert(BS4InputText, `<input class="form-control" type="text">`));
}