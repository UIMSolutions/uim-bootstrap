module uim.bootstrap.bs4.components.forms.controls.month;

@safe: 
import uim.bootstrap; 

class DBS4InputMonth : DBS4Input {
	mixin(H5This!("", ["form-control"], `["type":"month"]`));
}
mixin(H5Calls!("BS4InputMonth"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputMonth, `<input class="form-control" type="month">`);
}}