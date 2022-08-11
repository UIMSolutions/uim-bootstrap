﻿module uim.bootstrap.bs4.components.navbars.nav;

@safe: 
import uim.bootstrap;

class DBS4NavbarNav : DBS4Obj {
	mixin(H5This!("Ul", ["navbar-nav"]));

	mixin(MyContent!("item", "BS4NavItem"));
	unittest {
		assert(BS4NavbarNav.item, `<ul class="navbar-nav"><li class="nav-item"></li></ul>`);
	}
	
	mixin(MyContent!("link", "this.item", "BS4NavLink"));
	unittest {
		assert(BS4NavbarNav.link, `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
	}
}

mixin(H5Calls!"BS4NavbarNav");
///
unittest {
	assert(BS4NavbarNav, `<ul class="navbar-nav"></ul>`);
}
