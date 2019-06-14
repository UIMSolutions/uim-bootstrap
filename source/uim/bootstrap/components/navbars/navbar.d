module uim.bootstrap.components.navbars.navbar;

import uim.bootstrap;

class DBS4NavBar : DBS4Obj {
	mixin(H5This!("NAV", `["navbar"]`));
	override public void init() {
		super.init;
	}
	O light(this O)(bool value = true) { return this.classes("navbar-light"); }
	O dark(this O)(bool value = true) { return this.classes("navbar-dark"); }
	O expand(this O)(string screenSize) { return this.classes("navbar-expand-"~screenSize); }
}
mixin(H5Short!"BS4NavBar");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4NavBar == `<div class="navbar"></div>`);
}