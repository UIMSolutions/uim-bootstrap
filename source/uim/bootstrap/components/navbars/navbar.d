module uim.bootstrap.components.navbars.navbar;

import uim.bootstrap;

class DBS4Navbar : DBS4Obj {
	mixin(H5This!("NAV", `["navbar"]`));
	override public void init() {
		super.init;
	}

	O light(this O)(bool value = true) { return this.classes("navbar-light"); }
	unittest {
		assert(BS4Navbar.light == `<nav class="navbar navbar-light"></nav>`);
	}
	
	O dark(this O)(bool value = true) { return this.classes("navbar-dark"); }
	unittest {
		assert(BS4Navbar.dark == `<nav class="navbar navbar-dark"></nav>`);
	}

	O expand(this O)(string screenSize) { return this.classes("navbar-expand-"~screenSize); }
	unittest {
		assert(BS4Navbar.expand("lg") == `<nav class="navbar navbar-expand-lg"></nav>`);
	}
}
mixin(BS4Short!"Navbar");

unittest {
	
	
	writeln(BS4Navbar);
	assert(BS4Navbar == `<nav class="navbar"></nav>`);
}