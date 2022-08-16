module uim.bootstrap.bs4.components.forms.controls.email;

@safe: 
import uim.bootstrap; 

class DBS4InputEmail : DBS4Input {
	mixin(H5This!(null, null, `["type":"email"]`));
}
mixin(H5Calls!("BS4InputEmail"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputEmail, `<input class="form-control" type="email">`);
}}