module uim.bootstrap.components.forms.inputgroups.text;

import uim.bootstrap;

class DBS4InputGroupText : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-text"]`));
}
mixin(BS4Short!"InputGroupText");

unittest {
	assert(Assert(BS4InputGroupText, `<div class="input-group-text"></div>`));
}