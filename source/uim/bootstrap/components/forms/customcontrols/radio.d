module uim.bootstrap.components.forms.customcontrols.radio;

import uim.bootstrap;

class DBS4CustomRadio : DBS4CustomControl {
	mixin(H5This!("DIV", `["custom-radio"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CustomRadio");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CustomRadio == `<small class="form-text"></small>`);
}