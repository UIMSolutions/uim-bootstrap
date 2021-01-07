module uim.bootstrap.bs4.components.navs.nav;

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

	mixin(MyContent!("link", "this.item", "BS4NavLink"));
	unittest {
		assert(Assert(BS4Nav.link, `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}

	O pills(this O)(bool mode = true) { if (mode) this.classes("nav-pills"); return cast(O)this; }
	unittest {
		assert(Assert(BS4Nav.pills, `<ul class="nav nav-pills"></ul>`));
	}
}
mixin(H5Calls!"BS4Nav");

unittest {
	assert(Assert(BS4Nav, `<ul class="nav"></ul>`));
}