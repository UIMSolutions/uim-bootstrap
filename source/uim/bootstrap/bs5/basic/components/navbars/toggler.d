module uim.bootstrap.bs5.basic.components.navbars.toggler;

@safe: 
import uim.bootstrap;

/* DBS5NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class DBS5NavbarToggler : DBS5ButtonObj {
	mixin(H5This!("button", ["navbar-toggler"], `["data-bs-toggle":"collapse", "aria-controls":"navbar"]`));

	O position(this O)(string value) {
		return this.classes("navbar-toggler-" ~ position);
	}

	O target(this O)(string targetId) {
		return attributes(["data-target": "#" ~ targetId]);
	}
}
mixin(H5Calls!"BS5NavbarToggler");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavbarToggler, `<button class="navbar-toggler" aria-controls="navbar" data-bs-toggle="collapse" type="button"></button>`);
}
