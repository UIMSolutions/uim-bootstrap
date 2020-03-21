module uim.bootstrap.components.forms.inputgroups.group;

import uim.bootstrap;

class DBS4InputGroup : DBS4Obj {
	mixin(H5This!("DIV", `["input-group"]`));

	mixin(MyContent!("prepend", "BS4InputGroupPrepend"));
	unittest {
		assert(Assert(BS4InputGroup.prepend, `<div class="input-group"><div class="input-group-prepend"></div></div>`));
	}
	
	// Setting size of group
	O size(this O)(string sizeName) { return this.classes("input-group-"~sizeName); }
	unittest {
		assert(Assert(BS4InputGroup.size("sm"), `<div class="input-group input-group-sm"></div>`));
	}

	mixin(MyContent!("text", "BS4InputGroupText"));
	unittest {
		assert(Assert(BS4InputGroup.text, `<div class="input-group"><div class="input-group-text"></div></div>`));
	}
}
mixin(BS4Short!"InputGroup");

unittest {
		assert(Assert(BS4InputGroup, `<div class="input-group"></div>`));
}
