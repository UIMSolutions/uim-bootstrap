module uim.bootstrap.bs4.components.dropdowns.togglebutton;

import uim.bootstrap;

@safe: class DBS4DropdownTogglebutton : DBS4Button {
	mixin(H5This!("Button", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS4DropdownTogglebutton");
unittest {
	assert(Assert(BS4DropdownTogglebutton, `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
	assert(Assert(BS4DropdownTogglebutton.id("id"), `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
}
