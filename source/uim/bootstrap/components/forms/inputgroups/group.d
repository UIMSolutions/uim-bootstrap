module uim.bootstrap.components.forms.inputgroups.group;

import uim.bootstrap;

class DBS4InputGroup : DBS4Obj {
	mixin(H5This!("UL", `["input-group"]`));
	override public void init() {
		super.init;
	}
	
	O size(this O)(string sizeName) { return this.classes("input-group-"~sizeName); }
}
mixin(H5Short!"BS4InputGroup");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4InputGroup == `<div class="input-group"></div>`);
	assert(BS4InputGroup.size("sm") == `<div class="input-group input-group-sm"></div>`);
}
