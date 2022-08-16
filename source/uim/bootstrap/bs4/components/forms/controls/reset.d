module uim.bootstrap.bs4.components.forms.controls.reset;

@safe: 
import uim.bootstrap; 

class DBS4InputReset : DBS4Input {
	mixin(H5This!("", null, `["type":"reset"]`));
}
mixin(H5Calls!("BS4InputReset"));
///
version(test_uim_bootstrap) { unittest {
	assert(BS4InputReset, `<input class="form-control" type="reset">`);
}