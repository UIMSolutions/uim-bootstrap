module uim.bs4.components.forms.customcontrols.input;

import uim.bs4;

class DBS4CustomInput : DBS4Obj {
	mixin(H5This!("INPUT", `["custom-input"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CustomInput");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CustomInput == `<input class="form-check-input">`);
}
