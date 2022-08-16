﻿module uim.bootstrap.bs4.components.navs.pills;

@safe: 
import uim.bootstrap;

class DBS4NavPills : DBS4Obj {
	mixin(H5This!("UL", ["nav", "nav-pills"], `["role":"tablist"]`));
	mixin(MyContent!("item", "BS4NavItem"));
}
mixin(H5Calls!"BS4NavPills");

version(test_uim_bootstrap) { unittest {
	assert(BS4NavPills, `<ul class="nav nav-pills" role="tablist"></ul>`);
}}