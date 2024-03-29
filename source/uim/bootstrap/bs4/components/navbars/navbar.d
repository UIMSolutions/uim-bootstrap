﻿module uim.bootstrap.bs4.components.navbars.navbar;

@safe: 
import uim.bootstrap;

class DBS4Navbar : DBS4Obj {
	mixin(H5This!("Nav", ["navbar"]));

	O center(this O)(bool value = true) {
		if (value) this.addClasses("justify-content-center");
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Navbar.center == `<nav class="justify-content-center navbar"></nav>`);
		assert(BS4Navbar("Test").center == `<nav class="justify-content-center navbar">Test</nav>`);
	}}

	O dark(this O)(bool value = true) {
		if (value) this.addClasses("navbar-dark");
		return cast(O)this;
	}

	O expand(this O)(string screenSize) {
		this.addClasses("navbar-expand-" ~ screenSize);
		return cast(O)this;
	}

	O light(this O)(bool value = true) {
		this.addClasses("navbar-light");
		return cast(O)this;
	}

/*
	mixin(MyContent!("nav", "DBS4NavbarNav"));
	///
	unittest
	{
		assert(BS4Navbar.nav == `<nav class="navbar"><ul class="navbar-nav"></ul></nav>`);
	}*/
}
mixin(H5Calls!"BS4Navbar");

version(test_uim_bootstrap) { unittest {
	assert(BS4Navbar == `<nav class="navbar"></nav>`);
	assert(BS4Navbar.light == `<nav class="navbar navbar-light"></nav>`);
	assert(BS4Navbar.dark == `<nav class="navbar navbar-dark"></nav>`);
	assert(BS4Navbar.expand("lg") == `<nav class="navbar navbar-expand-lg"></nav>`);
}}
