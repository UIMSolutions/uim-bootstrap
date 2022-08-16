module uim.bootstrap.bs4.components.navs.tabs;

@safe: 
import uim.bootstrap;

class DBS4NavTabs : DBS4Obj {
	mixin(H5This!("UL", ["nav", "nav-tabs"], `["role":"tablist"]`));

	mixin(MyContent!("item", "BS4NavItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4NavTabs.item, `<ul class="nav nav-tabs" role="tablist"><li class="nav-item"></li></ul>`);
	}
}
mixin(H5Calls!"BS4NavTabs");

version(test_uim_bootstrap) { unittest {
	assert(BS4NavTabs, `<ul class="nav nav-tabs" role="tablist"></ul>`);
}