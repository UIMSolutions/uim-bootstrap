module uim.bootstrap.components.navbars.togglericon;

import uim.bootstrap;

class DBS4NavbarTogglerIcon : DBS4Obj {
	mixin(H5This!("Span", ["navbar-toggler-icon"]));
}
mixin(H5Calls!"BS4NavbarTogglerIcon");

unittest {
//	assert(Assert(BS4NavbarTogglerIcon, `<div class="btn-group" role="group"></div>`);
}