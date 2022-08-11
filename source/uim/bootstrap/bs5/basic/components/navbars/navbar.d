module uim.bootstrap.bs5.basic.components.navbars.navbar;

@safe: 
import uim.bootstrap;

class DBS5Navbar : DBS5Obj {
	mixin(H5This!("Nav", ["navbar"]));

	O center(this O)(bool value = true) {
		if (value) this.classes("justify-content-center");
		return cast(O)this;
	}
	unittest {
		assert(BS5Navbar.center, `<nav class="justify-content-center navbar"></nav>`);
		assert(BS5Navbar("Test").center, `<nav class="justify-content-center navbar">Test</nav>`);
	}

	O dark(this O)(bool value = true) {
		if (value) this.classes("navbar-dark");
		return cast(O)this;
	}
	unittest {
		assert(BS5Navbar.dark, `<nav class="navbar navbar-dark"></nav>`);
	}

	O expand(this O)(string screenSize) {
		this.classes("navbar-expand-" ~ screenSize);
		return cast(O)this;
	}
	///
	unittest {
		assert(BS5Navbar.expand("lg"), `<nav class="navbar navbar-expand-lg"></nav>`);
	}

	O light(this O)(bool value = true) {
		this.classes("navbar-light");
		return cast(O)this;
	}
	///
	unittest {
		assert(BS5Navbar.light, `<nav class="navbar navbar-light"></nav>`);
	}

/*
	mixin(MyContent!("nav", "DBS5NavbarNav"));
	///
	unittest
	{
		assert(BS5Navbar.nav, `<nav class="navbar"><ul class="navbar-nav"></ul></nav>`);
	}*/
}

mixin(H5Calls!"BS5Navbar");
///
unittest
{
	assert(BS5Navbar, `<nav class="navbar"></nav>`);
}
