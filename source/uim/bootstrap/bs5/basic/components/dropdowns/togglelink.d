module uim.bootstrap.bs5.basic.components.dropdowns.togglelink;

@safe: 
import uim.bootstrap;

class DBS5DropdownToggleLink : DBS5ButtonLink {
	mixin(H5This!("A", ["btn", "dropdown-toggle"], `["href":"#", "aria-expanded":"false", "role":"button", "data-bs-toggle":"dropdown"]`));
}
mixin(H5Calls!"BS5DropdownToggleLink");
unittest {
	assert(Assert(BS5DropdownToggleLink, `<a class="btn dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button"></a>`));
}

