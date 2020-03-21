module uim.bootstrap.components.forms.controls.range;

import uim.bootstrap; 

class DBS4InputRange : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"range"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputRange"));
unittest {
	assert(Assert(BS4InputRange,`<input class="form-control" type="range">`));	
}