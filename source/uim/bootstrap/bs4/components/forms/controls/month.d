module uim.bootstrap.bs4.components.forms.controls.month;

@safe: 
import uim.bootstrap; 

class DBS4InputMonth : DBS4Input {
	mixin(H5This!("", ["form-control"], `["type":"month"]`));
}
mixin(H5Calls!("BS4InputMonth"));
///
unittest {
	assert(Assert(BS4InputMonth, `<input class="form-control" type="month">`));
}