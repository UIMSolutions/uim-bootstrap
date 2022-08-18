module uim.bootstrap.bs4.components.navbars.togglericon;

@safe: 
import uim.bootstrap;

class DBS4NavbarTogglerIcon : DBS4Obj {
	mixin(H5This!("Span", ["navbar-toggler-icon"]));
}
mixin(H5Calls!"BS4NavbarTogglerIcon");

version(test_uim_bootstrap) { unittest {
//	assert(BS4NavbarTogglerIcon, == `<div class="btn-group" role="group"></div>`);
}}