module uim.bootstrap.bs4.components.forms.customcontrols.input;

import uim.bootstrap;

@safe: class DBS4CustomInput : DBS4Obj {
	mixin(H5This!("INPUT", ["custom-control-input"], null, true));
	override public void _init() {
		super._init;
		_single = true;
	}

	unittest {
		assert(Assert(BS4CustomInput, `<input class="custom-control-input">`));
	}

}
mixin(H5Calls!"BS4CustomInput");

unittest {
}
