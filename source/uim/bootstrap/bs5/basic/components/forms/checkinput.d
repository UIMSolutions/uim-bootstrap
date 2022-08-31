module uim.bootstrap.bs5.basic.components.forms.checkinput;

@safe: 
import uim.bootstrap;

class DBS5FormCheckInput : DBS5Obj {
	mixin(H5This!("input", ["form-check-input"]));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!"BS5FormCheckInput");

version(test_uim_bootstrap) { unittest {
// TODO assert(BS5FormCheckInput == );
	assert(BS5FormCheckInput == `<input class="form-check-input">`);
}}
