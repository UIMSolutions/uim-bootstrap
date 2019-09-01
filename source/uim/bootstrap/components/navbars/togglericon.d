module uim.bootstrap.components.navbars.togglericon;

import uim.bootstrap;

class DBS4NavbarTogglerIcon : DBS4Obj {
	mixin(H5This!("SPAN", `["navbar-toggler-icon"]`));
	override public void init() {
		super.init;
	}
}
mixin(BS4Short!"NavbarTogglerIcon");

unittest {
	

//	assert(BS4NavbarTogglerIcon == `<div class="btn-group" role="group"></div>`);
}