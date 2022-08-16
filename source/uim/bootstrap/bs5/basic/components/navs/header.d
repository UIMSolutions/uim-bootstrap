module uim.bootstrap.bs5.basic.components.navs.header;

@safe: 
import uim.bootstrap;

class DBS5NavHeader : DBS5Obj {
	mixin(H5This!("li", ["nav-header"]));
}
mixin(H5Calls!"BS5NavHeader");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavHeader, `<li class="nav-header"></li>`);
}}