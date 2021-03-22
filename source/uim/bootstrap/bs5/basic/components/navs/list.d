module uim.bootstrap.bs5.basic.components.navs.list;

import uim.bootstrap;

@safe: class DBS5NavList : DBS5Obj {
	mixin(H5This!("UL", ["nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
}
mixin(H5Calls!"BS5NavList");

unittest {
	assert(Assert(BS5NavList, `<ul class="nav"></ul>`));
	assert(Assert(BS5NavList.vertical, `<ul class="flex-column nav"></ul>`));
}