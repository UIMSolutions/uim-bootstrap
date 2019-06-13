module uim.bs4.components.tabs.list;

import uim.bs4;

class DBS4TabList : DBS4Obj {
	mixin(H5This!("UL", `["nav"]`, `["role":"tablist"]`));
	override public void init() {
		super.init;
	}

	mixin(MyContent!("item", "BS4NavItem"));

	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
}
mixin(H5Short!"BS4TabList");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4TabList == `<ul class="nav" role="tablist"></ul>`);
	assert(BS4TabList.vertical == `<ul class="flex-column nav" role="tablist"></ul>`);
}