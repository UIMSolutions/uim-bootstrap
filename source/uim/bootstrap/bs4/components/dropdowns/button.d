module uim.bootstrap.bs4.components.dropdowns.button;

@safe: 
import uim.bootstrap;

class DBS4DropdownButton : DBS4Obj {
	mixin(H5This!("button", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownButton");

unittest {
	
}
