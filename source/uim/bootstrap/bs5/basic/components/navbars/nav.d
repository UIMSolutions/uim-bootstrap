module uim.bootstrap.bs5.basic.components.navbars.nav;

import uim.bootstrap;

@safe: class DBS5NavbarNav : DBS5Obj {
	mixin(H5This!("Ul", ["navbar-nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	unittest {
		assert(Assert(BS5NavbarNav.item, `<ul class="navbar-nav"><li class="nav-item"></li></ul>`));
	}
	
	mixin(MyContent!("link", "this.item", "BS5NavLink"));
	unittest {
		assert(Assert(BS5NavbarNav.link, `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}
}

mixin(H5Calls!"BS5NavbarNav");
///
unittest {
	assert(Assert(BS5NavbarNav, `<ul class="navbar-nav"></ul>`));
}
