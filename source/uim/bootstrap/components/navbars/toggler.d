module uim.bootstrap.components.navbars.toggler;

import uim.bootstrap;

/* DBS4NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class DBS4NavbarToggler : DBS4ButtonObj {
	mixin(H5This!("button", `["navbar-toggler"]`, `["data-toggle":"collapse", "aria-controls":"navbar"]`));

	O position(this O)(string value) {
		return this.classes("navbar-toggler-" ~ position);
	}

	O target(this O)(string targetId) {
		return attributes(["data-target": "#" ~ targetId]);
	}
}
mixin(BS4Short!"NavbarToggler");

unittest {
	assert(Assert(BS4NavbarToggler, `<button class="navbar-toggler" aria-controls="navbar" type="button"></button>`));
}
