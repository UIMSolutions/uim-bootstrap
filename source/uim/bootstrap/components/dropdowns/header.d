module uim.bootstrap.components.dropdowns.header;

import uim.bootstrap;

class DBS4DropdownHeader : DBS4Obj {
	mixin(H5This!("H6", ["dropdown-header"]));
	override public void _init() {
		super._init;
	}	
}
mixin(H5Calls!"BS4DropdownHeader");

unittest {
	
	
	assert(Assert(BS4DropdownHeader, `<h6 class="dropdown-header"></h6>`));
}
