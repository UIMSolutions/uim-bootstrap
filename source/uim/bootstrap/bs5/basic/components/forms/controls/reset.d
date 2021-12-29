﻿module uim.bootstrap.bs5.basic.components.forms.controls.reset;

@safe: 
import uim.bootstrap; 

class DBS5InputReset : DBS5Input {
	mixin(H5This!("", null, `["type":"reset"]`));
}
mixin(H5Calls!("BS5InputReset"));
///
unittest {
	assert(Assert(BS5InputReset, `<input class="form-control" type="reset">`));
}