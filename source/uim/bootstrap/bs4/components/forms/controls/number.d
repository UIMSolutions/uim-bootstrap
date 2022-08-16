module uim.bootstrap.bs4.components.forms.controls.number;

@safe: 
import uim.bootstrap; 

class DBS4InputNumber : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"number"]`));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputNumber"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputNumber == `<input class="form-control" type="number">`);
}}