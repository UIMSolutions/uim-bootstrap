module uim.bootstrap.components.dropdowns.divider;

import uim.bootstrap;

class DBS4DropdownDivider : DBS4Obj {
	mixin(H5This!("DIV", `["dropdown-divider"]`));
	override public void init() {
		super.init;
	}	
}
mixin(BS4Short!"DropdownDivider");

unittest {
	
	
	assert(BS4DropdownDivider == `<div class="dropdown-divider"></div>`);
}
