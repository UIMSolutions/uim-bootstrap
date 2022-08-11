﻿module uim.bootstrap.bs4.components.forms.inputgroups.prepend;

@safe: 
import uim.bootstrap;

class DBS4InputGroupPrepend : DBS4Obj {
	mixin(H5This!("DIV", ["input-group-prepend"]));

	mixin(MyContent!("text", "BS4InputGroupText"));
	unittest {
		assert(BS4InputGroupPrepend.text, `<div class="input-group-prepend"><div class="input-group-text"></div></div>`);
	}
}
mixin(H5Calls!"BS4InputGroupPrepend");

unittest {
	assert(BS4InputGroupPrepend, `<div class="input-group-prepend"></div>`);
}