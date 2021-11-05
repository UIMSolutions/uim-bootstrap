module uim.bootstrap.bs4.components.forms.checklabel;

import uim.bootstrap;

@safe: class DBS4FormCheckLabel : DBS4Obj {
	mixin(H5This!("LABEL", ["form-check-label"]));
}
mixin(H5Calls!"BS4FormCheckLabel");

unittest {
	assert(Assert(BS4FormCheckLabel, `<label class="form-check-label"></label>`));
}
