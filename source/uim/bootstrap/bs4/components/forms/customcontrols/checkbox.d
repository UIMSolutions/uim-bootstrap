module uim.bootstrap.bs4.components.forms.customcontrols.checkbox;

@safe: 
import uim.bootstrap;

class DBS4CustomCheckbox : DBS4CustomControl {
	mixin(H5This!("DIV", ["custom-checkbox"]));
}
mixin(H5Calls!"BS4CustomCheckbox");

unittest {
	assert(BS4CustomCheckbox, `<div class="custom-checkbox custom-control"></div>`));
}