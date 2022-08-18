module uim.bootstrap.bs4.components.forms.controls.radio;

@safe: 
import uim.bootstrap; 

class DBS4Radio : DBS4Input {
	mixin(H5This!("", null, `["type":"radio"]`));
}
mixin(H5Calls!("BS4Radio"));

version(test_uim_bootstrap) { unittest {
	assert(BS4Radio, == `<input class="form-control" type="radio">`);
}}