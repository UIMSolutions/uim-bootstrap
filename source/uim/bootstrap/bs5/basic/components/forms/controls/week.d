﻿module uim.bootstrap.bs5.basic.components.forms.controls.week;

import uim.bootstrap; 

@safe: class DBS5InputWeek : DBS5Input {
	mixin(H5This!("", null, `["type":"week"]`));
}
mixin(H5Calls!("BS5InputWeek"));
///
unittest {
	assert(Assert(BS5InputWeek, `<input class="form-control" type="week">`));
}