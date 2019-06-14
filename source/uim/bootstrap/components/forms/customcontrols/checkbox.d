module uim.bootstrap.components.forms.customcontrols.checkbox;

import uim.bootstrap;

class DBS4CustomCheckbox : DBS4CustomControl {
	mixin(H5This!("DIV", `["custom-checkbox"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CustomCheckbox");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CustomCheckbox == `<small class="form-text"></small>`);
}