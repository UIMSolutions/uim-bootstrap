module uim.bootstrap.components.navs.tabs;

import uim.bootstrap;

class DBS4NavTabs : DBS4Obj {
	mixin(H5This!("UL", `["nav", "nav-tabs"]`, `["role":"tablist"]`));
	mixin(MyContent!("item", "BS4NavItem"));
}
mixin(BS4Short!"NavTabs");

unittest {
	assert(BS4NavTabs == `<ul class="nav nav-tabs" role="tablist"></ul>`);
}