module uim.bootstrap.components.forms.checkinput;

import uim.bootstrap;

class DBS4FormCheckInput : DBS4Obj {
	mixin(H5This!("input", `["form-check-input"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
	unittest {
		assert(Assert(BS4FormCheckInput, `<input class="form-check-input">`));
	}
}
mixin(BS4Short!"FormCheckInput");

unittest {
}
