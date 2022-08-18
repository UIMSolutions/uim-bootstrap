module uim.bootstrap.bs4.components.forms.controls.text;

@safe: 
import uim.bootstrap; 

class DBS4InputText : DBS4Input {
	mixin(H5This!("", null, `["type":"text"]`));
}
mixin(H5Calls!("BS4InputText"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputText, == `<input class="form-control" type="text">`);
}}