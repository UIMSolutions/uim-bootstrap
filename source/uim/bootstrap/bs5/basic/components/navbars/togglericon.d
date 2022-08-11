module uim.bootstrap.bs5.basic.components.navbars.togglericon;

@safe: 
import uim.bootstrap;

class DBS5NavbarTogglerIcon : DBS5Obj {
	mixin(H5This!("Span", ["navbar-toggler-icon"]));
}
mixin(H5Calls!"BS5NavbarTogglerIcon");

unittest {
//	assert(BS5NavbarTogglerIcon, `<div class="btn-group" role="group"></div>`);
}