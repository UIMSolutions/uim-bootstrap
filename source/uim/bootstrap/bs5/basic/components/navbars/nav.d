module uim.bootstrap.bs5.basic.components.navbars.nav;

@safe: 
import uim.bootstrap;

class DBS5NavbarNav : DBS5Obj {
	mixin(H5This!("Ul", ["navbar-nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5NavbarNav.item == `<ul class="navbar-nav"><li class="nav-item"></li></ul>`);
	}}
	
	mixin(MyContent!("link", "this.item", "BS5NavLink"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5NavbarNav.link == `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
	}}
}
mixin(H5Calls!"BS5NavbarNav");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavbarNav == `<ul class="navbar-nav"></ul>`);
}}
