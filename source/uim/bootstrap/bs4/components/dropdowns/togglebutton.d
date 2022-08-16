module uim.bootstrap.bs4.components.dropdowns.togglebutton;

@safe: 
import uim.bootstrap;

class DBS4DropdownTogglebutton : DBS4Button {
	mixin(H5This!("Button", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
mixin(H5Calls!"BS4DropdownTogglebutton");
version(test_uim_bootstrap) { unittest {
	assert(BS4DropdownTogglebutton, `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
	assert(BS4DropdownTogglebutton.id("id"), `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
}
