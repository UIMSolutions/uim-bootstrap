module uim.bootstrap.bs5.basic.components.forms.controls.datalist;

@safe: 
import uim.bootstrap; 

class DBS5InputDatalist : DBS5Input {
	mixin(H5This!("", ["form-control"], null));
}
mixin(H5Calls!("BS5InputDatalist"));
///
unittest {
	assert(BS5InputDatalist, `<input class="form-control">`);
}