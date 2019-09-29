module uim.bootstrap.components.forms.controls.color;

import uim.bootstrap; 

class DBS4InputColor : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"color"]`));
	override public void _init() {
		super._init;
		_single = true;
	}	
}
mixin(BS4Func!("InputColor"));
///
unittest {
	assert(BS4InputColor == `<input class="form-control" type="color">`);
}