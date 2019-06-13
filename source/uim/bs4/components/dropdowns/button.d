module uim.bs4.components.dropdowns.button;

import uim.bs4;

class DBS4DropdownButton : DBS4Obj {
	mixin(H5This!("BUTTON", `["dropdown-item"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4DropdownButton");

unittest {
	writeln("Testing ", __MODULE__);
}
