﻿module uim.bootstrap.bs5.basic.components.forms.checklabel;

import uim.bootstrap;

@safe: class DBS5FormCheckLabel : DBS5Obj {
	mixin(H5This!("LABEL", ["form-check-label"]));
}
mixin(H5Calls!"BS5FormCheckLabel");

unittest {
	assert(Assert(BS5FormCheckLabel, `<label class="form-check-label"></label>`));
}
