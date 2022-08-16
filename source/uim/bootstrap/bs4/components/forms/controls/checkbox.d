module uim.bootstrap.bs4.components.forms.controls.checkbox;

@safe: 
import uim.bootstrap; 

class DBS4Checkbox : DBS4Input {
	mixin(H5This!(null, null, `["type":"checkbox"]`));
}
mixin(H5Calls!("BS4Checkbox"));
///
version(test_uim_bootstrap) { unittest {
	assert(BS4Checkbox, `<input class="form-control" type="checkbox">`);
}