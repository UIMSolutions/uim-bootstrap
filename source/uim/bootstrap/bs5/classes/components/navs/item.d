module uim.bootstrap.bs5.classes.components.navs.item;

import uim.bootstrap;

class DBS5NavItem : DBS5Obj {
	mixin(H5This!("li", ["nav-item"], null));

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "BS5NavLink"));
	unittest {
		assert(Assert(BS5NavItem.dropdown, `<li class="dropdown nav-item"></li>`));
	}
}
mixin(H5Calls!"BS5NavItem");

unittest {
	assert(Assert(BS5NavItem, `<li class="nav-item"></li>`));
}