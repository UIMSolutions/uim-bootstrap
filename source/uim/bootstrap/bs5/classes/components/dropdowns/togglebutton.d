module uim.bootstrap.bs5.classes.components.dropdowns.togglebutton;

import uim.bootstrap;

class DBS5DropdownTogglebutton : DBS5Button {
	mixin(H5This!("Button", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS5DropdownTogglebutton");
unittest {
	assert(Assert(BS5DropdownTogglebutton, `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
	assert(Assert(BS5DropdownTogglebutton.id("id"), `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
}
