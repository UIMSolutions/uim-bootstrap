module uim.bootstrap.components.forms.controls.input;

import uim.bootstrap; 

class DBS4Input : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`));	
	override void _init() {
		super._init;
		_single = true;
	}

}
mixin(BS4Func!("Input"));

unittest {
	
}