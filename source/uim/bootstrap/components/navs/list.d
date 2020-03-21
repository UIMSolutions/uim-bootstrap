module uim.bootstrap.components.navs.list;

import uim.bootstrap;

class DBS4NavList : DBS4Obj {
	mixin(H5This!("UL", `["nav"]`));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "BS4NavItem"));
	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
}
mixin(BS4Short!"NavList");

unittest {
	
	
	assert(Assert(BS4NavList, `<ul class="nav"></ul>`));
	assert(Assert(BS4NavList.vertical, `<ul class="flex-column nav"></ul>`));
}