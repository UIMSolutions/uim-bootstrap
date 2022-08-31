module uim.bootstrap.bs5.basic.components.forms.customcontrols.input;

@safe: 
import uim.bootstrap;

class DBS5CustomInput : DBS5Obj {
	mixin(H5This!("INPUT", ["custom-control-input"], null, true));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!"BS5CustomInput");

version(test_uim_bootstrap) { unittest {
		assert(BS5CustomInput == `<input class="custom-control-input">`);
}}
