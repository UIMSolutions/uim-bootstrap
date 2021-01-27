module uim.bootstrap.bs5.classes.simple.components.forms.customcontrols.input;

import uim.bootstrap;

class DBS5CustomInput : DBS5Obj {
	mixin(H5This!("INPUT", ["custom-control-input"], null, true));
	override public void _init() {
		super._init;
		_single = true;
	}

	unittest {
		assert(Assert(BS5CustomInput, `<input class="custom-control-input">`));
	}

}
mixin(H5Calls!"BS5CustomInput");

unittest {
}
