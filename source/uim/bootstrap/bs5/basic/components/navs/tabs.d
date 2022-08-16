module uim.bootstrap.bs5.basic.components.navs.tabs;

@safe: 
import uim.bootstrap;

class DBS5NavTabs : DBS5Obj {
	mixin(H5This!("UL", ["nav", "nav-tabs"], `["role":"tablist"]`));

	mixin(MyContent!("item", "BS5NavItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5NavTabs.item, `<ul class="nav nav-tabs" role="tablist"><li class="nav-item"></li></ul>`);
	}

	mixin(MyContent!("link", "BS5NavLink"));
}
mixin(H5Calls!"BS5NavTabs");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavTabs, `<ul class="nav nav-tabs" role="tablist"></ul>`);
}