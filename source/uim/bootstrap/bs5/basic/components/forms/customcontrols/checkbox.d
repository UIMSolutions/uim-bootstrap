module uim.bootstrap.bs5.basic.components.forms.customcontrols.checkbox;

@safe: 
import uim.bootstrap;

class DBS5CustomCheckbox : DBS5CustomControl {
	mixin(H5This!("DIV", ["custom-checkbox"]));
}
mixin(H5Calls!"BS5CustomCheckbox");

unittest {
	assert(BS5CustomCheckbox, `<div class="custom-checkbox custom-control"></div>`);
}