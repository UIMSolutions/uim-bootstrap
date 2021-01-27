module uim.bootstrap.bs5.classes.simple.components.navbars.collapse;

import uim.bootstrap;

class DBS5NavbarCollapse : DBS5Obj {
	mixin(H5This!("div", ["collapse", "navbar-collapse"]));
	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS5NavbarCollapse");
///
unittest {
	assert(Assert(BS5NavbarCollapse, `<div class="collapse navbar-collapse"></div>`));
}