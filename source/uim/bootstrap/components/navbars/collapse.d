module uim.bootstrap.components.navbars.collapse;

import uim.bootstrap;

class DBS4NavbarCollapse : DBS4Obj {
	mixin(H5This!("DIV", `["collapse", "navbar-collapse"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"NavbarCollapse");

unittest {
	

	assert(BS4NavbarCollapse == `<div class="collapse navbar-collapse"></div>`);
}