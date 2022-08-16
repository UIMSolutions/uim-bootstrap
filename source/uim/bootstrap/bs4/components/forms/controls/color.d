module uim.bootstrap.bs4.components.forms.controls.color;

@safe: 
import uim.bootstrap; 

class DBS4InputColor : DBS4Input {
	mixin(H5This!("", null, `["type":"color"]`));
}
mixin(H5Calls!("BS4InputColor"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputColor, `<input class="form-control" type="color">`);
}}