module uim.bootstrap.components.navs.item;

import uim.bootstrap;

class DBS4NavItem : DBS4Obj {
	mixin(H5This!("LI", `["nav-item"]`));
	override public void init() {
		super.init;
	}
	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "BS4NavLink"));
}
mixin(H5Short!"BS4NavItem");

unittest {
	
	
	assert(BS4NavItem == `<li class="nav-item"></li>`);
	assert(BS4NavItem.dropdown == `<li class="dropdown nav-item"></li>`);
}