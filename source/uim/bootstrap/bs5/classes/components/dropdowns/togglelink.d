module uim.bootstrap.bs5.classes.components.dropdowns.togglelink;

import uim.bootstrap;

class DBS5DropdownToggleLink : DBS5ButtonLink {
	mixin(H5This!("A", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS5DropdownToggleLink");
unittest {
	assert(Assert(BS5DropdownToggleLink, `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
	assert(Assert(BS5DropdownToggleLink.id("id"), `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
}
