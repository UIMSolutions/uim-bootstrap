module uim.bootstrap.components.forms.inputgroups.append;

import uim.bootstrap;

class DBS4InputGroupAppend : DBS4Obj {
	mixin(H5This!("DIV", ["input-group-append"]));

	mixin(MyContent!("button", "BS4Button"));
	unittest {
		assert(Assert(BS4InputGroupAppend.button, `<div class="input-group-append"><button class="btn" type="button"></button></div>`));
	}

	mixin(MyContent!("text", "BS4InputGroupText"));
	unittest {
		assert(Assert(BS4InputGroupAppend.text, `<div class="input-group-append"><div class="input-group-text"></div></div>`));
	}
}
mixin(H5Calls!"BS4InputGroupAppend");

unittest {
	assert(Assert(BS4InputGroupAppend, `<div class="input-group-append"></div>`));
}