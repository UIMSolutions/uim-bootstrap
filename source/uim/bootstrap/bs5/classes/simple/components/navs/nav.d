module uim.bootstrap.bs5.classes.simple.components.navs.nav;

import uim.bootstrap;

class DBS5Nav : DBS5Obj {
	mixin(H5This!("Ul", ["nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	unittest {
		assert(Assert(BS5Nav.item, `<ul class="nav"><li class="nav-item"></li></ul>`));
	}

	mixin(MyContent!("header", "BS5NavHeader"));
	unittest {
		assert(Assert(BS5Nav.header, `<ul class="nav"><li class="nav-header"></li></ul>`));
	}

	mixin(MyContent!("link", "this.item", "BS5NavLink"));
	unittest {
		assert(Assert(BS5Nav.link, `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`));
	}

	O pills(this O)(bool mode = true) { if (mode) this.classes("nav-pills"); return cast(O)this; }
	unittest {
		assert(Assert(BS5Nav.pills, `<ul class="nav nav-pills"></ul>`));
	}
}
mixin(H5Calls!"BS5Nav");

unittest {
	assert(Assert(BS5Nav, `<ul class="nav"></ul>`));
}