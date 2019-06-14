module uim.bootstrap.components.forms.checkinput;

import uim.bootstrap;

class DBS4FormCheckInput : DBS4Obj {
	mixin(H5This!("INPUT", `["form-check-input"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4FormCheckInput");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4FormCheck == `<input class="form-check-input">`);
}
