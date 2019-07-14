module uim.bootstrap.components.forms.checkinput;

import uim.bootstrap;

class DBS4FormCheckInput : DBS4Obj {
	mixin(H5This!("INPUT", `["form-check-input"]`));
	override public void init() {
		super.init;
	}
	unittest {
		writeln(BS4FormCheckInput);
		assert(BS4FormCheckInput == `<input class="form-check-input">`);
	}
}
mixin(H5Short!"BS4FormCheckInput");

unittest {
}
