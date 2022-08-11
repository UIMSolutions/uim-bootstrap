﻿module uim.bootstrap.bs5.basic.components.forms.controls.month;

@safe: 
import uim.bootstrap; 

class DBS5InputMonth : DBS5Input {
	mixin(H5This!("", ["form-control"], `["type":"month"]`));
}
mixin(H5Calls!("BS5InputMonth"));
///
unittest {
	assert(BS5InputMonth, `<input class="form-control" type="month">`));
}