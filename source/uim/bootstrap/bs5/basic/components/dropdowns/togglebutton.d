module uim.bootstrap.bs5.basic.components.dropdowns.togglebutton;

@safe: 
import uim.bootstrap;

class DBS5DropdownToggle : DBS5Button {
	mixin(H5This!("Button", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS5DropdownToggle");
unittest {
	assert(Assert(BS5DropdownToggle, `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
	assert(Assert(BS5DropdownToggle.id("id"), `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`));
}
