module uim.bootstrap.bs4.components.forms.controls.image;

@safe: 
import uim.bootstrap; 

class DBS4InputImage : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"image"]`));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputImage"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputImage == `<input class="form-control" type="image">`);
}}