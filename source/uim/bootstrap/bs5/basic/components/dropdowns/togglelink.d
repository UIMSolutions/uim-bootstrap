﻿module uim.bootstrap.bs5.basic.components.dropdowns.togglelink;

import uim.bootstrap;

@safe: class DBS5DropdownToggleLink : DBS5ButtonLink {
	mixin(H5This!("A", ["btn", "dropdown-toggle"], `["aria-expanded":"false", "role":"button", "data-bs-toggle":"dropdown"]`));
}
mixin(H5Calls!"BS5DropdownToggleLink");
unittest {
	assert(Assert(BS5DropdownToggleLink, `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" data-bs-toggle="dropdown" role="button" type="button"></a>`));
	assert(Assert(BS5DropdownToggleLink.id("id"), `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
}

