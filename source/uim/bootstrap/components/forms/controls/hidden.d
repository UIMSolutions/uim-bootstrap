module uim.bootstrap.components.forms.controls.hidden;

import uim.bootstrap; 

class DBS4InputHidden : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"hidden"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputHidden"));
///
unittest {
		assert(BS4InputHidden == `<input class="form-control" type="hidden">`);
}