module uim.bootstrap.bs5.basic.components.tabs.list;

import uim.bootstrap;

@safe: class DBS5TabList : DBS5Obj {
	mixin(H5This!("UL", ["nav"], `["role":"tablist"]`));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("item", "BS5NavItem"));

	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
}
mixin(H5Calls!"BS5TabList");

unittest {
	
	
	assert(Assert(BS5TabList, `<ul class="nav" role="tablist"></ul>`));
	assert(Assert(BS5TabList.vertical, `<ul class="flex-column nav" role="tablist"></ul>`));
}