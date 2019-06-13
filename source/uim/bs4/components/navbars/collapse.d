module uim.bs4.components.navbars.collapse;

import uim.bs4;

class DBS4NavbarCollapse : DBS4Obj {
	mixin(H5This!("DIV", `["collapse", "navbar-collapse"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4NavbarCollapse");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4NavbarCollapse == `<div class="collapse navbar-collapse"></div>`);
}