module uim.bootstrap.bs5.basic.components.dropdowns.divider;

@safe: 
import uim.bootstrap;

class DBS5DropdownDivider : DBS5Obj {
	mixin(H5This!("div", ["dropdown-divider"]));
}
mixin(H5Calls!"BS5DropdownDivider");

unittest {
	assert(Assert(BS5DropdownDivider,`<div class="dropdown-divider"></div>`));
}
