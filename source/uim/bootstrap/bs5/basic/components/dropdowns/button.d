module uim.bootstrap.bs5.basic.components.dropdowns.button;

@safe: 
import uim.bootstrap;

class DBS5DropdownButton : DBS5Obj {
	mixin(H5This!("button", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownButton");

version(test_uim_bootstrap) { unittest {
	
}
