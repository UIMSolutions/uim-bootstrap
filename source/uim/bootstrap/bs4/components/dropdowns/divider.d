module uim.bootstrap.bs4.components.dropdowns.divider;

@safe: 
import uim.bootstrap;

class DBS4DropdownDivider : DBS4Obj {
	mixin(H5This!("div", ["dropdown-divider"]));
}
mixin(H5Calls!"BS4DropdownDivider");

unittest {
	assert(BS4DropdownDivider,`<div class="dropdown-divider"></div>`));
}
