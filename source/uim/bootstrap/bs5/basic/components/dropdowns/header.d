module uim.bootstrap.bs5.basic.components.dropdowns.header;

@safe: 
import uim.bootstrap;

class DBS5DropdownHeader : DBS5Obj {
	mixin(H5This!("H6", ["dropdown-header"]));
}
mixin(H5Calls!"BS5DropdownHeader");

version(test_uim_bootstrap) { unittest {
	assert(BS5DropdownHeader == `<h6 class="dropdown-header"></h6>`);
}}
