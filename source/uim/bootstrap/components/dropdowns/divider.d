module uim.bootstrap.components.dropdowns.divider;

import uim.bootstrap;

class DBS4DropdownDivider : DBS4Obj {
	mixin(H5This!("Li", `["dropdown-divider"]`));
}
mixin(BS4Short!"DropdownDivider");

unittest {
	assert(Assert(BS4DropdownDivider,`<li class="dropdown-divider"></li>`));
}
