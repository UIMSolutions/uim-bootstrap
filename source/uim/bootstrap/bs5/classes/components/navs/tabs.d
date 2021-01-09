module uim.bootstrap.bs5.classes.components.navs.tabs;

import uim.bootstrap;

class DBS5NavTabs : DBS5Obj {
	mixin(H5This!("UL", ["nav", "nav-tabs"], `["role":"tablist"]`));

	mixin(MyContent!("item", "BS5NavItem"));
	unittest {
		assert(Assert(BS5NavTabs.item, `<ul class="nav nav-tabs" role="tablist"><li class="nav-item"></li></ul>`));
	}
}
mixin(H5Calls!"BS5NavTabs");

unittest {
	assert(Assert(BS5NavTabs, `<ul class="nav nav-tabs" role="tablist"></ul>`));
}