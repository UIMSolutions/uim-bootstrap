﻿module uim.bootstrap.bs4.components.forms.controls.reset;

import uim.bootstrap; 

@safe: class DBS4InputReset : DBS4Input {
	mixin(H5This!("", null, `["type":"reset"]`));
}
mixin(H5Calls!("BS4InputReset"));
///
unittest {
	assert(Assert(BS4InputReset, `<input class="form-control" type="reset">`));
}