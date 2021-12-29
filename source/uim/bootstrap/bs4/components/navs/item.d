module uim.bootstrap.bs4.components.navs.item;

@safe: 
import uim.bootstrap;

class DBS4NavItem : DBS4Obj {
	mixin(H5This!("li", ["nav-item"], null));

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "BS4NavLink"));
	unittest {
		assert(Assert(BS4NavItem.dropdown, `<li class="dropdown nav-item"></li>`));
	}
}
mixin(H5Calls!"BS4NavItem");

unittest {
	assert(Assert(BS4NavItem, `<li class="nav-item"></li>`));
}