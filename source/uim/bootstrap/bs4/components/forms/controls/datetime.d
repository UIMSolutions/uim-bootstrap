module uim.bootstrap.bs4.components.forms.controls.datetime;

@safe: 
import uim.bootstrap; 

class DBS4InputDateTime : DBS4Input {
	mixin(H5This!("", null, `["type":"datetime-local"]`));
}
mixin(H5Calls!("BS4InputDateTime"));
///
version(test_uim_bootstrap) { unittest {
	assert(BS4InputDateTime, `<input class="form-control" type="datetime-local">`);
}