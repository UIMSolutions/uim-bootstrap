module uim.bootstrap.bs5.basic.components.dropdowns.togglelink;

import uim.bootstrap;

@safe: class DBS5DropdownToggleLink : DBS5ButtonLink {
	mixin(H5This!("A", ["btn", "dropdown-toggle"], `["aria-expanded":"false", "role":"button", "data-bs-toggle":"dropdown"]`));
}
mixin(H5Calls!"BS5DropdownToggleLink");
unittest {
	assert(Assert(BS5DropdownToggleLink, `<a class="btn dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" role="button"></a>`));
}

