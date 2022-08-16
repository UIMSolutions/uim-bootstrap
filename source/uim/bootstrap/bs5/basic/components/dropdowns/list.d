module source.uim.bootstrap.bs5.basic.components.dropdowns.list;

@safe: 
import uim.bootstrap;

class DBS5DropdownList : DBS5Obj {
	mixin(H5This!("ul", ["dropdown-menu"]));
}
mixin(H5Calls!"BS5DropdownList");

version(test_uim_bootstrap) { unittest {
	assert(BS5DropdownList, `<ul class="dropdown-menu"></ul>`);
}}
