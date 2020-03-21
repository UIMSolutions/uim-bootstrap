module uim.bootstrap.components.navs.pills;

import uim.bootstrap;

class DBS4NavPills : DBS4Obj {
	mixin(H5This!("UL", ["nav", "nav-pills"], `["role":"tablist"]`));
	mixin(MyContent!("item", "BS4NavItem"));
}
mixin(H5Calls!"BS4NavPills");

unittest {
	assert(Assert(BS4NavPills, `<ul class="nav nav-pills" role="tablist"></ul>`));
}