module uim.bootstrap.bs5.basic.components.dropdowns.link;

@safe: 
import uim.bootstrap;

class DBS5DropdownLink : DBS5Obj {
	mixin(H5This!("A", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownLink");

version(test_uim_bootstrap) { unittest {
	// TODO
}}
