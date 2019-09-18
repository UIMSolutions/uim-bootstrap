module uim.bootstrap.components.forms.customcontrols.checkbox;

import uim.bootstrap;

class DBS4CustomCheckbox : DBS4CustomControl {
	mixin(H5This!("DIV", `["custom-checkbox"]`));
}
mixin(BS4Short!"CustomCheckbox");

unittest {
	assert(BS4CustomCheckbox == `<div class="custom-checkbox custom-control"></div>`);
}