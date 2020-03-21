module uim.bootstrap.components.forms.controls.reset;

import uim.bootstrap; 

class DBS4InputReset : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"reset"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputReset"));
///
unittest {
	assert(Assert(BS4InputReset, `<input class="form-control" type="reset">`));
}