module uim.bootstrap.components.dropdowns.link;

import uim.bootstrap;

class DBS4DropdownLink : DBS4Obj {
	mixin(H5This!("A", `["dropdown-item"]`));
	override public void init() {
		super.init;
	}	
}
mixin(BS4Short!"DropdownLink");

unittest {
	
}
