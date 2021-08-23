﻿module uim.bootstrap.bs5.basic.components.navs.pills;

import uim.bootstrap;

@safe: class DBS5NavPills : DBS5Obj {
	mixin(H5This!("UL", ["nav", "nav-pills"], `["role":"tablist"]`));
	mixin(MyContent!("item", "BS5NavItem"));
}
mixin(H5Calls!"BS5NavPills");

unittest {
	assert(Assert(BS5NavPills, `<ul class="nav nav-pills" role="tablist"></ul>`));
}