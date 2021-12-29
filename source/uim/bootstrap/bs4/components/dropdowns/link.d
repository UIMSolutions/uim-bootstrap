module uim.bootstrap.bs4.components.dropdowns.link;

@safe: 
import uim.bootstrap;

class DBS4DropdownLink : DBS4Obj {
	mixin(H5This!("A", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownLink");

unittest {
	
}
