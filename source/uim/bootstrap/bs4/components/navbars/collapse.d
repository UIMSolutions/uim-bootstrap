﻿module uim.bootstrap.bs4.components.navbars.collapse;

@safe: 
import uim.bootstrap;

class DBS4NavbarCollapse : DBS4Obj {
	mixin(H5This!("div", ["collapse", "navbar-collapse"]));

}
mixin(H5Calls!"BS4NavbarCollapse");

version(test_uim_bootstrap) { unittest {
	assert(BS4NavbarCollapse == `<div class="collapse navbar-collapse"></div>`);
}}