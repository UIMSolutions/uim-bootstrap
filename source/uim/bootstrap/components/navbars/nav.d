module uim.bootstrap.components.navbars.nav;

import uim.bootstrap;

class DBS4NavbarNav : DBS4Obj {
	mixin(H5This!("Ul", ["navbar-nav"]));

	mixin(MyContent!("item", "BS4NavItem"));
	unittest {
		assert(Assert(BS4NavbarNav.item, `<ul class="navbar-nav"><li class="nav-item"></li></ul>`));
	}
	
	mixin(MyContent!("link", "this.item", "BS4NavLink"));
	unittest {
		assert(Assert(BS4NavbarNav.link, `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link"></a></li></ul>`));
	}
}

mixin(H5Calls!"BS4NavbarNav");
///
unittest {
	assert(Assert(BS4NavbarNav, `<ul class="navbar-nav"></ul>`));
}
