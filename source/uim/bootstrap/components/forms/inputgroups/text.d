module uim.bootstrap.components.forms.inputgroups.text;

import uim.bootstrap;

class DBS4InputGroupText : DBS4Obj {
	mixin(H5This!("DIV", ["input-group-text"]));
}
mixin(H5Calls!"BS4InputGroupText");

unittest {
	assert(Assert(BS4InputGroupText, `<div class="input-group-text"></div>`));
}