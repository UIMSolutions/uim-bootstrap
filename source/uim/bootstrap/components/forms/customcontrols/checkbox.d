module uim.bootstrap.components.forms.customcontrols.checkbox;

import uim.bootstrap;

class DBS4CustomCheckbox : DBS4CustomControl {
	mixin(H5This!("DIV", `["custom-checkbox"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"CustomCheckbox");

unittest {
	assert(BS4CustomCheckbox == `<small class="form-text"></small>`);
}