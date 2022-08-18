module uim.bootstrap.bs4.components.forms.controls.time;

@safe: 
import uim.bootstrap; 

class DBS4InputTime : DBS4Input {
	mixin(H5This!("", null, `["type":"time"]`));
}
mixin(H5Calls!("BS4InputTime"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputTime, == `<input class="form-control" type="time">`);
}}