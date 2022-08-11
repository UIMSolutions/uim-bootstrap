module uim.bootstrap.bs4.components.forms.checkinput;

@safe: 
import uim.bootstrap;

class DBS4FormCheckInput : DBS4Obj {
	mixin(H5This!("input", ["form-check-input"]));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
	unittest {
		assert(BS4FormCheckInput, `<input class="form-check-input">`);
	}
}
mixin(H5Calls!"BS4FormCheckInput");

unittest {
}
