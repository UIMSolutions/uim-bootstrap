module uim.bootstrap.bs5.basic.components.forms.checkinput;

@safe: 
import uim.bootstrap;

class DBS5FormCheckInput : DBS5Obj {
	mixin(H5This!("input", ["form-check-input"]));
	override public void _init() {
		super._init;
		_single = true;
	}
	unittest {
		assert(Assert(BS5FormCheckInput, `<input class="form-check-input">`));
	}
}
mixin(H5Calls!"BS5FormCheckInput");

unittest {
}
