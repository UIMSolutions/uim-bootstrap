module uim.bootstrap.components.dropdowns.button;

import uim.bootstrap;

class DBS4DropdownButton : DBS4Obj {
	mixin(H5This!("BUTTON", ["dropdown-item"]));
	override public void _init() {
		super._init;
	}	
}
mixin(H5Calls!"BS4DropdownButton");

unittest {
	
}
