module uim.bootstrap.components.forms.controls.input;

import uim.bootstrap; 

class DBS4Input : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], null, true));	
	override void _init() {
		super._init;
		_single = true;
	}

}
mixin(H5Calls!("BS4Input"));

unittest {
	
}