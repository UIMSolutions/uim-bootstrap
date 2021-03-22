﻿module uim.bootstrap.bs4.components.forms.controls.button;

import uim.bootstrap; 

@safe: class DBS4InputButton : DBS4Input {
	mixin(H5This!(null, null, `["type":"button"]`));
}
mixin(H5Calls!("BS4InputButton"));
unittest {
	assert(Assert(BS4InputButton,`<input class="form-control" type="button">`));
}