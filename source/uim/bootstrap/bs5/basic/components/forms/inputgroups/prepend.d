module uim.bootstrap.bs5.basic.components.forms.inputgroups.prepend;

import uim.bootstrap;

class DBS5InputGroupPrepend : DBS5Obj {
	mixin(H5This!("DIV", ["input-group-prepend"]));

	mixin(MyContent!("text", "BS5InputGroupText"));
	unittest {
		assert(Assert(BS5InputGroupPrepend.text, `<div class="input-group-prepend"><div class="input-group-text"></div></div>`));
	}
}
mixin(H5Calls!"BS5InputGroupPrepend");

unittest {
	assert(Assert(BS5InputGroupPrepend, `<div class="input-group-prepend"></div>`));
}