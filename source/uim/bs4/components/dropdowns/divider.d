module uim.bs4.components.dropdowns.divider;

import uim.bs4;

class DBS4DropdownDivider : DBS4Obj {
	mixin(H5This!("DIV", `["dropdown-divider"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4DropdownDivider");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4DropdownDivider == `<div class="dropdown-divider"></div>`);
}
