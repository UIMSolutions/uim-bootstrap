module uim.bootstrap.bs4.components.forms.controls.hidden;

@safe: 
import uim.bootstrap; 

class DBS4InputHidden : DBS4Input {
	mixin(H5This!("", null, `["type":"hidden"]`));
}
mixin(H5Calls!("BS4InputHidden"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputHidden, == `<input class="form-control" type="hidden">`);
}}