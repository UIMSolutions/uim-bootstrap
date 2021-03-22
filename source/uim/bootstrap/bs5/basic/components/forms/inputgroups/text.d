module uim.bootstrap.bs5.basic.components.forms.inputgroups.text;

import uim.bootstrap;

@safe: class DBS5InputGroupText : DBS5Obj {
	mixin(H5This!("DIV", ["input-group-text"]));
}
mixin(H5Calls!"BS5InputGroupText");

unittest {
	assert(Assert(BS5InputGroupText, `<div class="input-group-text"></div>`));
}