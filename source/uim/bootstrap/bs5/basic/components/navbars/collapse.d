module uim.bootstrap.bs5.basic.components.navbars.collapse;

@safe: 
import uim.bootstrap;

class DBS5NavbarCollapse : DBS5Obj {
	mixin(H5This!("div", ["collapse", "navbar-collapse"]));

}
mixin(H5Calls!"BS5NavbarCollapse");
///
unittest {
	assert(BS5NavbarCollapse, `<div class="collapse navbar-collapse"></div>`);
}