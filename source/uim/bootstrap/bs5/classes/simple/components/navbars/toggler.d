module uim.bootstrap.bs5.classes.simple.components.navbars.toggler;

import uim.bootstrap;

/* DBS5NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class DBS5NavbarToggler : DBS5ButtonObj {
	mixin(H5This!("button", ["navbar-toggler"], `["data-toggle":"collapse", "aria-controls":"navbar"]`));

	O position(this O)(string value) {
		return this.classes("navbar-toggler-" ~ position);
	}

	O target(this O)(string targetId) {
		return attributes(["data-target": "#" ~ targetId]);
	}
}
mixin(H5Calls!"BS5NavbarToggler");

unittest {
	assert(Assert(BS5NavbarToggler, `<button class="navbar-toggler" aria-controls="navbar" type="button"></button>`));
}
