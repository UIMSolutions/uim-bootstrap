module uim.bootstrap.bs4.components.dropdowns.item;

@safe: 
import uim.bootstrap;

class DBS4DropdownItem : DBS4Obj {
	mixin(H5This!("div", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownItem");

version(test_uim_bootstrap) { unittest {
	
}
