module uim.bootstrap.components.navs.nav;

import uim.bootstrap;

class DBS4Nav : DBS4Obj {
	mixin(H5This!("Ul", ["nav"]));

	mixin(MyContent!("item", "BS4NavItem"));
	unittest {
		assert(Assert(BS4Nav.item, `<ul class="nav"><li class="nav-item"></li></ul>`));
	}

	mixin(MyContent!("header", "BS4NavHeader"));
	unittest {
		assert(Assert(BS4Nav.header, `<ul class="nav"><li class="nav-header"></li></ul>`));
	}

	O link(this O)(string url, string someContent) { this.item(BS4NavLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, DH5Obj[] someContent...) { this.item(BS4NavLink(["href":url], someContent)); return cast(O)this; }
	O link(this O)(string url, string[] linkClasses, string linkContent) { this.item(BS4NavLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string url, string[] linkClasses, DH5Obj[] linkContent...) { this.item(BS4NavLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }

	O link(this O)(string[] itemClasses, string url, string linkContent) { this.item(itemClasses, BS4NavLink(["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, DH5Obj[] linkContent...) { this.item(itemClasses, BS4NavLink(["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, string[] linkClasses, string linkContent) { this.item(itemClasses, BS4NavLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	O link(this O)(string[] itemClasses, string url, string[] linkClasses, DH5Obj[] linkContent...) { this.item(itemClasses, BS4NavLink(linkClasses, ["href":url], linkContent)); return cast(O)this; }
	unittest {
		assert(Assert(BS4Nav.link("#", ""), `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}
}
mixin(H5Calls!"BS4Nav");

unittest {
	assert(Assert(BS4Nav, `<ul class="nav"></ul>`));
}