module uim.bootstrap.bs4.components.dropdowns.togglelink;

import uim.bootstrap;

@safe: class DBS4DropdownTogglelink : DBS4ButtonLink {
	mixin(H5This!("A", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS4DropdownTogglelink");
unittest {
	assert(Assert(BS4DropdownTogglelink, `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
	assert(Assert(BS4DropdownTogglelink.id("id"), `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`));
}
