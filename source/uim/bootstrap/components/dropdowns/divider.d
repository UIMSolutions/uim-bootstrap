module uim.bootstrap.components.dropdowns.divider;

import uim.bootstrap;

class DBS4DropdownDivider : DBS4Obj {
	mixin(H5This!("Li", ["dropdown-divider"]));
}
mixin(H5Calls!"BS4DropdownDivider");

unittest {
	assert(Assert(BS4DropdownDivider,`<li class="dropdown-divider"></li>`));
}
