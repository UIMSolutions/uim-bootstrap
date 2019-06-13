module uim.bs4.components.navbars.toggler;

import uim.bs4;

/* DBS4NavbarToggler - for use with collapse plugin and other navigation toggling behaviors */
class DBS4NavbarToggler : DBS4ButtonObj {
	mixin(H5This!("BUTTON", `["navbar-toggler"]`, `["data-toggle":"collapse", "aria-controls":"navbar"]`));
	override public void init() {
		super.init;
	}
	O position(this O)(string value) { return this.classes("navbar-toggler-"~position); }
	O target(this O)(string targetId) { return attributes(["data-target":"#"~targetId]); }
}
mixin(H5Short!"BS4NavbarToggler");

unittest {
	writeln("Testing ", __MODULE__);

//	assert(BS4NavbarToggler == `<div class="btn-group" role="group"></div>`);
}