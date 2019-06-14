module uim.bootstrap.components.navbars.nav;

import uim.bootstrap;

class DBS4NavbarNav : DBS4Obj {
	mixin(H5This!("UL", `["navbar-nav"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4NavbarNav");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4NavbarNav == `<ul class="navbar-nav"></ul>`);
}