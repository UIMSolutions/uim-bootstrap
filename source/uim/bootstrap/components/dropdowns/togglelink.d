module uim.bootstrap.components.dropdowns.togglelink;

import uim.bootstrap;

class DBS4DropdownTogglelink : DBS4ButtonLink {
	mixin(H5This!("A", `["btn", "dropdown-toggle"]`, `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(BS4Short!"DropdownTogglelink");
unittest {
	assert(Assert(BS4DropdownTogglelink, `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
	assert(Assert(BS4DropdownTogglelink.id("id"), `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
}
