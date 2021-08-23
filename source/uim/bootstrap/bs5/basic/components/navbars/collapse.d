module uim.bootstrap.bs5.basic.components.navbars.collapse;

import uim.bootstrap;

@safe: class DBS5NavbarCollapse : DBS5Obj {
	mixin(H5This!("div", ["collapse", "navbar-collapse"]));

}
mixin(H5Calls!"BS5NavbarCollapse");
///
unittest {
	assert(Assert(BS5NavbarCollapse, `<div class="collapse navbar-collapse"></div>`));
}