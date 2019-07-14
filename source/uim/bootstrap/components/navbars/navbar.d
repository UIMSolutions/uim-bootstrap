module uim.bootstrap.components.navbars.navbar;

import uim.bootstrap;

class DBS4NavBar : DBS4Obj {
	mixin(H5This!("NAV", `["navbar"]`));
	override public void init() {
		super.init;
	}

	O light(this O)(bool value = true) { return this.classes("navbar-light"); }
	unittest {
		assert(BS4NavBar.light == `<nav class="navbar navbar-light"></nav>`);
	}
	
	O dark(this O)(bool value = true) { return this.classes("navbar-dark"); }
	unittest {
		assert(BS4NavBar.dark == `<nav class="navbar navbar-dark"></nav>`);
	}

	O expand(this O)(string screenSize) { return this.classes("navbar-expand-"~screenSize); }
	unittest {
		assert(BS4NavBar.expand("lg") == `<nav class="navbar navbar-expand-lg"></nav>`);
	}
}
mixin(H5Short!"BS4NavBar");

unittest {
	
	
	writeln(BS4NavBar);
	assert(BS4NavBar == `<nav class="navbar"></nav>`);
}