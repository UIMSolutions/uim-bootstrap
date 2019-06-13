module uim.bs4.components.dropdowns.link;

import uim.bs4;

class DBS4DropdownLink : DBS4Obj {
	mixin(H5This!("A", `["dropdown-item"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4DropdownLink");

unittest {
	writeln("Testing ", __MODULE__);
}
