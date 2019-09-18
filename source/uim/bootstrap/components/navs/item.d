module uim.bootstrap.components.navs.item;

import uim.bootstrap;

class DBS4NavItem : DBS4Obj {
	mixin(H5This!("li", `["nav-item"]`));
	override public void _init() {
		super._init;
	}

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "BS4NavLink"));
	unittest {
		assert(BS4NavItem.dropdown == `<li class="dropdown nav-item"></li>`);
	}
}
mixin(BS4Short!"NavItem");

unittest {
	assert(BS4NavItem == `<li class="nav-item"></li>`);
}