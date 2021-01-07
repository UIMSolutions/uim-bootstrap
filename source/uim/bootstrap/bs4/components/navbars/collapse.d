module uim.bootstrap.bs4.components.navbars.collapse;

import uim.bootstrap;

class DBS4NavbarCollapse : DBS4Obj {
	mixin(H5This!("div", ["collapse", "navbar-collapse"]));
	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS4NavbarCollapse");
///
unittest {
	assert(Assert(BS4NavbarCollapse, `<div class="collapse navbar-collapse"></div>`));
}