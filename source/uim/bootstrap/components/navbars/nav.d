module uim.bootstrap.components.navbars.nav;

import uim.bootstrap;

class DBS4NavbarNav : DBS4Obj {
	mixin(H5This!("Ul", ["navbar-nav"]));

	mixin(MyContent!("item", "BS4NavItem"));
	unittest {
		assert(Assert(BS4NavbarNav.item, `<ul class="navbar-nav"><li class="nav-item"></li></ul>`));
	}
	
	O link(this O)(string url, string someContent) { this.item(BS4NavLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, DH5Obj someContent) { this.item(BS4NavLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, string[] someClasses, string someContent) { this.item(BS4NavLink(someClasses, ["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, string[] someClasses, DHObj[] someContent...) { this.item(BS4NavLink(someClasses, ["href":url], someContent)); return cast(O)this; }
	unittest {
		assert(Assert(BS4NavbarNav.link("#", ""), `<ul class="navbar-nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}
}

mixin(H5Calls!"BS4NavbarNav");
///
unittest {
	assert(Assert(BS4NavbarNav, `<ul class="navbar-nav"></ul>`));
}
